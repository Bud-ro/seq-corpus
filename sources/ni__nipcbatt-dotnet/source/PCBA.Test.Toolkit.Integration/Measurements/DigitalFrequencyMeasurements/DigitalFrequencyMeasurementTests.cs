using NUnit.Framework;
using PCBATestToolkitApi.Measurements.DigitalFrequencyMeasurements;
using PCBATestToolkitApi.Measurements.DigitalFrequencyMeasurements.Constants;

namespace PCBATestToolkitClient.Measurements.DigitalFrequencyMeasurements
{
    [TestFixture]
    public class DigitalFrequencyMeasurementTests
    {
        [Test]
        public void ConfigureAndMeasure_Test()
        {
            // Arrange
            string channelExpression = "NI_PCBA_Measurement_Simulated_TestScale_TS1Mod1/ctr0";
            string inputTerminalName = "/NI_PCBA_Measurement_Simulated_TestScale_TS1Mod1/PFI3";


            Assert.DoesNotThrow(() =>
            {
                using (var digitalFrequencyMeasurement = DigitalFrequencyMeasurement
                           .CreateInstance(channelExpression, inputTerminalName))
                {
                    var parameters = ConstantsForDigitalFrequencyMeasurements.DefaultDigitalFrequencyMeasurementParameters;

                    TestContext.WriteLine("Parameters:");
                    TestContext.WriteLine(parameters.ToString());

                    // Act
                    var result = digitalFrequencyMeasurement.ConfigureAndMeasure(parameters);

                    TestContext.WriteLine("Results:");
                    TestContext.WriteLine(result.ToString());

                    // Assert
                    Assert.IsNotNull(result);
                }
            });
        }
    }
}
