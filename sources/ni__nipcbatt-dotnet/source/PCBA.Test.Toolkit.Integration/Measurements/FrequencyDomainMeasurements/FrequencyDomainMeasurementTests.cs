using NUnit.Framework;
using PCBATestToolkitApi.Measurements.FrequencyDomainMeasurements;
using PCBATestToolkitApi.Measurements.FrequencyDomainMeasurements.Constants;

namespace PCBATestToolkitClient.Measurements.FrequencyDomainMeasurements
{
    [TestFixture]
    public class FrequencyDomainMeasurementTests
    {
        [Test]
        public void ConfigureAndMeasure_Test()
        {
            // Arrange
            string channelExpression = "NI_PCBA_Measurement_Simulated_TestScale_TS1Mod2/ai0";

            Assert.DoesNotThrow(() =>
            {
                using (var frequencyDomainMeasurement = FrequencyDomainMeasurement
                           .CreateInstance(analogInputChannelExpression: channelExpression))
                {
                    var parameters = ConstantsForFrequencyDomainMeasurements.DefaultFrequencyDomainMeasurementParameters;


                    TestContext.WriteLine("Parameters:");
                    TestContext.WriteLine(parameters.ToString());

                    // Act
                    var results = frequencyDomainMeasurement.ConfigureAndMeasure(parameters);

                    TestContext.WriteLine("Results:");
                    TestContext.WriteLine(results.ToString());


                    // Assert
                    Assert.IsNotNull(results);
                }
            });
        }
    }
}
