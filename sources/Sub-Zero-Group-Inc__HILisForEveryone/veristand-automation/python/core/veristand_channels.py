from typing import Type, TypeVar, Generic
from niveristand.clientapi import ChannelReference

T = TypeVar("T", bool, int, float)

class In(Generic[T]):
    """Generic Read Only Channel"""
    def __init__(self, channel: str, data_type: Type[T]):
        self._channel = ChannelReference(channel)
        self._data_type = data_type

    def read(self) -> T:
        return self._data_type(self._channel.value)


class Out(In[T]):
    """Generic Read/ Write Channel"""
    def write(self, value: T) -> None:
        self._channel.value = self._data_type(value)


class AsymmetricInOut(Generic[T]):
    """Generic Read/ Write Channel Where Read/ Write Are Different Channels"""
    def __init__(self, in_channel: str, out_channel: str, data_type: Type[T]):
        self._in_channel = ChannelReference(in_channel)
        self._out_channel = ChannelReference(out_channel)
        self._data_type = data_type

    def read(self) -> T:
        return self._data_type(self._in_channel.value)

    def write(self, value: T) -> None:
        self._out_channel.value = self._data_type(value)
