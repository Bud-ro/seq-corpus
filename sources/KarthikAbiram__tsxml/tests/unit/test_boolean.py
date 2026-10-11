import pprint
from tsxml.types import boolean


def test_boolean_true():
    path = [("Prop", {"Flags": "0x0", "Name": "MyBoolean", "Type": "Boolean"})]
    key = "Prop"
    value = {"@Flags": "0x0", "@Name": "MyBoolean", "@Type": "Boolean", "Value": "True"}
    result = boolean.parse(path, key, value)

    exp_result = {"key": "MyBoolean", "value": True}
    assert result == exp_result

def test_boolean_false():
    path = [("Prop", {"Flags": "0x0", "Name": "MyBoolean", "Type": "Boolean"})]
    key = "Prop"
    value = {
        "@Flags": "0x0",
        "@Name": "MyBoolean",
        "@Type": "Boolean",
        "Value": "False",
    }
    result = boolean.parse(path, key, value)

    exp_result = {"key": "MyBoolean", "value": False}
    assert result == exp_result

def test_boolean_true_case_insensitive():
    path = [("Prop", {"Flags": "0x0", "Name": "MyBoolean", "Type": "Boolean"})]
    key = "Prop"
    bool_true_cases = ["TRUE", "true", "TrUe", "True"]
    for case in bool_true_cases:
        value = {"@Flags": "0x0", "@Name": "MyBoolean", "@Type": "Boolean", "Value": case}
        result = boolean.parse(path, key, value)
        exp_result = {"key": "MyBoolean", "value": True}
        assert result == exp_result

def test_boolean_false_case_insensitive():
    path = [("Prop", {"Flags": "0x0", "Name": "MyBoolean", "Type": "Boolean"})]
    key = "Prop"
    bool_false_cases = ["FALSE", "false", "FaLse", "False"]
    for case in bool_false_cases:
        value = {
            "@Flags": "0x0",
            "@Name": "MyBoolean",
            "@Type": "Boolean",
            "Value": case,
        }
        result = boolean.parse(path, key, value)

        exp_result = {"key": "MyBoolean", "value": False}
        assert result == exp_result