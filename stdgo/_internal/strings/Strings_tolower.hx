package stdgo._internal.strings;
function toLower(_s:stdgo.GoString):stdgo.GoString {
        var __0 = (true : Bool), __1 = (false : Bool);
var _hasUpper = __1, _isASCII = __0;
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L643"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var _c = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L645"
                if ((_c >= (128 : stdgo.GoUInt8) : Bool)) {
                    _isASCII = false;
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L647"
                    break;
                };
_hasUpper = (_hasUpper || ((((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool);
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L652"
        if (_isASCII) {
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L653"
            if (!_hasUpper) {
                //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L654"
                return _s?.__copy__();
            };
            var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder), _pos:stdgo.GoInt = (0 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L660"
            _b.grow((_s.length));
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L661"
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (_s.length) : Bool)) {
                    var _c = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L663"
                    if ((((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _c = (_c + ((32 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L665"
                        if ((_pos < _i : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L666"
                            _b.writeString((_s.__slice__(_pos, _i) : stdgo.GoString).__copy__());
                        };
                        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L668"
                        _b.writeByte(_c);
                        _pos = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                    };
                    _i++;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L672"
            if ((_pos < (_s.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L673"
                _b.writeString((_s.__slice__(_pos) : stdgo.GoString)?.__copy__());
            };
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L675"
            return (_b.string() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L677"
        return stdgo._internal.strings.Strings_map_.map_(stdgo._internal.unicode.Unicode_tolower.toLower, _s?.__copy__())?.__copy__();
    }
