using NUnit.Framework;
using PCBATestToolkitApi.Measurements.TemperatureMeasurements;
using PCBATestToolkitApi.Measurements.TemperatureMeasurements.Constants;

namespace PCBATestToolkitClient.Measurements.TemperatureMeasurements
{
    [TestFixture]
    public class TemperatureMeasurementUsingThermistorTests
    {
        [Test]
        public void ConfigureAndMeasure_Test()
        {
            // Arrange (example of channel expression)
            string channelExpression = "NI_PCBA_Measurement_Simulated_TestScale_TS1Mod2/ai0";

            Assert.DoesNotThrow(() =>
            {
                using (var temperatureMeasurement = TemperatureMeasurementUsingThermistor.CreateInstance(
                           channelExpression: channelExpression))
                {
                    var parameters = 
                        ConstantsForTemperatureMeasurementsUsingThermistor.DefaultTemperatureThermistorMeasurementParameters;

                    TestContext.WriteLine("Parameters:");
                    TestContext.WriteLine(parameters.ToString());

                    // Act
                    var result = temperatureMeasurement.ConfigureAndMeasure(parameters);

                    TestContext.WriteLine("Results:");
                    TestContext.WriteLine(result.ToString());
                }
            });
        }
    }
}