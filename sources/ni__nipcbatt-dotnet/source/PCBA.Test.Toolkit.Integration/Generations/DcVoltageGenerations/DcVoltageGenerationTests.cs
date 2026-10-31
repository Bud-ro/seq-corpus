using NUnit.Framework;
using NI.MeasurementAnalysisCore.Common;
using NI.MeasurementAnalysisCore.WaveformCreation.InputParameters;
using NI.MeasurementAnalysisLibrary;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Generations.DcVoltageGenerations.Structs;
using PCBATestToolkitApi.Generations.DcVoltageGenerations;
using PCBATestToolkitApi.Generations.DcVoltageGenerations.Constants;

namespace PCBATestToolkitClient.Generations.DcVoltageGenerations
{
    [TestFixture]
    public class DcVoltageGenerationTests
    {
        [Test]
        public void ConfigureAndGenerate_Test()
        {
            // Arrange (example of channel expression)
            string channelExpression = "NI_PCBA_Measurement_Simulated_TestScale_TS1Mod3/ao0";

            Assert.DoesNotThrow(() =>
            {
                using (var voltageGeneration = DcVoltageGeneration.CreateInstance(
                           analogOutputChannelExpression: channelExpression))
                {
                    var waveformGenerator = WaveformCreationFactory
                        .CreateSquareWaveGenerator();

                    var squareWaveformCreationResult = waveformGenerator.CreateSquareWaveform(
                        squareWaveformCreationInput:
                        new SquareWaveformCreationInput(
                            samplingRate: 600,
                            samplesCount: 600,
                            frequency: 60,
                            amplitude: 1,
                            offset: 1,
                            phase: 0,
                            dutyCycle: 0.5,
                            pulsePolarity: EPulsePolarity.High));


                    var parameters = new DcVoltageGenerationConfigurationParameters(
                        rangeSettings: ConstantsForDcVoltageGenerations
                            .DefaultVoltageGenerationRangeSettings,
                        outputVoltages: squareWaveformCreationResult.GeneratedWaveformSamples);

                    TestContext.WriteLine("Parameters:");
                    TestContext.WriteLine(parameters.ToString());

                    // Act
                    voltageGeneration.ConfigureAndGenerate(parameters);
                }
            });
        }
    }
}
