using NUnit.Framework;
using PCBATestToolkitApi.Measurements.DcRmsVoltageMeasurements;
using PCBATestToolkitApi.Measurements.DcRmsVoltageMeasurements.Constants;

namespace PCBATestToolkitClient.Measurements.DcRmsVoltageMeasurements
{
    [TestFixture]
    public class DcRmsVoltageMeasurementTests
    {
        [Test]
        public void ConfigureAndMeasure_Test()
        {
            // Arrange (example of channel expression)
            string channelExpression = "NI_PCBA_Measurement_Simulated_TestScale_TS1Mod2/ai0";


            Assert.DoesNotThrow(() =>
            {
                using (var dcRmsCurrentMeasurement = DcRmsVoltageMeasurement.CreateInstance(
                           analogInputChannelExpression: channelExpression))
                {
                    var parameters =
                        ConstantsForDcRmsVoltageMeasurements
                            .DefaultDcRmsVoltageMeasurementParameters;

                    TestContext.WriteLine("Parameters:");
                    TestContext.WriteLine(parameters.ToString());

                    // Act
                    var result = dcRmsCurrentMeasurement.ConfigureAndMeasure(parameters);

                    TestContext.WriteLine("Results:");
                    TestContext.WriteLine(result.ToString());
                }
            });
        }
    }
}
