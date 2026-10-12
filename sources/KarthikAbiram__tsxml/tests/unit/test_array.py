import pprint
from tsxml.types import array


def test_numeric_array():
    path = [
        ("Prop", {"Flags": "0x0", "Name": "MyContainer", "Type": "Obj"}),
        (
            "Prop",
            {
                "ElementType": "Number",
                "Flags": "0x0",
                "HBound": "[5]",
                "LBound": "[0]",
                "Name": "MyNumericArray",
                "Type": "Array",
            },
        ),
    ]
    key = "Prop"
    value = {
        "@ElementType": "Number",
        "@Flags": "0x0",
        "@HBound": "[5]",
        "@LBound": "[0]",
        "@Name": "MyNumericArray",
        "@Type": "Array",
        "Value": [
            {"#text": "0", "@ID": "[0]"},
            {"#text": "0", "@ID": "[1]"},
            {"#text": "0", "@ID": "[2]"},
            {"#text": "0", "@ID": "[3]"},
            {"#text": "0", "@ID": "[4]"},
            {"#text": "0", "@ID": "[5]"},
        ],
    }
    result = array.parse(path, key, value)

    exp_result = {"key": "MyNumericArray", "value": [0.0, 0.0, 0.0, 0.0, 0.0, 0.0]}
    assert result == exp_result


def test_numeric_array_single_element():
    path = [
        ("Prop", {"Flags": "0x0", "Name": "MyContainer", "Type": "Obj"}),
        (
            "Prop",
            {
                "ElementType": "Number",
                "Flags": "0x0",
                "HBound": "[0]",
                "LBound": "[0]",
                "Name": "MyNumericArray",
                "Type": "Array",
            },
        ),
    ]
    key = "Prop"
    value = {
        "@ElementType": "Number",
        "@Flags": "0x0",
        "@HBound": "[0]",
        "@LBound": "[0]",
        "@Name": "MyNumericArray",
        "@Type": "Array",
        "Value": {"#text": "0", "@ID": "[0]"},
    }
    result = array.parse(path, key, value)

    exp_result = {"key": "MyNumericArray", "value": [0.0]}
    assert result == exp_result


def test_numeric_array_empty():
    path = [
        ("Prop", {"Flags": "0x0", "Name": "MySimpleContainer", "Type": "Obj"}),
        (
            "Prop",
            {
                "ElementType": "Number",
                "Flags": "0x0",
                "HBound": "[]",
                "LBound": "[0]",
                "Name": "EmptyNumArray",
                "Type": "Array",
            },
        ),
    ]
    key = "Prop"
    value = {
        "@ElementType": "Number",
        "@Flags": "0x0",
        "@HBound": "[]",
        "@LBound": "[0]",
        "@Name": "EmptyNumArray",
        "@Type": "Array",
    }
    result = array.parse(path, key, value)

    exp_result = {"key": "EmptyNumArray", "value": []}
    assert result == exp_result


def test_boolean_array():
    path = [
        (
            "Prop",
            {
                "ElementType": "Boolean",
                "Flags": "0x0",
                "HBound": "[9]",
                "LBound": "[0]",
                "Name": "MyBoolArray",
                "Type": "Array",
            },
        )
    ]
    key = "Prop"
    value = {
        "@ElementType": "Boolean",
        "@Flags": "0x0",
        "@HBound": "[9]",
        "@LBound": "[0]",
        "@Name": "MyBoolArray",
        "@Type": "Array",
        "Value": [
            {"#text": "True", "@ID": "[0]"},
            {"#text": "False", "@ID": "[1]"},
            {"#text": "True", "@ID": "[2]"},
            {"#text": "True", "@ID": "[3]"},
            {"#text": "False", "@ID": "[4]"},
            {"#text": "False", "@ID": "[5]"},
            {"#text": "False", "@ID": "[6]"},
            {"#text": "False", "@ID": "[7]"},
            {"#text": "False", "@ID": "[8]"},
            {"#text": "False", "@ID": "[9]"},
        ],
    }
    result = array.parse(path, key, value)

    exp_result = {
        "key": "MyBoolArray",
        "value": [True, False, True, True, False, False, False, False, False, False],
    }
    assert result == exp_result


def test_container_array():
    path = [
        ("Prop", {"Flags": "0x0", "Name": "MyContainer", "Type": "Obj"}),
        (
            "Prop",
            {
                "ElementType": "Obj",
                "Flags": "0x0",
                "HBound": "[2]",
                "LBound": "[0]",
                "Name": "ContainerArray",
                "Type": "Array",
            },
        ),
    ]
    key = "Prop"
    value = {
        "@ElementType": "Obj",
        "@Flags": "0x0",
        "@HBound": "[2]",
        "@LBound": "[0]",
        "@Name": "ContainerArray",
        "@Type": "Array",
        "Value": [
            {"@ID": "[0]", "Prop": {"Bool_1": True, "Num_1": 0.0, "Str_1": "Zero"}},
            {"@ID": "[1]", "Prop": {"Bool_1": False, "Num_1": 1.0, "Str_1": "One"}},
            {"@ID": "[2]", "Prop": {"Bool_1": True, "Num_1": 2.0, "Str_1": "Two"}},
        ],
    }
    result = array.parse(path, key, value)

    exp_result = {
        "key": "ContainerArray",
        "value": [
            {"Bool_1": True, "Num_1": 0.0, "Str_1": "Zero"},
            {"Bool_1": False, "Num_1": 1.0, "Str_1": "One"},
            {"Bool_1": True, "Num_1": 2.0, "Str_1": "Two"},
        ],
    }
    assert result == exp_result
