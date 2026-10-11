from tsxml import main
import pprint


def test_simple_container():
    input_xml = """
    <?TS version="2019 (19.0.0.170)"?>
    <Prop Name='MyContainer' Type='Obj' Flags='0x4'>
        <Prop Name='MyNumber' Type='Number' Flags='0x0'>
            <Value>5</Value>
        </Prop>
        <Prop Name='MyString' Type='String' Flags='0x0'>
            <Value>Pi Genie!</Value>
        </Prop>
        <Prop Name='MyBoolean' Type='Boolean' Flags='0x0'>
            <Value>True</Value>
        </Prop>
    </Prop>
    """

    # Parse
    result = main.parse(input_xml)
    # pprint.pprint(result, indent=2)

    exp_result = {
        "MyContainer": {"MyBoolean": True, "MyNumber": 5.0, "MyString": "Pi Genie!"}
    }

    assert result == exp_result


def test_container_with_array():
    input_xml = """
    <?TS version="2019 (19.0.0.170)"?>
    <Prop Name='MyContainerWithArray' Type='Obj' Flags='0x0'>
    <Prop Name='MyNum1' Type='Number' Flags='0x0'>
    <Value>0</Value>
    </Prop>
    <Prop Name='MyStr1' Type='String' Flags='0x0'>
    <Value></Value>
    </Prop>
    <Prop Name='MyNumArray1' Type='Array' LBound='[0]' HBound='[5]' ElementType='Number' Flags='0x0'>
    <Value ID='[0]'>10</Value>
    <Value ID='[1]'>20</Value>
    <Value ID='[2]'>30</Value>
    <Value ID='[3]'>40</Value>
    <Value ID='[4]'>0</Value>
    <Value ID='[5]'>0</Value>
    </Prop>
    <Prop Name='MyStrArray1' Type='Array' LBound='[0]' HBound='[9]' ElementType='String' Flags='0x0'>
    <Value ID='[0]'>Zero</Value>
    <Value ID='[1]'>One</Value>
    <Value ID='[2]'>Two</Value>
    <Value ID='[3]'></Value>
    <Value ID='[4]'></Value>
    <Value ID='[5]'></Value>
    <Value ID='[6]'></Value>
    <Value ID='[7]'></Value>
    <Value ID='[8]'></Value>
    <Value ID='[9]'></Value>
    </Prop>
    </Prop>
    """

    # Parse
    result = main.parse(input_xml)
    # pprint.pprint(result, indent=2)

    exp_result = {
        "MyContainerWithArray": {
            "MyNum1": 0.0,
            "MyNumArray1": [10.0, 20.0, 30.0, 40.0, 0.0, 0.0],
            "MyStr1": "",
            "MyStrArray1": ["Zero", "One", "Two", "", "", "", "", "", "", ""],
        }
    }

    assert result == exp_result
