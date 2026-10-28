using NUnit.Framework;
using PCBATestToolkitApi.Generations.SignalVoltageGenerations;
using PCBATestToolkitApi.Generations.SignalVoltageGenerations.Constants;

namespace PCBATestToolkitClient.Generations.SignalVoltageGenerations
{
    [TestFixture]
    public class SignalVoltageGenerationTests
    {
        [Test]
        public void ConfigureAndGenerate_DefaultMultipleTonesSignalVoltageGenerationParameters_Test()
        {
            // Arrange
            string channelExpression = "NI_PCBA_Measurement_Simulated_TestScale_TS1Mod3/ao0";



            Assert.DoesNotThrow(() =>
           {
               using (var signalVoltageGeneration = SignalVoltageGeneration
                          .CreateInstance(analogOutputChannelExpression: channelExpression))
               {
                   var parameters =
                       ConstantsForSignalVoltageGenerations
                           .DefaultMultipleTonesSignalVoltageGenerationParameters;

                   TestContext.WriteLine("Parameters");
                   TestContext.WriteLine(parameters);

                   // Act
                   signalVoltageGeneration.ConfigureAndGenerate(parameters);
               }
           });
        }

        [Test]
        public void ConfigureAndGenerate_DefaultSineWaveSignalVoltageGenerationParameters_Test()
        {
            // Arrange
            string channelExpression = "NI_PCBA_Measurement_Simulated_TestScale_TS1Mod3/ao0";

            Assert.DoesNotThrow(() =>
            {
                using (var signalVoltageGeneration = SignalVoltageGeneration
                           .CreateInstance(analogOutputChannelExpression: channelExpression))
                {
                    var parameters =
                        ConstantsForSignalVoltageGenerations
                            .DefaultSineWaveSignalVoltageGenerationParameters;


                    TestContext.WriteLine("Parameters");
                    TestContext.WriteLine(parameters);

                    // Act
                    signalVoltageGeneration.ConfigureAndGenerate(parameters);
                }
            });
        }

        [Test]
        public void ConfigureAndGenerate_DefaultSquareWaveSignalVoltageGenerationParameters_Test()
        {

            // Arrange
            string channelExpression = "NI_PCBA_Measurement_Simulated_TestScale_TS1Mod3/ao0";

            Assert.DoesNotThrow(() =>
            {
                using (var signalVoltageGeneration =
                       SignalVoltageGeneration
                           .CreateInstance(analogOutputChannelExpression: channelExpression))
                {
                    var parameters =
                        ConstantsForSignalVoltageGenerations
                            .DefaultSquareWaveSignalVoltageGenerationParameters;


                    TestContext.WriteLine("Parameters:");
                    TestContext.WriteLine(parameters.ToString());

                    // Act
                    signalVoltageGeneration.ConfigureAndGenerate(parameters);
                }
            });
        }
    }
}
