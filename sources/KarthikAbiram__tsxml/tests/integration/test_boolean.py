from tsxml import main
import pprint


def test_boolean_true():
    input_xml = """
    <?TS version="2019 (19.0.0.170)"?>
    <Prop Name='MyBoolean' Type='Boolean' Flags='0x0'>
        <Value>True</Value>
    </Prop>
    """

    # Parse
    result = main.parse(input_xml)
    # pprint.pprint(result, indent=2)

    exp_result = {"MyBoolean": True}

    assert result == exp_result


def test_boolean_false():
    input_xml = """
    <?TS version="2019 (19.0.0.170)"?>
    <Prop Name='MyBoolean' Type='Boolean' Flags='0x0'>
        <Value>False</Value>
    </Prop>
    """

    # Parse
    result = main.parse(input_xml)
    # pprint.pprint(result, indent=2)

    exp_result = {"MyBoolean": False}

    assert result == exp_result
