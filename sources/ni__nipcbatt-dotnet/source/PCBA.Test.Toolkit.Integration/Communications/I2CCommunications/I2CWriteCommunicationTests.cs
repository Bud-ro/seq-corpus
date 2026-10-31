using NUnit.Framework;
using PCBATestToolkitApi.Communications.I2CCommunications;
using PCBATestToolkitApi.Communications.I2CCommunications.Constants;

namespace PCBATestToolkitClient.Communications.I2CCommunications
{
    [TestFixture]
    public class I2CWriteCommunicationTests
    {
        [Test]
        [Ignore("Known to fail, Simulation does not USB-8452 device.")]
        public void ConfigureAndWriteData_Test()
        {
            // Arrange (example of channel expression)
            string deviceName = "USB-8452";

            Assert.DoesNotThrow(() =>
            {
                var parameters = ConstantsForI2CWriteCommunications.DefaultI2CWriteCommunicationConfigurationParameters;

                TestContext.WriteLine("Parameters:");
                TestContext.WriteLine(parameters.ToString());

                using (var i2CWriteCommunication = I2CWriteCommunication
                           .CreateInstance(deviceName: deviceName))
                {
                    // Act
                    i2CWriteCommunication.ConfigureAndWriteData(parameters);

                    TestContext.WriteLine("End of operation.");

                    //Assert
                }
            });
        }
    }
}
