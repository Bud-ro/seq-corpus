using System;
using PCBATestToolkitAutomation.Action_Button_Test;
using PCBATestToolkitAutomation.Audio_Test;
using PCBATestToolkitAutomation.Creation_Example;
using PCBATestToolkitAutomation.Digital_IO_Test;
using PCBATestToolkitAutomation.Power_Supply_Test;

namespace PCBATestToolkitAutomation
{
    /// <summary>
    /// Allows to launch a small program to execute some basic combined measurement.
    /// </summary>
    internal class Program
    {
        static void Main()
        {
            Console.WriteLine(" *** PCB Assembly Test - Combined Measurement *** ");

            while (true)
            {
                Console.WriteLine("Sequences :");
                Console.WriteLine("1. Action Button Test");
                Console.WriteLine("2. Audio Test - Audio Line Check Test");
                Console.WriteLine("3. Digital IO Test - Digital State Test");
                Console.WriteLine("4. Power Supply Test - Power Supply and Measure with Trigger");
                Console.WriteLine("5. Power Supply Test - Power Supply and Measure without Trigger");
                Console.WriteLine("6. TDM using Analog Trigger (example of creation of library)");

                Console.WriteLine("Which sequence do you want to execute ?");
                string seqNumber = Console.ReadLine();

                if (string.IsNullOrEmpty(seqNumber))
                {
                    throw new Exception("Error: Please enter a valid number");
                }

                AbstractSequence sequence;

                switch (seqNumber)
                {
                    case "1":
                        sequence = new ActionButtonTestSequence();
                        break;
                    case "2":
                        sequence = new AudioLineCheckTestSequence();
                        break;
                    case "3":
                        sequence = new DigitalStateTestSequence();
                        break;
                    case "4":
                        sequence = new PowerSupplyAndMeasureWithTrigger();
                        break;
                    case "5":
                        sequence = new PowerSupplyAndMeasureWithoutTrigger();
                        break;
                    case "6":
                        sequence = new TimeDomainMeasurementWithAnalogTriggerSequence();
                        break;
                    default:
                        throw new Exception($"Error: the value \"{seqNumber}\" is not a valid number");
                }

                sequence.Execute();

                Console.WriteLine("You can check the results in the chosen folders.");
                Console.WriteLine();
                Console.WriteLine(
                    "Do you want to continue ? (Y: to choose a new sequence / N: to close the program");
                string willContinue = Console.ReadLine();

                if (string.IsNullOrEmpty(willContinue))
                {
                    throw new Exception($"Error: the value \"{willContinue}\" is not a valid number. Program will stop.");
                }

                if (!string.Equals(willContinue.ToUpper(), "Y"))
                {
                    // the program can be stopped 
                    break;
                }
            }
        }
    }
}