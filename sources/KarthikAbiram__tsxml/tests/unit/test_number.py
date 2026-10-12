import pprint
from tsxml.types import number


def test_number():
    path = [("Prop", {"Flags": "0x0", "Name": "MyNumber", "Type": "Number"})]
    key = "Prop"
    value = {"@Flags": "0x0", "@Name": "MyNumber", "@Type": "Number", "Value": "0"}
    result = number.parse(path, key, value)

    exp_result = {"key": "MyNumber", "value": 0.0}
    assert result == exp_result
