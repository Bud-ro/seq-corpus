import pprint
from tsxml import main


def test_numeric_array():
    xml_input = """
    <?TS version="2019 (19.0.0.170)"?>
    <Prop Name='MyContainer' Type='Obj' Flags='0x0'>
        <Prop Name='MyNumericArray' Type='Array' LBound='[0]' HBound='[5]' ElementType='Number'
        Flags='0x0'>
            <Value ID='[0]'>0</Value>
            <Value ID='[1]'>0</Value>
            <Value ID='[2]'>0</Value>
            <Value ID='[3]'>0</Value>
            <Value ID='[4]'>0</Value>
            <Value ID='[5]'>0</Value>
        </Prop>
        <Prop Name='MyNumber' Type='Number' Flags='0x0'>
            <Value>1</Value>
        </Prop>
        <Prop Name='MyString' Type='String' Flags='0x0'>
            <Value>xTLDR.com</Value>
        </Prop>
    </Prop>
    """
    # Parse
    result = main.parse(xml_input)
    # pprint.pprint(result, indent=2)

    exp_result = {
        "MyContainer": {
            "MyNumber": 1.0,
            "MyNumericArray": [0.0, 0.0, 0.0, 0.0, 0.0, 0.0],
            "MyString": "xTLDR.com",
        }
    }

    assert result == exp_result


def test_numeric_array_single_element():
    xml_input = """
    <?TS version="2019 (19.0.0.170)"?>
    <Prop Name='MyContainer' Type='Obj' Flags='0x0'>
        <Prop Name='MyNumericArray' Type='Array' LBound='[0]' HBound='[0]' ElementType='Number'
        Flags='0x0'>
            <Value ID='[0]'>0</Value>
        </Prop>
        <Prop Name='MyNumber' Type='Number' Flags='0x0'>
            <Value>1</Value>
        </Prop>
        <Prop Name='MyString' Type='String' Flags='0x0'>
            <Value>xTLDR.com</Value>
        </Prop>
    </Prop>
    """
    # Parse
    result = main.parse(xml_input)
    # pprint.pprint(result, indent=2)

    exp_result = {
        "MyContainer": {
            "MyNumber": 1.0,
            "MyNumericArray": [0.0],
            "MyString": "xTLDR.com",
        }
    }

    assert result == exp_result


def test_numeric_array_empty():
    xml_input = """
    <?TS version="2019 (19.0.0.170)"?>
        <Prop Name='MySimpleContainer' Type='Obj' Flags='0x0'>
            <Prop Name='MyNum1' Type='Number' Flags='0x0'>
                <Value>0</Value>
            </Prop>
                <Prop Name='MyStr1' Type='String' Flags='0x0'>
            <Value></Value>
            </Prop>
                <Prop Name='EmptyNumArray' Type='Array' LBound='[0]' HBound='[]' ElementType='Number' Flags='0x0'>
            </Prop>
        </Prop>
    """
    # Parse
    result = main.parse(xml_input)
    pprint.pprint(result, indent=2)

    # exp_result = {
    #     "MyContainer": {
    #         "MyNumber": 1.0,
    #         "MyNumericArray": [0.0],
    #         "MyString": "xTLDR.com",
    #     }
    # }

    # assert result == exp_result


def test_boolean_array():
    xml_input = """
    <?TS version="2019 (19.0.0.170)"?>
    <Prop Name='MyBoolArray' Type='Array' LBound='[0]' HBound='[9]' ElementType='Boolean' Flags='0x0'>
        <Value ID='[0]'>True</Value>
        <Value ID='[1]'>False</Value>
        <Value ID='[2]'>True</Value>
        <Value ID='[3]'>True</Value>
        <Value ID='[4]'>False</Value>
        <Value ID='[5]'>False</Value>
        <Value ID='[6]'>False</Value>
        <Value ID='[7]'>False</Value>
        <Value ID='[8]'>False</Value>
        <Value ID='[9]'>False</Value>
    </Prop>
    """
    # Parse
    result = main.parse(xml_input)
    pprint.pprint(result, indent=2)

    exp_result = {
        "MyBoolArray": [
            True,
            False,
            True,
            True,
            False,
            False,
            False,
            False,
            False,
            False,
        ]
    }

    assert result == exp_result


def test_container_array():
    xml_input = """
    <?TS version="2019 (19.0.0.170)"?>
    <Prop Name='MyContainer' Type='Obj' Flags='0x0'>
        <Prop Name='MyNumber' Type='Number' Flags='0x0'>
            <Value>1</Value>
        </Prop>
        <Prop Name='MyString' Type='String' Flags='0x0'>
            <Value>xTLDR.com</Value>
        </Prop>
        <Prop Name='ContainerArray' Type='Array' LBound='[0]' HBound='[2]' ElementType='Obj' Flags='0x0'>
            <Value ID='[0]'>
                <Prop Type='Obj' Flags='0x0'>
                    <Prop Name='Num_1' Type='Number' Flags='0x0'>
                        <Value>0</Value>
                    </Prop>
                    <Prop Name='Str_1' Type='String' Flags='0x0'>
                        <Value>Zero</Value>
                    </Prop>
                    <Prop Name='Bool_1' Type='Boolean' Flags='0x0'>
                        <Value>True</Value>
                    </Prop>
                </Prop>
            </Value>
            <Value ID='[1]'>
                <Prop Type='Obj' Flags='0x0'>
                    <Prop Name='Num_1' Type='Number' Flags='0x0'>
                        <Value>1</Value>
                    </Prop>
                    <Prop Name='Str_1' Type='String' Flags='0x0'>
                        <Value>One</Value>
                    </Prop>
                    <Prop Name='Bool_1' Type='Boolean' Flags='0x0'>
                        <Value>False</Value>
                    </Prop>
                </Prop>
            </Value>
            <Value ID='[2]'>
                <Prop Type='Obj' Flags='0x0'>
                    <Prop Name='Num_1' Type='Number' Flags='0x0'>
                        <Value>2</Value>
                    </Prop>
                    <Prop Name='Str_1' Type='String' Flags='0x0'>
                        <Value>Two</Value>
                    </Prop>
                    <Prop Name='Bool_1' Type='Boolean' Flags='0x0'>
                        <Value>True</Value>
                    </Prop>
                </Prop>
            </Value>
        </Prop>
    </Prop>
    """
    # Parse
    result = main.parse(xml_input)
    # pprint.pprint(result, indent=2)

    exp_result = {
        "MyContainer": {
            "ContainerArray": [
                {"Bool_1": True, "Num_1": 0.0, "Str_1": "Zero"},
                {"Bool_1": False, "Num_1": 1.0, "Str_1": "One"},
                {"Bool_1": True, "Num_1": 2.0, "Str_1": "Two"},
            ],
            "MyNumber": 1.0,
            "MyString": "xTLDR.com",
        }
    }

    assert result == exp_result
