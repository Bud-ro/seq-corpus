using NUnit.Framework;
using PCBATestToolkitApi.Generations.DigitalPulseGenerations;
using PCBATestToolkitApi.Generations.DigitalPulseGenerations.Constants;

namespace PCBATestToolkitClient.Generations.DigitalPulseGenerations
{
    [TestFixture]
    public class DigitalPulseGenerationTests
    {
        [Test]
        public void ConfigureAndGenerate_Test()
        {
            // Arrange (example of channel expression)
            string channelExpression = "NI_PCBA_Measurement_Simulated_TestScale_TS1Mod1/ctr0";
            string outputTerminalName = "/NI_PCBA_Measurement_Simulated_TestScale_TS1Mod1/PFI3";


            Assert.DoesNotThrow(() =>
            {
                var parameters = ConstantsForDigitalPulseGenerations.DefaultDigitalPulseGenerationConfigurationParameters;

                TestContext.WriteLine("Parameters:");
                TestContext.WriteLine(parameters.ToString());

                using (var digitalPulseGeneration = DigitalPulseGeneration
                           .CreateInstance(
                               channelExpression: channelExpression,
                               outputTerminalName: outputTerminalName))
                {
                    // Act
                    var digitalClockGenerationData = digitalPulseGeneration.ConfigureAndGenerate(parameters);

                    TestContext.WriteLine("Results:");
                    TestContext.WriteLine(digitalClockGenerationData.ToString());

                    //Assert
                    Assert.IsTrue(digitalClockGenerationData.IsFilled);
                }
            });
        }
    }
}