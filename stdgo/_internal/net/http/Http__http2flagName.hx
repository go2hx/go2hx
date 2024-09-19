package stdgo._internal.net.http;
var _http2flagName : stdgo.GoMap<stdgo._internal.net.http.Http_T_http2FrameType.T_http2FrameType, stdgo.GoMap<stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags, stdgo.GoString>> = ({
        final x = new stdgo.GoMap.GoIntMap<stdgo.GoMap<stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags, stdgo.GoString>>();
        x.__defaultValue__ = () -> (null : stdgo.GoMap<stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags, stdgo.GoString>);
        x.set((0 : stdgo._internal.net.http.Http_T_http2FrameType.T_http2FrameType), ({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            x.set((1 : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags), ("END_STREAM" : stdgo.GoString));
x.set((8 : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags), ("PADDED" : stdgo.GoString));
            x;
        } : stdgo.GoMap<stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags, stdgo.GoString>));
x.set((1 : stdgo._internal.net.http.Http_T_http2FrameType.T_http2FrameType), ({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            x.set((1 : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags), ("END_STREAM" : stdgo.GoString));
x.set((4 : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags), ("END_HEADERS" : stdgo.GoString));
x.set((8 : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags), ("PADDED" : stdgo.GoString));
x.set((32 : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags), ("PRIORITY" : stdgo.GoString));
            x;
        } : stdgo.GoMap<stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags, stdgo.GoString>));
x.set((4 : stdgo._internal.net.http.Http_T_http2FrameType.T_http2FrameType), ({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            x.set((1 : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags), ("ACK" : stdgo.GoString));
            x;
        } : stdgo.GoMap<stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags, stdgo.GoString>));
x.set((6 : stdgo._internal.net.http.Http_T_http2FrameType.T_http2FrameType), ({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            x.set((1 : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags), ("ACK" : stdgo.GoString));
            x;
        } : stdgo.GoMap<stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags, stdgo.GoString>));
x.set((9 : stdgo._internal.net.http.Http_T_http2FrameType.T_http2FrameType), ({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            x.set((4 : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags), ("END_HEADERS" : stdgo.GoString));
            x;
        } : stdgo.GoMap<stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags, stdgo.GoString>));
x.set((5 : stdgo._internal.net.http.Http_T_http2FrameType.T_http2FrameType), ({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            x.set((4 : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags), ("END_HEADERS" : stdgo.GoString));
x.set((8 : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags), ("PADDED" : stdgo.GoString));
            x;
        } : stdgo.GoMap<stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags, stdgo.GoString>));
        x;
    } : stdgo.GoMap<stdgo._internal.net.http.Http_T_http2FrameType.T_http2FrameType, stdgo.GoMap<stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags, stdgo.GoString>>);
