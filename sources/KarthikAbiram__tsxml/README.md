# tsxml
TestStand XML Parser for Python. Converts the XML string of variable exported using 'GetXML(0,0)' function in TestStand to Python dictionary.

# Install
Install using pip
```
pip install tsxml
```
Supports Python >= 3.8

# Usage
```
import tsxml

input_xml = """
<?TS version="2019 (19.0.0.170)"?>
    <Prop Name='MyContainer' Type='Obj' Flags='0x4'>
        <Prop Name='MyNumber' Type='Number' Flags='0x0'>
            <Value>5</Value>
        </Prop>
        <Prop Name='MyString' Type='String' Flags='0x0'>
            <Value>xTLDR.com</Value>
        </Prop>
        <Prop Name='MyBoolean' Type='Boolean' Flags='0x0'>
            <Value>True</Value>
        </Prop>
    </Prop>
"""

result = tsxml.parse(input_xml)

# result = {'MyContainer': {'MyNumber': 5.0, 'MyString': 'xTLDR.com', 'MyBoolean': True}}
```
# Source
Setup Source Code
```
uv python install 3.8.10
pipx install tox==4.9.0
poetry install
tox
```

# License
MIT License