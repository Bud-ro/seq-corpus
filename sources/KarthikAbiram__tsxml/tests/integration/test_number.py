from tsxml import main
import pprint


def test_number():
    input_xml = """
    <?TS version="2019 (19.0.0.170)"?>
    <Prop Name='MyNumber' Type='Number' Flags='0x0'>
        <Value>0</Value>
    </Prop>
    """

    # Parse
    result = main.parse(input_xml)
    # pprint.pprint(result, indent=2)

    exp_result = {"MyNumber": 0.0}

    assert result == exp_result
