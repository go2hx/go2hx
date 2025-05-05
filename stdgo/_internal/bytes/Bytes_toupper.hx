package stdgo._internal.bytes;
function toUpper(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        var __0 = (true : Bool), __1 = (false : Bool);
var _hasLower = __1, _isASCII = __0;
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L652"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var _c = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L654"
                if ((_c >= (128 : stdgo.GoUInt8) : Bool)) {
                    _isASCII = false;
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L656"
                    break;
                };
_hasLower = (_hasLower || ((((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool);
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L661"
        if (_isASCII) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L662"
            if (!_hasLower) {
                //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L664"
                return (((stdgo.Go.str() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_s : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
            };
            var _b = stdgo._internal.internal.bytealg.Bytealg_makenozero.makeNoZero((_s.length));
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L667"
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (_s.length) : Bool)) {
                    var _c = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L669"
                    if ((((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _c = (_c - ((32 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                    };
_b[(_i : stdgo.GoInt)] = _c;
                    _i++;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L674"
            return _b;
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L676"
        return stdgo._internal.bytes.Bytes_map_.map_(stdgo._internal.unicode.Unicode_toupper.toUpper, _s);
    }
