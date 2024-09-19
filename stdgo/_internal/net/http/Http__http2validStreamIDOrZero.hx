package stdgo._internal.net.http;
function _http2validStreamIDOrZero(_streamID:stdgo.GoUInt32):Bool {
        return (_streamID & (-2147483648u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32));
    }
