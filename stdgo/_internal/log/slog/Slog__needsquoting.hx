package stdgo._internal.log.slog;
function _needsQuoting(_s:stdgo.GoString):Bool {
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            return true;
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var _b = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                if ((_b < (128 : stdgo.GoUInt8) : Bool)) {
                    if (((_b != (92 : stdgo.GoUInt8)) && (((_b == ((32 : stdgo.GoUInt8)) || _b == ((61 : stdgo.GoUInt8)) : Bool) || !stdgo._internal.log.slog.Slog__safeset._safeSet[(_b : stdgo.GoInt)] : Bool)) : Bool)) {
                        return true;
                    };
                    _i++;
                    continue;
                };
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString((_s.__slice__(_i) : stdgo.GoString)?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
                if (((_r == ((65533 : stdgo.GoInt32)) || stdgo._internal.unicode.Unicode_isspace.isSpace(_r) : Bool) || !stdgo._internal.unicode.Unicode_isprint.isPrint(_r) : Bool)) {
                    return true;
                };
                _i = (_i + (_size) : stdgo.GoInt);
            };
        };
        return false;
    }
