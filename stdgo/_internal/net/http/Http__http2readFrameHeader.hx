package stdgo._internal.net.http;
function _http2readFrameHeader(_buf:stdgo.Slice<stdgo.GoUInt8>, _r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_r, (_buf.__slice__(0, (9 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __143:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (new stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader() : stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader), _1 : _err };
        };
        return { _0 : ({ length_ : (((((_buf[(0 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | ((_buf[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | (_buf[(2 : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32)), type : (_buf[(3 : stdgo.GoInt)] : stdgo._internal.net.http.Http_T_http2FrameType.T_http2FrameType), flags : (_buf[(4 : stdgo.GoInt)] : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags), streamID : (stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.uint32((_buf.__slice__((5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) & (2147483647u32 : stdgo.GoUInt32) : stdgo.GoUInt32), _valid : true } : stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader), _1 : (null : stdgo.Error) };
    }
