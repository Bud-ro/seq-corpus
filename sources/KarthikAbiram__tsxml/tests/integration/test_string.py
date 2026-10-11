from tsxml import main
import pprint


def test_string():
    input_xml = """
    <?TS version="2019 (19.0.0.170)"?>
    <Prop Name='MyString' Type='String' Flags='0x0'>
        <Value>xTLDR.com</Value>
    </Prop>
    """

    # Parse
    result = main.parse(input_xml)
    # pprint.pprint(result, indent=2)

    exp_result = {"MyString": "xTLDR.com"}

    assert result == exp_result


def test_empty_string():
    input_xml = """
    <?TS version="2019 (19.0.0.170)"?>
    <Prop Name='MyString' Type='String' Flags='0x0'>
        <Value></Value>
    </Prop>
    """

    # Parse
    result = main.parse(input_xml)
    # pprint.pprint(result, indent=2)

    exp_result = {"MyString": ""}

    assert result == exp_result
