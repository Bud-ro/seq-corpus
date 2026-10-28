using NI.MeasurementInstrumentation.Constants;
using NUnit.Framework;
using PCBATestToolkitApi.Measurements.TemperatureMeasurements;
using PCBATestToolkitApi.Measurements.TemperatureMeasurements.Constants;

namespace PCBATestToolkitClient.Measurements.TemperatureMeasurements
{
    [TestFixture]
    public class TemperatureMeasurementUsingThermocoupleTests
    {
        [Test]
        [Ignore("Known to fail, Simulation does not support Built-in cold-junction compensation.")]
        public void ConfigureAndMeasure_Test()
        {
            // Arrange (example of channel expression)
            string channelExpression = "NI_PCBA_Measurement_Simulated_TestScale_TS1Mod2/ai0";

            Assert.DoesNotThrow(() =>
            {
                using (var temperatureMeasurement = TemperatureMeasurementUsingThermocouple.CreateInstance(
                           channelExpression: channelExpression))
                {
                    var parameters = ConstantsForTemperatureMeasurementsUsingThermocouple.DefaultTemperatureThermocoupleMeasurementParameters;

                    TestContext.WriteLine("Parameters:");
                    TestContext.WriteLine(parameters.ToString());

                    // Act
                    var result = temperatureMeasurement.ConfigureAndMeasure(parameters);

                    TestContext.WriteLine("Results:");
                    TestContext.WriteLine(result.ToString());
                }
            });
        }

        [Test]
        public void ConfigureAndMeasure_Using_Cold_Junction_Compensation_Value_Test()
        {
            // Arrange (example of channel expression)
            string channelExpression = "NI_PCBA_Measurement_Simulated_TestScale_TS1Mod2/ai0";

            Assert.DoesNotThrow(() =>
            {
                using (var temperatureMeasurement = TemperatureMeasurementUsingThermocouple.CreateInstance(
                           channelExpression: channelExpression,
                           coldJunctionCompensationValueDegrees: ConstantsForTemperatureMeasurements.DefaultColdJunctionCompensationValueCelsiusDegrees))
                {
                    var parameters = ConstantsForTemperatureMeasurementsUsingThermocouple
                        .DefaultTemperatureThermocoupleMeasurementParameters;

                    TestContext.WriteLine("Parameters:");
                    TestContext.WriteLine(parameters.ToString());

                    // Act
                    var result = temperatureMeasurement.ConfigureAndMeasure(parameters);

                    TestContext.WriteLine("Results:");
                    TestContext.WriteLine(result.ToString());
                }
            });
        }
        [Test]
        [Ignore("Known to fail if global virtual channel 'TP_TempRtd1' is not created.")]
        public void ConfigureAndMeasure_Using_External_Cold_Junction_Compensation_Test()
        {
            // Arrange (example of channel expression)
            string channelExpression = "NI_PCBA_Measurement_Simulated_TestScale_TS1Mod2/ai0";
            string coldJunctionCompensationChannelName = "TP_TempRtd1";

            Assert.DoesNotThrow(() =>
            {
                using (var temperatureMeasurement = TemperatureMeasurementUsingThermocouple.CreateInstance(
                           channelExpression: channelExpression,
                           coldJunctionCompensationChannelName: coldJunctionCompensationChannelName))
                {
                    var parameters = ConstantsForTemperatureMeasurementsUsingThermocouple
                        .DefaultTemperatureThermocoupleMeasurementParameters;

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