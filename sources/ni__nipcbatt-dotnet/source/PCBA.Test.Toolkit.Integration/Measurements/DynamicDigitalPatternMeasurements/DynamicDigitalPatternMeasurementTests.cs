using NUnit.Framework;
using PCBATestToolkitApi.Measurements.DynamicDigitalPatternMeasurements;
using PCBATestToolkitApi.Measurements.DynamicDigitalPatternMeasurements.Constants;

namespace PCBATestToolkitClient.Measurements.DynamicDigitalPatternMeasurements
{
    [TestFixture]
    public class DynamicDigitalPatternMeasurementTests
    {
        [Test]
        public void ConfigureAndMeasure_Test()
        {
            // Arrange
            string channelExpression = "NI_PCBA_Measurement_Simulated_TestScale_TS1Mod4/port0/line0:7";

            Assert.DoesNotThrow(() =>
            {
                using (var dynamicDigitalPatternMeasurement = DynamicDigitalPatternMeasurement.CreateInstance(channelExpression))
                {
                    var parameters =
                        ConstantsForDynamicDigitalPatternMeasurements
                            .DefaultDynamicDigitalPatternMeasurementParameters;

                    TestContext.WriteLine("Parameters:");
                    TestContext.WriteLine(parameters.ToString());

                    // Act
                    var results = dynamicDigitalPatternMeasurement
                        .ConfigureAndMeasure(parameters);

                    TestContext.WriteLine("Results:");
                    TestContext.WriteLine(results.ToString());


                    // Assert
                    Assert.IsNotNull(results);
                }
            });
        }
    }
}
