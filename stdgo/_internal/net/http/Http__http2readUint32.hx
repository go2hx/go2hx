package stdgo._internal.net.http;
function _http2readUint32(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.GoUInt32; var _2 : stdgo.Error; } {
        var _remain = (null : stdgo.Slice<stdgo.GoUInt8>), _v = (0 : stdgo.GoUInt32), _err = (null : stdgo.Error);
        if (((_p.length) < (4 : stdgo.GoInt) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.GoUInt32; var _2 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (0u32 : stdgo.GoUInt32), _2 : stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF };
                _remain = __tmp__._0;
                _v = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.GoUInt32; var _2 : stdgo.Error; } = { _0 : (_p.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.uint32((_p.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _2 : (null : stdgo.Error) };
            _remain = __tmp__._0;
            _v = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
