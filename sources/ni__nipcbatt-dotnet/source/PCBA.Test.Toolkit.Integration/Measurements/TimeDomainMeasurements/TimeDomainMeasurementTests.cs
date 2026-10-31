using NUnit.Framework;
using PCBATestToolkitApi.Measurements.TimeDomainMeasurements;
using PCBATestToolkitApi.Measurements.TimeDomainMeasurements.Constants;

namespace PCBATestToolkitClient.Measurements.TimeDomainMeasurements
{
    [TestFixture]
    public class TimeDomainMeasurementTests
    {
        [Test]
        public void ConfigureAndMeasure_Test()
        {
            // Arrange
            string channelExpression = "NI_PCBA_Measurement_Simulated_TestScale_TS1Mod2/ai0";

            Assert.DoesNotThrow(() =>
            {
                using (var timeDomainMeasurement = TimeDomainMeasurement.CreateInstance(
                           analogInputChannelExpression: channelExpression))
                {
                    var parameters = ConstantsForTimeDomainMeasurements.DefaultTimeDomainMeasurementParameters;


                    TestContext.WriteLine("Parameters:");
                    TestContext.WriteLine(parameters.ToString());

                    // Act
                    var results = timeDomainMeasurement.ConfigureAndMeasure(parameters);

                    TestContext.WriteLine("Results:");
                    TestContext.WriteLine(results.ToString());


                    // Assert
                    Assert.IsNotNull(results);
                }
            });
        }
    }
}
