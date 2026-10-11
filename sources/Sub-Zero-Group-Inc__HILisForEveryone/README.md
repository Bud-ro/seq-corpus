<p align="center">
  <img src="logo/hilisforeveryone.png" alt="HIL is for Everyone" width="400">
</p>

# HIL is for Everyone

**Companion repository for the NI Connect 2026 session of the same name.**

A starter kit for engineers, test leads, and managers who want to begin a
Hardware-in-the-Loop (HIL) journey for embedded testing — whether you're
spinning up your first rack or scaling up your automation workflow.

This repo is meant to be your Monday-morning starting point: the slides we
showed, working VeriStand automation examples you can adapt, and an AI
assistant that helps you map DUT signals to HIL rack wiring.

---

## About the session

**Hardware in the Loop is for Everyone**
NI Connect 2026 — May 14, 2026 — Fort Worth, TX

**Presenters**
- Chase Fearing — Sub-Zero Group, Inc.
- Steve Zastrow — Sub-Zero Group, Inc.
- Tanner Blair — Aliaro
- Ben Robinson — NI

---

## What's in this repo

| Section | What you'll find |
| --- | --- |
| [`presentation/`](presentation/) | Session slide decks (`HIL IS FOR EVERYONE 2023.pdf` and `HIL IS FOR EVERYONE 2026.pdf`) plus supporting images. |
| [`veristand-automation/`](veristand-automation/) | VeriStand project assets (`engine-demo/`, `mioDAQ/`), Python automation examples (`python/`), and NI TestStand sequence examples (`teststand/`). |
| [`hil-wiring-assistant/`](hil-wiring-assistant/) | An AI agent that helps you map DUT signals to HIL rack wiring. |

---

## Who this is for

- **Engineers** evaluating whether HIL is right for your product line.
- **Test leads** ready to automate but unsure where to start.
- **Managers** planning HIL adoption and looking for practical implementation examples.
- **Anyone** who has heard "HIL" thrown around and wants a concrete,
  approachable on-ramp.

You do not need to own a HIL rack to get value here. The examples and
the wiring assistant can help during planning as well as execution.

---

## How to use this repo

1. **Watch or re-read the session.** Start in [`presentation/`](presentation/).
2. **Try the automation examples.** Use [`veristand-automation/python/`](veristand-automation/python/)
  for Python + `pytest` workflows and [`veristand-automation/teststand/`](veristand-automation/teststand/)
  for TestStand integration examples.
3. **Explore the VeriStand projects.** Open assets in [`veristand-automation/`](veristand-automation/)
  to inspect models, channels, stimulus profiles, logging specs, and project configuration.
4. **Plan your wiring.** Point the [`hil-wiring-assistant/`](hil-wiring-assistant/)
   at your DUT signal list and let it propose a rack-side mapping.

---

## License

This project is released under the [MIT License](LICENSE). Use it, fork it,
adapt it for your team — that's the point.

---

## Questions or feedback

Open an issue on this repo, or find one of the presenters at NI Connect.
