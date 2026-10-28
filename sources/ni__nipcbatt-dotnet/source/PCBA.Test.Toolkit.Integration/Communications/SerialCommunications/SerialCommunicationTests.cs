using NUnit.Framework;
using PCBATestToolkitApi.Communications.SerialCommunications;
using PCBATestToolkitApi.Communications.SerialCommunications.Constants;

namespace PCBATestToolkitClient.Communications.SerialCommunications
{
    [TestFixture]
    public class SerialCommunicationTests
    {
        [Test]
        [Ignore("Known to fail, Simulation does not include ASRL?::INSTR devices.")]
        public void ConfigureThenSendCommandAndReceiveResponse_Test()
        {
            // Arrange (example of channel expression)
            string deviceName = "ASRL4::INSTR";

            Assert.DoesNotThrow(() =>
            {
                var parameters = ConstantsForSerialCommunications.DefaultSerialCommunicationConfigurationParameters;

                TestContext.WriteLine("Parameters:");
                TestContext.WriteLine(parameters.ToString());

                using (var serialCommunication = SerialCommunication
                           .CreateInstance(deviceName: deviceName))
                {
                    // Act
                    var results = serialCommunication.ConfigureThenSendCommandAndReceiveResponse(parameters: parameters);

                    TestContext.WriteLine("End of operation.");

                    TestContext.WriteLine("Results:");
                    TestContext.WriteLine(results.ToString());


                    // Assert
                    Assert.IsNotNull(results);
                }
            });
        }
    }
}