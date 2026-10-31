using NUnit.Framework;
using PCBATestToolkitApi.Measurements.DigitalPwmMeasurements;
using PCBATestToolkitApi.Measurements.DigitalPwmMeasurements.Constants;

namespace PCBATestToolkitClient.Measurements.DigitalPwmMeasurements
{
    [TestFixture]
    public class DigitalPwmMeasurementTests
    {
        [Test]
        public void ConfigureAndMeasure_Test()
        {
            // Arrange
            string channelExpression = "NI_PCBA_Measurement_Simulated_TestScale_TS1Mod1/ctr0";
            string inputTerminalName = "/NI_PCBA_Measurement_Simulated_TestScale_TS1Mod1/PFI3";


            Assert.DoesNotThrow(() =>
            {
                using (var digitalPwmMeasurement = DigitalPwmMeasurement.CreateInstance(channelExpression, inputTerminalName))
                {
                    var parameters = ConstantsForDigitalPwmMeasurements.DefaultDigitalPwmMeasurementParameters;

                    TestContext.WriteLine("Parameters:");
                    TestContext.WriteLine(parameters.ToString());

                    // Act
                    var result = digitalPwmMeasurement.ConfigureAndMeasure(parameters);

                    TestContext.WriteLine("Results:");
                    TestContext.WriteLine(result.ToString());

                    // Assert
                    Assert.IsNotNull(result);
                }
            });
        }
    }
}
