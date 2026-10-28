using NUnit.Framework;
using PCBATestToolkitApi.Measurements.DcRmsCurrentMeasurements;
using PCBATestToolkitApi.Measurements.DcRmsCurrentMeasurements.Constants;

namespace PCBATestToolkitClient.Measurements.DcRmsCurrentMeasurements
{
    [TestFixture]
    public class DcRmsCurrentMeasurementTests
    {
        [Test]
        public void ConfigureAndMeasure_Test()
        {
            // Arrange (example of channel expression)
            string channelExpression = "NI_PCBA_Measurement_Simulated_TestScale_TS1Mod2/ai0";

            Assert.DoesNotThrow(() =>
            {
                using (var dcRmsCurrentMeasurement = DcRmsCurrentMeasurement.CreateInstance(
                           analogInputChannelExpression: channelExpression))
                {
                    var parameters = ConstantsForDcRmsCurrentMeasurements.DefaultDcRmsCurrentMeasurementParameters;

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
