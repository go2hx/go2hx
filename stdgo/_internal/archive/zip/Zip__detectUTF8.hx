package stdgo._internal.archive.zip;
function _detectUTF8(_s:stdgo.GoString):{ var _0 : Bool; var _1 : Bool; } {
        var _valid = false, _require = false;
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString((_s.__slice__(_i) : stdgo.GoString)?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
                _i = (_i + (_size) : stdgo.GoInt);
                if ((((_r < (32 : stdgo.GoInt32) : Bool) || (_r > (125 : stdgo.GoInt32) : Bool) : Bool) || (_r == (92 : stdgo.GoInt32)) : Bool)) {
                    if ((!stdgo._internal.unicode.utf8.Utf8_validRune.validRune(_r) || (((_r == (65533 : stdgo.GoInt32)) && (_size == (1 : stdgo.GoInt)) : Bool)) : Bool)) {
                        return { _0 : _valid = false, _1 : _require = false };
                    };
                    _require = true;
                };
            };
        };
        return { _0 : _valid = true, _1 : _require };
    }
