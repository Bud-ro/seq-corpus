import pylink
import time, os, sys

def getFilePath(baseline, variant, file_id):

    if -2 == file_id:
        path = './' + baseline + '/' + variant + '/elf/program_' +  variant + '_' +  variant +'_' + 'no_flex_hsm.elf'
        return path

    if -1 == file_id:
        path = './' + baseline + '/' + variant + '/s37/FlexProvisionReset.S37'
        path = r'C:\Elatch-Bench-Programming\Files\LSMP\s37\FlexProvisionReset.s37'
        return path
    
    if 0 == file_id:
        path = './' + baseline + '/' + variant + '/s37/FlexProvision_S32K118' '_' +  variant + '.S37'
        path = r'C:\Elatch-Bench-Programming\Files\LSMP\s37\FlexProvision_S32K118_LSMP.s37'
        return path
 
    if 1 == file_id:
        path = './' + baseline + '/' + variant + '/s37/program_' +  variant + '_' +  variant +'_' + 'Combined.S37'
        path = r'C:\Elatch-Bench-Programming\Files\LSMP\s37\program_LSMP_LSMP_combined.s37'
        return path
    return ''

if __name__ == '__main__':
    variant     = 'LSMP'
    baseline    = 'bsv_B3_2.0.0'


    # file_path = getFilePath(baseline, variant, 0)
    #
    # print(os.path.exists(file_path))

    # variant     = sys.argv[1]
    # baseline    = sys.argv[2]

    serial_no = '601017175'
    jlink = pylink.JLink()

    # Open a connection to your J-Link.
    jlink.open(serial_no)
    print(jlink.product_name)

    # jlink = pylink.unlock(jlink, 'Kinetis')
    # Connect to the target device.
    jlink.connect('S32K118', verbose=True)

    jlink.reset()
    
    # 0.1 Flash Flex Provisioning SW

    print('0. Flash Provisioning Reset SW')
    print('============================================')

    file_path = getFilePath(baseline, variant, -1)
    jlink.flash_file(file_path, 0x0)
    jlink.reset()
    jlink.restart()
    time.sleep(2)
    jlink.reset()

#========================================================================================

    print('1. Flash Flex Provisioning SW')
    print('============================================')

    file_path = getFilePath(baseline, variant, 0)
    
    jlink.flash_file(file_path, 0x0)
    jlink.reset()
    jlink.restart()
    
    wait_sec    = 12
    
    i           = 0
    while i <= wait_sec:
        print('Remaining for Provisioning ' + str(wait_sec - i) + " seconds")
        time.sleep(1)
        i = i + 1

    jlink.reset()

    print('2. Flash Combinded SW')

    print('============================================')

    file_path = getFilePath(baseline, variant, 1)
    # file_path = 'C:/temp/NO_FLEX_program_LSMD_LSMD_Combined.s37'
    # print(file_path)
    
    print('============================================')

    jlink.flash_file(file_path, 0x0)
    jlink.halt()
    jlink.restart()


    wait_sec    = 12
    i           = 0
    while i <= wait_sec:
        print('Remaining for Bootloader Entries set-up ' + str(wait_sec - i) + " seconds")
        time.sleep(1)
        i = i + 1

    jlink.reset()
    jlink.restart()

    jlink.close()

# END OF FILE
