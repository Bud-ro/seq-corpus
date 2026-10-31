using NUnit.Framework;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Generations.StaticDigitalStateGenerations.Structs;
using PCBATestToolkitApi.Generations.StaticDigitalStateGenerations;

namespace PCBATestToolkitClient.Generations.StaticDigitalStateGenerations
{
    [TestFixture]
    public class StaticDigitalStateGenerationTests
    {
        [Test]
        public void ConfigureAndGenerate_Test()
        {
            // Arrange
            string channelExpression = "NI_PCBA_Measurement_Simulated_TestScale_TS1Mod4/port0/line0:7";

            Assert.DoesNotThrow(() =>
            {
                using (var powerSupplySourceAndMeasure = StaticDigitalStateGeneration
                           .CreateInstance(channelExpression))
                {
                    var parameters = new StaticDigitalStateGenerationConfigurationParameters(
                        dataToWrite: new[]
                        {
                            //line 0:7
                            true, false , true, false, true, false, true, false
                        });


                    TestContext.WriteLine("Parameters:");
                    TestContext.WriteLine(parameters.ToString());

                    // Act
                    var results = powerSupplySourceAndMeasure
                        .ConfigureAndGenerate(parameters);


                    TestContext.WriteLine("Results:");
                    TestContext.WriteLine(results.ToString());


                    // Assert
                    Assert.IsNotNull(results);
                }
            });
        }
    }
}
