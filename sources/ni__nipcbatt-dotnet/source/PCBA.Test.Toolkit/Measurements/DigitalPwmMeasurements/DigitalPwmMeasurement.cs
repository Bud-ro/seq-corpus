using System;
using System.Collections.Generic;
using System.Linq;
using NI.MeasurementAnalysisCore.DigitalAnalysis.InputParameters;
using NI.MeasurementAnalysisCore.DigitalAnalysis.OutputResults;
using NI.MeasurementAnalysisLibrary;
using NI.MeasurementFoundation.ObjectModel.MeasurementOptions;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.DigitalPwmMeasurements.Interfaces;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.DigitalPwmMeasurements.Structs;
using NI.PCBAMeasurements.Common.BaseTypes;
using NI.PCBAMeasurements.Common.Exceptions;

namespace PCBATestToolkitApi.Measurements.DigitalPwmMeasurements
{
    /// <summary>
    /// Provides a way allows you to perform digital pwm measurements on PCB points,
    /// see <see cref="NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.DigitalPwmMeasurements.Interfaces.IDigitalPwmMeasurement"/>.
    /// </summary>
    public class DigitalPwmMeasurement : AbstractDigitalPwmMeasurement, IDigitalPwmMeasurement
    {
        private DigitalPwmMeasurement(string channelExpression,
            string inputTerminalName)
            : base(channelExpression, inputTerminalName, new MutableMeasurementOptions
            {
                WriteMeasurementAnalysisResultIsRequired = true,
                WriteMeasurementDataIsRequired = true
            })
        {
        }

        /// <summary>
        /// Creates an instance of <see cref="DigitalPwmMeasurement"/>.
        /// </summary>
        /// <param name="channelExpression">Expression representing the name of a physical channel, or a global channel or the name of registered settings in DAQ System.</param>
        /// <param name="inputTerminalName">The name of the terminal on which characteristics of the signal are measured.</param>
        /// <exception cref="ArgumentException">Thrown if <paramref name="channelExpression"/> is null or empty or a whitespace.</exception>
        /// <exception cref="ArgumentException">Thrown if <paramref name="inputTerminalName"/> is null or empty or a whitespace.</exception>
        /// <exception cref="MeasurementInstanceCreationFailedException"> Thrown if an error occurred during the instance creation.</exception>
        public static DigitalPwmMeasurement CreateInstance(string channelExpression,
            string inputTerminalName)
        {
            return new DigitalPwmMeasurement(channelExpression, inputTerminalName);
        }



        ///<inheritdoc cref="NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.DigitalPwmMeasurements.Interfaces.IDigitalPwmMeasurement.ConfigureAndMeasure"/>
        public new DigitalPwmMeasurementResultData ConfigureAndMeasure(DigitalPwmMeasurementConfigurationParameters parameters)
        {
            return base.ConfigureAndMeasure(parameters);
        }



        ///<inheritdoc/>
        protected override PulseDigitalMeasurementResult ProcessFromSemiPeriodsPulseDigitalMeasurement(
            IReadOnlyCollection<double> semiPeriodsSeconds)
        {

            //Component which is used to perform pulse characteristics evaluation.
            var pulseDigitalAnalyzer = DigitalAnalysisFactory.CreatePulseDigitalMeasurementAnalyzer();


            //Input to provide to analysis component
            var pulseDigitalMeasurementInput = new PulseDigitalMeasurementSemiPeriodsInput(
                semiPeriodCountingStartingEdge: PulseDigitalMeasurementSemiPeriodsInput.ESemiPeriodCountingStartingEdge.Rising,
                semiPeriodsSamples: semiPeriodsSeconds);


            //Process averaged pulse measurement,
            //you can also get individual pulse measurement for more detailed analysis 
            var pulseDigitalMeasurementOutputResult =
                pulseDigitalAnalyzer.ProcessFromSemiPeriodsAveragedPulseDigitalMeasurement(pulseDigitalMeasurementInput);

            return pulseDigitalMeasurementOutputResult;
        }

        ///<inheritdoc/>
        protected override IReadOnlyList<PulseDigitalMeasurementResult> ProcessFromSemiPeriodsPulseDigitalMeasurements(
            IReadOnlyCollection<double> semiPeriodsSeconds)
        {
            //Component which is used to perform pulse characteristics evaluation.
            var pulseDigitalAnalyzer = DigitalAnalysisFactory.CreatePulseDigitalMeasurementAnalyzer();


            //Input to provide to analysis component
            var pulseDigitalMeasurementInput = new PulseDigitalMeasurementSemiPeriodsInput(
                semiPeriodCountingStartingEdge: PulseDigitalMeasurementSemiPeriodsInput.ESemiPeriodCountingStartingEdge.Rising,
                semiPeriodsSamples: semiPeriodsSeconds);


            //Process all pulse measurements
            var pulseDigitalMeasurementOutputResult = pulseDigitalAnalyzer
                .ProcessFromSemiPeriodsAllPulseDigitalMeasurements(pulseDigitalMeasurementInput)
                .ToList();

            return pulseDigitalMeasurementOutputResult;
        }
    }
}