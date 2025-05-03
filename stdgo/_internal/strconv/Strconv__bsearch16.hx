package stdgo._internal.strconv;
function _bsearch16(_a:stdgo.Slice<stdgo.GoUInt16>, _x:stdgo.GoUInt16):stdgo.GoInt {
        var __0 = (0 : stdgo.GoInt), __1 = (_a.length : stdgo.GoInt);
var _j = __1, _i = __0;
        //"file:///home/runner/.go/go1.21.3/src/strconv/quote.go#L505"
        while ((_i < _j : Bool)) {
            var _h = (_i + (((_j - _i : stdgo.GoInt)) >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/strconv/quote.go#L507"
            if ((_a[(_h : stdgo.GoInt)] < _x : Bool)) {
                _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _j = _h;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/quote.go#L513"
        return _i;
    }
