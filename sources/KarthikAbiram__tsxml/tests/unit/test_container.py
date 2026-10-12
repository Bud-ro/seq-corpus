import pprint
from tsxml.types import container


def test_simple_container():
    path = [("Prop", {"Flags": "0x4", "Name": "MyContainer", "Type": "Obj"})]
    key = "Prop"
    value = {
        "@Flags": "0x4",
        "@Name": "MyContainer",
        "@Type": "Obj",
        "MyBoolean": True,
        "MyNumber": 5.0,
        "MyString": "Pi Genie!",
    }
    result = container.parse(path, key, value)

    exp_result = {
        "key": "MyContainer",
        "value": {"MyBoolean": True, "MyNumber": 5.0, "MyString": "Pi Genie!"},
    }
    assert result == exp_result


def test_container_with_array():
    path = [("Prop", {"Flags": "0x0", "Name": "MyContainerWithArray", "Type": "Obj"})]
    key = "Prop"
    value = {
        "@Flags": "0x0",
        "@Name": "MyContainerWithArray",
        "@Type": "Obj",
        "MyNum1": 0.0,
        "MyNumArray1": [10.0, 20.0, 30.0, 40.0, 0.0, 0.0],
        "MyStr1": "",
        "MyStrArray1": ["Zero", "One", "Two", "", "", "", "", "", "", ""],
    }
    result = container.parse(path, key, value)

    exp_result = {
        "key": "MyContainerWithArray",
        "value": {
            "MyNum1": 0.0,
            "MyNumArray1": [10.0, 20.0, 30.0, 40.0, 0.0, 0.0],
            "MyStr1": "",
            "MyStrArray1": ["Zero", "One", "Two", "", "", "", "", "", "", ""],
        },
    }
    assert result == exp_result
