# VeriStand Custom Steps for TestStand

An example showing how to extend NI TestStand with custom step types that
control a VeriStand deployment — so a TestStand sequence can deploy a
model, set stimuli, read responses, and tear down cleanly without
hand-rolled code modules in every sequence.

## What it demonstrates

- Defining reusable custom step types for common VeriStand operations.
- Wiring those step types into a TestStand sequence.
- Passing channel names, expected values, and tolerances as step
  properties (so non-developers can author tests).
- Returning results into TestStand's standard reporting pipeline.

## Prerequisites

- NI TestStand
- NI VeriStand
- The custom step types installed into your TestStand environment

## Layout (planned)

```
teststand-custom-steps/
├── README.md              (this file)
├── step-types/            (the custom step type definitions)
├── example-sequence/      (a TestStand sequence that uses them)
└── docs/                  (installation and authoring guide)
```

The actual sample files will land here as the session approaches.
