package stdgo._internal.strings;
function toUpper(_s:stdgo.GoString):stdgo.GoString {
        var __0 = (true : Bool), __1 = (false : Bool);
var _hasLower = __1, _isASCII = __0;
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_s.length) : Bool), _i++, {
                var _c = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                if ((_c >= (128 : stdgo.GoUInt8) : Bool)) {
                    _isASCII = false;
                    break;
                };
                _hasLower = (_hasLower || ((((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool);
            });
        };
        if (_isASCII) {
            if (!_hasLower) {
                return _s?.__copy__();
            };
            var __0:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder), __1:stdgo.GoInt = (0 : stdgo.GoInt);
var _pos = __1, _b = __0;
            _b.grow((_s.length));
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (_s.length) : Bool), _i++, {
                    var _c = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                    if ((((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _c = (_c - ((32 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                        if ((_pos < _i : Bool)) {
                            _b.writeString((_s.__slice__(_pos, _i) : stdgo.GoString)?.__copy__());
                        };
                        _b.writeByte(_c);
                        _pos = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                    };
                });
            };
            if ((_pos < (_s.length) : Bool)) {
                _b.writeString((_s.__slice__(_pos) : stdgo.GoString)?.__copy__());
            };
            return (_b.string() : stdgo.GoString)?.__copy__();
        };
        return stdgo._internal.strings.Strings_map_.map_(stdgo._internal.unicode.Unicode_toUpper.toUpper, _s?.__copy__())?.__copy__();
    }