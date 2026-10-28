using NUnit.Framework;
using PCBATestToolkitApi.Measurements.StaticDigitalStateMeasurements;

namespace PCBATestToolkitClient.Measurements.StaticDigitalStateMeasurements
{
    [TestFixture]
    public class StaticDigitalStateMeasurementTests
    {
        [Test]
        public void ConfigureAndMeasure_Test()
        {
            // Arrange
            string channelExpression = "NI_PCBA_Measurement_Simulated_TestScale_TS1Mod4/port0/line0:7";

            Assert.DoesNotThrow(() =>
            {
                using (var digitalStateMeasurement = StaticDigitalStateMeasurement.CreateInstance(channelExpression))
                {
                    // Act
                    var results = digitalStateMeasurement.ConfigureAndMeasure();

                    TestContext.WriteLine("Results:");
                    TestContext.WriteLine(results.ToString());


                    // Assert
                    Assert.IsNotNull(results);
                }
            });
        }
    }
}
