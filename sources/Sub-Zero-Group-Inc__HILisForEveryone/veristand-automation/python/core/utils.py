from math import isclose
import time
from typing import Callable


def wait_until(
    predicate: Callable[[], bool],
    timeout: float,
    poll_interval: float = 0.0,
) -> bool:
    deadline = time.monotonic() + timeout
    while not predicate():
        if time.monotonic() > deadline:
            return False
        time.sleep(poll_interval)

    return True


def wait_for_channel(
    channel,
    value: float | int | bool,
    timeout: float = 30,
    abs_tolerance: float = 0,
    poll_interval: float = 0.0,
) -> bool:
    assert hasattr(channel, "read") and callable(
        channel.read
    ), "Channel must have a read() method"
    return wait_until(
        lambda: isclose(channel.read(), value, abs_tol=abs_tolerance),
        timeout=timeout,
        poll_interval=poll_interval,
    )
