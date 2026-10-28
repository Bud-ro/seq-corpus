using NUnit.Framework;
using PCBATestToolkitApi.Generations.DynamicDigitalPatternGenerations;
using PCBATestToolkitApi.Generations.DynamicDigitalPatternGenerations.Constants;

namespace PCBATestToolkitClient.Generations.DynamicDigitalPatternGenerations
{
    [TestFixture]
    public class DynamicDigitalPatternGenerationTests
    {
        [Test]
        public void ConfigureAndGenerate_Test()
        {
            // Arrange
            string channelExpression = "NI_PCBA_Measurement_Simulated_TestScale_TS1Mod4/port0/line0:7";


            Assert.DoesNotThrow(() =>
            {
                using (var dynamicDigitalPatternGeneration =
                       DynamicDigitalPatternGeneration
                           .CreateInstance(channelExpression))
                {
                    var parameters = ConstantsForDynamicDigitalPatternGenerations.DefaultDynamicDigitalPatternGenerationParameters;

                    TestContext.WriteLine("Parameters:");
                    TestContext.WriteLine(parameters.ToString());

                    // Act
                    var results =
                        dynamicDigitalPatternGeneration
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
