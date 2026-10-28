using NI.MeasurementFoundation.DataTranslation.DataFormatters;
using NUnit.Framework;
using PCBATestToolkitApi.Communications.SpiCommunications;
using PCBATestToolkitApi.Communications.SpiCommunications.Constants;

namespace PCBATestToolkitClient.Communications.SpiCommunications
{
    [TestFixture]
    public class SpiReadCommunicationTests
    {
        [Test]
        [Ignore("Known to fail, Simulation does not USB-8452 device.")]
        public void ConfigureAndReadData_Test()
        {
            // Arrange (example of channel expression)
            string deviceName = "USB-8452";

            Assert.DoesNotThrow(() =>
            {
                var parameters = ConstantsForSpiReadCommunications.DefaultSpiReadCommunicationConfigurationParameters;

                TestContext.WriteLine("Parameters:");
                TestContext.WriteLine(parameters.ToString());

                using (var spiReadCommunication = SpiReadCommunication
                           .CreateInstance(deviceName: deviceName))
                {
                    // Act
                    var i2CReadCommunicationData = spiReadCommunication.ConfigureAndReadData(parameters);

                    TestContext.WriteLine("Results:");
                    TestContext.WriteLine(i2CReadCommunicationData.FormatToString());

                    //Assert
                }
            });
        }
    }
}
