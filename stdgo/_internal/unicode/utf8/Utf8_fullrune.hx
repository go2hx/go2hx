package stdgo._internal.unicode.utf8;
function fullRune(_p:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _n = (_p.length : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L106"
        if (_n == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L107"
            return false;
        };
        var _x = (stdgo._internal.unicode.utf8.Utf8__first._first[(_p[(0 : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L110"
        if ((_n >= ((_x & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L111"
            return true;
        };
        var _accept = (stdgo._internal.unicode.utf8.Utf8__acceptranges._acceptRanges[((_x >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)] : stdgo._internal.unicode.utf8.Utf8_t_acceptrange.T_acceptRange);
        //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L115"
        if (((_n > (1 : stdgo.GoInt) : Bool) && (((_p[(1 : stdgo.GoInt)] < _accept._lo : Bool) || (_accept._hi < _p[(1 : stdgo.GoInt)] : Bool) : Bool)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L116"
            return true;
        } else if (((_n > (2 : stdgo.GoInt) : Bool) && (((_p[(2 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool) || ((191 : stdgo.GoUInt8) < _p[(2 : stdgo.GoInt)] : Bool) : Bool)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L118"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L120"
        return false;
    }
