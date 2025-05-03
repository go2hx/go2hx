package stdgo._internal.strconv;
function isPrint(_r:stdgo.GoInt32):Bool {
        //"file:///home/runner/.go/go1.21.3/src/strconv/quote.go#L542"
        if ((_r <= (255 : stdgo.GoInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/quote.go#L543"
            if ((((32 : stdgo.GoInt32) <= _r : Bool) && (_r <= (126 : stdgo.GoInt32) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/strconv/quote.go#L545"
                return true;
            };
            //"file:///home/runner/.go/go1.21.3/src/strconv/quote.go#L547"
            if ((((161 : stdgo.GoInt32) <= _r : Bool) && (_r <= (255 : stdgo.GoInt32) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/strconv/quote.go#L549"
                return _r != ((173 : stdgo.GoInt32));
            };
            //"file:///home/runner/.go/go1.21.3/src/strconv/quote.go#L551"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/quote.go#L560"
        if ((((0 : stdgo.GoInt32) <= _r : Bool) && (_r < (65536 : stdgo.GoInt32) : Bool) : Bool)) {
            var __0 = (_r : stdgo.GoUInt16), __1 = stdgo._internal.strconv.Strconv__isprint16._isPrint16, __2 = stdgo._internal.strconv.Strconv__isnotprint16._isNotPrint16;
var _isNotPrint = __2, _isPrint = __1, _rr = __0;
            var _i = (stdgo._internal.strconv.Strconv__bsearch16._bsearch16(_isPrint, _rr) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/strconv/quote.go#L563"
            if ((((_i >= (_isPrint.length) : Bool) || (_rr < _isPrint[(_i & (((1 : stdgo.GoInt) ^ (-1i64 : stdgo.GoInt32) : stdgo.GoInt)) : stdgo.GoInt)] : Bool) : Bool) || (_isPrint[(_i | (1 : stdgo.GoInt) : stdgo.GoInt)] < _rr : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/strconv/quote.go#L564"
                return false;
            };
            var _j = (stdgo._internal.strconv.Strconv__bsearch16._bsearch16(_isNotPrint, _rr) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/strconv/quote.go#L567"
            return ((_j >= (_isNotPrint.length) : Bool) || (_isNotPrint[(_j : stdgo.GoInt)] != _rr) : Bool);
        };
        var __0 = (_r : stdgo.GoUInt32), __1 = stdgo._internal.strconv.Strconv__isprint32._isPrint32, __2 = stdgo._internal.strconv.Strconv__isnotprint32._isNotPrint32;
var _isNotPrint = __2, _isPrint = __1, _rr = __0;
        var _i = (stdgo._internal.strconv.Strconv__bsearch32._bsearch32(_isPrint, _rr) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/strconv/quote.go#L572"
        if ((((_i >= (_isPrint.length) : Bool) || (_rr < _isPrint[(_i & (((1 : stdgo.GoInt) ^ (-1i64 : stdgo.GoInt32) : stdgo.GoInt)) : stdgo.GoInt)] : Bool) : Bool) || (_isPrint[(_i | (1 : stdgo.GoInt) : stdgo.GoInt)] < _rr : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/quote.go#L573"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/quote.go#L575"
        if ((_r >= (131072 : stdgo.GoInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/quote.go#L576"
            return true;
        };
        _r = (_r - ((65536 : stdgo.GoInt32)) : stdgo.GoInt32);
        var _j = (stdgo._internal.strconv.Strconv__bsearch16._bsearch16(_isNotPrint, (_r : stdgo.GoUInt16)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/strconv/quote.go#L580"
        return ((_j >= (_isNotPrint.length) : Bool) || (_isNotPrint[(_j : stdgo.GoInt)] != (_r : stdgo.GoUInt16)) : Bool);
    }
