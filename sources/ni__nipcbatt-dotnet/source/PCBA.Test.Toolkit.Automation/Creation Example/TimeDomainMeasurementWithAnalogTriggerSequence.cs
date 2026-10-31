using System;
using NI.MeasurementFoundation.DataManagement;
using NI.MeasurementInstrumentation.HAL.DaqHandlers.Enums;
using NI.PCBAMeasurements.Apis.DotNetApi.Common.Parameters;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Common.Enums;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Common.Structs;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Generations.SignalVoltageGenerations.Enums;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Generations.SignalVoltageGenerations.Structs;
using PCBATestToolkitApi.Generations.DcVoltageGenerations.Constants;
using PCBATestToolkitApi.Generations.SignalVoltageGenerations;
using PCBATestToolkitAutomation.Creation_Example.Analog_Trigger;

namespace PCBATestToolkitAutomation.Creation_Example
{
    /// <summary>
    /// Demonstrates the use of the new toolkit created TDM with analog trigger
    /// </summary>
    internal class TimeDomainMeasurementWithAnalogTriggerSequence : AbstractSequence
    {
        public override void Execute()
        {
            /* Setup */

            /*** Configure the artifacts
             *
             *  by using the class NI.Measurement.Fundation.FileSystemMeasurementArtifactsManager,
             * you are able to give a path where the files will be saved.
             *
             */

            // this variable will allow to date the results folder and avoid deletion.
            String now = DateTime.Now.ToString("dd-MM-yyyy-hh-mm-ss");

            // results folder for Signal Voltage Generation
            string signalVoltageGenerationResultFile =
                NI.Core.Utilities.FileSystem.PathUtils.Combine(
                    NI.Core.Utilities.FileSystem.FolderUtils
                        .GetExecutingAssemblyDirectory(), $"PSSM-{now}");

            // results folder for Frequency Domain Measurement
            string timeDomainMeasurementResultFile =
                NI.Core.Utilities.FileSystem.PathUtils.Combine(
                    NI.Core.Utilities.FileSystem.FolderUtils
                        .GetExecutingAssemblyDirectory(), $"TDM-{now}");


            FileSystemMeasurementArtifactsManager signalVoltageGenerationArtifactsManager =
                new FileSystemMeasurementArtifactsManager(signalVoltageGenerationResultFile);

            FileSystemMeasurementArtifactsManager timeDomainMeasurementArtifactsManager =
                new FileSystemMeasurementArtifactsManager(timeDomainMeasurementResultFile);

            /*** Initialization
             *
             */

            // need to be modified according your configuration
            string signalVoltageGenerationPhysicalChannel = "TS_Analog0";

            // need to be modified according your configuration
            string timeDomainMeasurementPhysicalChannel = "TP_Analog0";

            SignalVoltageGeneration signalVoltageGeneration =
                SignalVoltageGeneration.CreateInstance(
                    signalVoltageGenerationPhysicalChannel);

            TimeDomainMeasurementWithAnalogTrigger
                timeDomainMeasurementWithAnalogTrigger =
                    TimeDomainMeasurementWithAnalogTrigger.CreateInstance(
                        timeDomainMeasurementPhysicalChannel);

            if (timeDomainMeasurementWithAnalogTrigger == null)
            {
                throw new Exception(
                    "Impossible to create the instance of TimeDomainMeasurementWithAnalogTrigger");
            }

            signalVoltageGeneration.ExternalComponents.ArtifactsManagers
                .AttachArtifactsManager(signalVoltageGenerationArtifactsManager);

            timeDomainMeasurementWithAnalogTrigger.ExternalComponents.ArtifactsManagers
                    .AttachArtifactsManager(timeDomainMeasurementArtifactsManager);

            /* Main */

            /*** 
             *
             * Configure Time Domain Measurement settings to wait for
             * Analog trigger
             * (Analog trigger is not a start trigger) and need to be done directly
             * on the configured channel
             */
            

            timeDomainMeasurementWithAnalogTrigger.SetVoltageMeasurementTerminalParameters(
                new VoltageMeasurementTerminalParameters(
                    terminalConfiguration: EAnalogInputTerminalConfiguration.RSE,
                    voltageMinimumValueVolts: -10.0,
                    voltageMaximumValueVolts: 10.0));

            timeDomainMeasurementWithAnalogTrigger.SetMeasurementSampleClockTimingParameters(
                new MeasurementSampleClockTimingParameters(
                    sampleClockSource: "OnboardClock",
                    samplingRateHertz: 10000,
                    numberOfSamplesPerChannel: 1000,
                    ESampleTimingEngine.Auto
                    ));

            timeDomainMeasurementWithAnalogTrigger.SetAnalogTriggerOptions(
                analogTriggerChannel: "TP_Analog0",
                analogEdgeStartTriggerSlope: EAnalogEdgeStartTriggerSlope.Rising,
                analogTriggerLevel: 0.5);

            // uses the previous parameters to configure the channels.
            timeDomainMeasurementWithAnalogTrigger.Configure();

            // Send PWM command to LEDs (Dutycyle-60%)
            signalVoltageGeneration.ConfigureAndGenerate(new SignalVoltageGenerationConfigurationParameters(
                rangeSettings: ConstantsForDcVoltageGenerations.DefaultVoltageGenerationRangeSettings,
                timingSettings: new SignalVoltageGenerationTimingSettings(
                    sampleClockSource: "OnboardClock",
                    samplingRateHertz: 100000,
                    sampleTimingEngine: ESampleTimingEngine.Auto),
                triggerSettings: new MeasurementTriggerSettings(
                    triggerType: EMeasurementTriggerType.NoTrigger,
                    digitalStartTriggerSource: "NA",
                    digitalEdgeStartTriggerEdge: EDigitalEdgeStartTriggerEdge.Rising),
                signalGenerationSettings: new SignalGenerationSettings(
                    signalGenerationWaveformType: ESignalGenerationWaveformType.PeriodicWaveform,
                    durationSeconds: 0.1,
                    offsetVolts: 1,
                    periodicWaveformSettings: new PeriodicWaveformSettings(
                        periodicWaveformType: EPeriodicWaveformType.SquareWaveform,
                        frequencyHertz: 100,
                        amplitudeVolts: 1,
                        phaseRadians: 0,
                        dutyCyclePercent: 60.0),
                    multipleTonesWaveformSettings: Array.Empty<SignalToneSettings>())));

            var result = timeDomainMeasurementWithAnalogTrigger.Measure(skipAnalysis: false);

            // you can do what you want with result, here just display them
            Console.WriteLine($"Acquisition Duration: {result.AcquisitionDurationSeconds}");
            Console.WriteLine($"DC Voltage computed on all channel (V) : {result.DcVoltagesVolts[0]}");
            Console.WriteLine($"Voltage amplitude computed on all channel (V) : {result.PeakToPeakVoltagesVolts[0]}");
            Console.WriteLine($"Voltage waveform duty cycle computed on all channel (%) : {result.VoltageWaveformsDutyCyclesPercent[0]}");
            Console.WriteLine($"Voltage waveform frequencies computed on all channel (Hz) : {result.VoltageWaveformsFrequenciesHertz[0]}");
            Console.WriteLine($"Voltage waveform periods computed on all channel (seconds) : {result.VoltageWaveformsPeriodsSeconds[0]}");

            /*** Close all tasks ***/
            timeDomainMeasurementWithAnalogTrigger.Close();
            signalVoltageGeneration.Close();

            // Power down channel
            PowerDownChannels.PowerDownAllAoChannelsForDcVoltageGeneration(signalVoltageGenerationPhysicalChannel);
        }
    }
}
