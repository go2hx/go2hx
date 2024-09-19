package stdgo._internal.mime.quotedprintable;
function _readHexByte(_v:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } {
        var _b = (0 : stdgo.GoUInt8), _err = (null : stdgo.Error);
        if (((_v.length) < (2 : stdgo.GoInt) : Bool)) {
            return { _0 : (0 : stdgo.GoUInt8), _1 : stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF };
        };
        var __0:stdgo.GoUInt8 = (0 : stdgo.GoUInt8), __1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
var _lb = __1, _hb = __0;
        {
            {
                var __tmp__ = stdgo._internal.mime.quotedprintable.Quotedprintable__fromHex._fromHex(_v[(0 : stdgo.GoInt)]);
                _hb = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : (0 : stdgo.GoUInt8), _1 : _err };
            };
        };
        {
            {
                var __tmp__ = stdgo._internal.mime.quotedprintable.Quotedprintable__fromHex._fromHex(_v[(1 : stdgo.GoInt)]);
                _lb = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : (0 : stdgo.GoUInt8), _1 : _err };
            };
        };
        return { _0 : ((_hb << (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) | _lb : stdgo.GoUInt8), _1 : (null : stdgo.Error) };
    }
