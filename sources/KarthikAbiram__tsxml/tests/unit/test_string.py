import pprint
from tsxml.types import string


def test_string():
    path = [("Prop", {"Flags": "0x0", "Name": "MyString", "Type": "String"})]
    key = "Prop"
    value = {
        "@Flags": "0x0",
        "@Name": "MyString",
        "@Type": "String",
        "Value": "xTLDR.com",
    }
    result = string.parse(path, key, value)

    exp_result = {"key": "MyString", "value": "xTLDR.com"}
    assert result == exp_result


def test_empty_string():
    path = [("Prop", {"Flags": "0x0", "Name": "MyString", "Type": "String"})]
    key = "Prop"
    value = {"@Flags": "0x0", "@Name": "MyString", "@Type": "String", "Value": None}
    result = string.parse(path, key, value)

    exp_result = {"key": "MyString", "value": ""}
    assert result == exp_result
