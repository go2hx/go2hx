package stdgo._internal.strings;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function toLower(_s:stdgo.GoString):stdgo.GoString {
        var __0 = (true : Bool), __1 = (false : Bool);
var _hasUpper = __1, _isASCII = __0;
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var _c = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
if ((_c >= (128 : stdgo.GoUInt8) : Bool)) {
                    _isASCII = false;
                    break;
                };
_hasUpper = (_hasUpper || ((((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool);
                _i++;
            };
        };
        if (_isASCII) {
            if (!_hasUpper) {
                return _s?.__copy__();
            };
            var __0:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder), __1:stdgo.GoInt = (0 : stdgo.GoInt);
var _pos = __1, _b = __0;
            @:check2 _b.grow((_s.length));
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (_s.length) : Bool)) {
                    var _c = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
if ((((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _c = (_c + ((32 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                        if ((_pos < _i : Bool)) {
                            @:check2 _b.writeString((_s.__slice__(_pos, _i) : stdgo.GoString).__copy__());
                        };
                        @:check2 _b.writeByte(_c);
                        _pos = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                    };
                    _i++;
                };
            };
            if ((_pos < (_s.length) : Bool)) {
                @:check2 _b.writeString((_s.__slice__(_pos) : stdgo.GoString)?.__copy__());
            };
            return (@:check2 _b.string() : stdgo.GoString)?.__copy__();
        };
        return stdgo._internal.strings.Strings_map_.map_(stdgo._internal.unicode.Unicode_toLower.toLower, _s?.__copy__())?.__copy__();
    }
