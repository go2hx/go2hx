package stdgo._internal.mime;
function _readHexByte(_a:stdgo.GoUInt8, _b:stdgo.GoUInt8):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } {
        var __0:stdgo.GoUInt8 = (0 : stdgo.GoUInt8), __1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
var _lb = __1, _hb = __0;
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            {
                var __tmp__ = stdgo._internal.mime.Mime__fromHex._fromHex(_a);
                _hb = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : (0 : stdgo.GoUInt8), _1 : _err };
            };
        };
        {
            {
                var __tmp__ = stdgo._internal.mime.Mime__fromHex._fromHex(_b);
                _lb = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : (0 : stdgo.GoUInt8), _1 : _err };
            };
        };
        return { _0 : ((_hb << (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) | _lb : stdgo.GoUInt8), _1 : (null : stdgo.Error) };
    }