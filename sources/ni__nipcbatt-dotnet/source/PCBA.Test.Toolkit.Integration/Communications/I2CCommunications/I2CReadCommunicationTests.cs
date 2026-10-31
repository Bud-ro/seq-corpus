using NI.MeasurementFoundation.DataTranslation.DataFormatters;
using NUnit.Framework;
using PCBATestToolkitApi.Communications.I2CCommunications;
using PCBATestToolkitApi.Communications.I2CCommunications.Constants;

namespace PCBATestToolkitClient.Communications.I2CCommunications
{
    [TestFixture]
    public class I2CReadCommunicationTests
    {
        [Test]
        [Ignore("Known to fail, Simulation does not USB-8452 device.")]
        public void ConfigureAndReadData_Test()
        {
            // Arrange (example of channel expression)
            string deviceName = "USB-8452";

            Assert.DoesNotThrow(() =>
            {
                var parameters = ConstantsForI2CReadCommunications.DefaultI2CReadCommunicationConfigurationParameters;

                TestContext.WriteLine("Parameters:");
                TestContext.WriteLine(parameters.ToString());

                using (var i2CReadCommunication = I2CReadCommunication
                           .CreateInstance(deviceName: deviceName))
                {
                    // Act
                    var i2CReadCommunicationData = i2CReadCommunication.ConfigureAndReadData(parameters);

                    TestContext.WriteLine("Results:");
                    TestContext.WriteLine(i2CReadCommunicationData.FormatToString());

                    //Assert
                }
            });
        }
    }
}
