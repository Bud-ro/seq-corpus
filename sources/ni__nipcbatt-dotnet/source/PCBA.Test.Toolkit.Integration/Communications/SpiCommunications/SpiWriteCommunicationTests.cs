using NUnit.Framework;
using PCBATestToolkitApi.Communications.SpiCommunications;
using PCBATestToolkitApi.Communications.SpiCommunications.Constants;

namespace PCBATestToolkitClient.Communications.SpiCommunications
{
    [TestFixture]
    public class SpiWriteCommunicationTests
    {
        [Test]
        [Ignore("Known to fail, Simulation does not USB-8452 device.")]
        public void ConfigureAndWriteData_Test()
        {
            // Arrange (example of channel expression)
            string deviceName = "USB-8452";

            Assert.DoesNotThrow(() =>
            {
                var parameters = ConstantsForSpiWriteCommunications.DefaultSpiWriteCommunicationConfigurationParameters;

                TestContext.WriteLine("Parameters:");
                TestContext.WriteLine(parameters.ToString());

                using (var spiWriteCommunication = SpiWriteCommunication
                           .CreateInstance(deviceName: deviceName))
                {
                    // Act
                    spiWriteCommunication.ConfigureAndWriteData(parameters);

                    TestContext.WriteLine("End of operation.");

                    //Assert
                }
            });
        }
    }
}
