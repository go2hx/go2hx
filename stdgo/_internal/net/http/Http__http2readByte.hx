package stdgo._internal.net.http;
function _http2readByte(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.GoUInt8; var _2 : stdgo.Error; } {
        var _remain = (null : stdgo.Slice<stdgo.GoUInt8>), _b = (0 : stdgo.GoUInt8), _err = (null : stdgo.Error);
        if ((_p.length) == ((0 : stdgo.GoInt))) {
            return {
                final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.GoUInt8; var _2 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (0 : stdgo.GoUInt8), _2 : stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF };
                _remain = __tmp__._0;
                _b = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.GoUInt8; var _2 : stdgo.Error; } = { _0 : (_p.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _1 : _p[(0 : stdgo.GoInt)], _2 : (null : stdgo.Error) };
            _remain = __tmp__._0;
            _b = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
