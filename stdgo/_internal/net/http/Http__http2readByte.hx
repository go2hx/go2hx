package stdgo._internal.net.http;
function _http2readByte(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.GoUInt8; var _2 : stdgo.Error; } {
        var _remain = (null : stdgo.Slice<stdgo.GoUInt8>), _b = (0 : stdgo.GoUInt8), _err = (null : stdgo.Error);
        if ((_p.length) == ((0 : stdgo.GoInt))) {
            return { _0 : _remain = (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _b = (0 : stdgo.GoUInt8), _2 : _err = stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF };
        };
        return { _0 : _remain = (_p.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _1 : _b = _p[(0 : stdgo.GoInt)], _2 : _err = (null : stdgo.Error) };
    }
