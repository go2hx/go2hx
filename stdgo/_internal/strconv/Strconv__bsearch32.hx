package stdgo._internal.strconv;
function _bsearch32(_a:stdgo.Slice<stdgo.GoUInt32>, _x:stdgo.GoUInt32):stdgo.GoInt {
        var __0 = (0 : stdgo.GoInt), __1 = (_a.length : stdgo.GoInt);
var _j = __1, _i = __0;
        //"file:///home/runner/.go/go1.21.3/src/strconv/quote.go#L520"
        while ((_i < _j : Bool)) {
            var _h = (_i + (((_j - _i : stdgo.GoInt)) >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/strconv/quote.go#L522"
            if ((_a[(_h : stdgo.GoInt)] < _x : Bool)) {
                _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _j = _h;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/quote.go#L528"
        return _i;
    }
