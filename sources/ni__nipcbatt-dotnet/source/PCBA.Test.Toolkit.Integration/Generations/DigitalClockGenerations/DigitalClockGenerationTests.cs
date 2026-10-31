using NUnit.Framework;
using PCBATestToolkitApi.Generations.DigitalClockGenerations;
using PCBATestToolkitApi.Generations.DigitalClockGenerations.Constants;

namespace PCBATestToolkitClient.Generations.DigitalClockGenerations
{
    [TestFixture]
    public class DigitalClockGenerationTests
    {
        [Test]
        public void ConfigureAndGenerate_Test()
        {
            // Arrange (example of channel expression)
            string channelExpression = "NI_PCBA_Measurement_Simulated_TestScale_TS1Mod1/ctr0";
            string outputTerminalName = "/NI_PCBA_Measurement_Simulated_TestScale_TS1Mod1/PFI3";


            Assert.DoesNotThrow(() =>
            {

                var parameters = ConstantsForDigitalClockGenerations.DefaultDigitalClockGenerationConfigurationParameters;

                TestContext.WriteLine("Parameters:");
                TestContext.WriteLine(parameters.ToString());

                using (var digitalClockGeneration = DigitalClockGeneration
                           .CreateInstance(
                               channelExpression: channelExpression,
                               outputTerminalName: outputTerminalName))
                {
                    // Act
                    var digitalClockGenerationData = digitalClockGeneration.ConfigureAndGenerate(parameters);

                    TestContext.WriteLine("Results:");
                    TestContext.WriteLine(digitalClockGenerationData.ToString());

                    //Assert
                    Assert.IsTrue(digitalClockGenerationData.IsFilled);
                }
            });
        }
    }
}