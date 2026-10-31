"""
@author: Wolfgang R, NI
@description: Helper function for Session Reservation and creation
Custom Development from https://github.com/ni/measurementlink-python
"""

import niscope

import nifgen

import ni_measurementlink_service as nims
from _helpers import ServiceOptions

# -- Custom Development from https://github.com/ni/measurementlink-python
service_options = ServiceOptions()
srv_class = "ni.measurementlink.v1.grpcdeviceserver"

def create_niscope_session(
    session_info: nims.session_management.SessionInformation, 
    measurement_service: nims.MeasurementService
) -> niscope.Session:
    session_kwargs = {}
    if service_options.use_grpc_device:
        session_grpc_address = service_options.grpc_device_address

        if not session_grpc_address:
            session_grpc_channel = measurement_service.get_channel(
                provided_interface = niscope.GRPC_SERVICE_INTERFACE_NAME,
                service_class=srv_class,
            )
        else:
            session_grpc_channel = measurement_service.channel_pool.get_channel(
                target=session_grpc_address
            )
        session_kwargs["grpc_options"] = niscope.GrpcSessionOptions(
            session_grpc_channel,
            session_name=session_info.session_name,
            initialization_behavior=niscope.SessionInitializationBehavior.AUTO,
        )

    return niscope.Session(session_info.resource_name, **session_kwargs)

def create_nifgen_session(
    session_info: nims.session_management.SessionInformation,
    measurement_service: nims.MeasurementService
) -> nifgen.Session:
    session_kwargs = {}
    if service_options.use_grpc_device:
        session_grpc_address = service_options.grpc_device_address

        if not session_grpc_address:
            session_grpc_channel = measurement_service.get_channel(
                provided_interface=nifgen.GRPC_SERVICE_INTERFACE_NAME,
                service_class=srv_class,
            )
        else:
            session_grpc_channel = measurement_service.channel_pool.get_channel(
                target=session_grpc_address
            )
        # Assumption: the pin map specifies one NI-FGEN session per instrument. If the pin map
        # specified an NI-FGEN session per channel, the session name would need to include the
        # channel name(s).
        session_kwargs["grpc_options"] = nifgen.GrpcSessionOptions(
            session_grpc_channel,
            session_name=session_info.session_name,
            initialization_behavior = nifgen.SessionInitializationBehavior.AUTO,
        )

    return nifgen.Session(session_info.resource_name, session_info.channel_list, **session_kwargs)
