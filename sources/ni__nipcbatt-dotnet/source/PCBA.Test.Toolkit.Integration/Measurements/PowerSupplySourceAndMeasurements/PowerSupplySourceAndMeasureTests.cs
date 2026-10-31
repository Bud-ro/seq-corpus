using NUnit.Framework;
using PCBATestToolkitApi.Measurements.PowerSupplySourceAndMeasurements;
using PCBATestToolkitApi.Measurements.PowerSupplySourceAndMeasurements.Constants;

namespace PCBATestToolkitClient.Measurements.PowerSupplySourceAndMeasurements
{
    [TestFixture]
    public class PowerSupplySourceAndMeasureTests
    {
        [Test]
        public void ConfigureAndMeasure_Test()
        {
            Assert.DoesNotThrow(() =>
            {
                // Arrange
                string channelExpression = "NI_PCBA_Measurement_Simulated_TestScale_TS1Mod5/power";

                using (var powerSupplySourceAndMeasure =
                       PowerSupplySourceAndMeasure.CreateInstance(powerChannelName: channelExpression))
                {
                    var parameters = ConstantsForPowerSupplySourceAndMeasurements.DefaultPowerSupplySourceAndMeasureParameters;

                    TestContext.WriteLine("Parameters:");
                    TestContext.WriteLine(parameters.ToString());

                    // Act
                    var results = powerSupplySourceAndMeasure.ConfigureAndMeasure(parameters);

                    TestContext.WriteLine("Results:");
                    TestContext.WriteLine(results.ToString());


                    // Assert
                    Assert.IsNotNull(results);
                }
            });
        }
    }
}
