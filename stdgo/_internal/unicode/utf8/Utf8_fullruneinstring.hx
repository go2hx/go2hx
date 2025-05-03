package stdgo._internal.unicode.utf8;
function fullRuneInString(_s:stdgo.GoString):Bool {
        var _n = (_s.length : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L126"
        if (_n == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L127"
            return false;
        };
        var _x = (stdgo._internal.unicode.utf8.Utf8__first._first[(_s[(0 : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L130"
        if ((_n >= ((_x & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L131"
            return true;
        };
        var _accept = (stdgo._internal.unicode.utf8.Utf8__acceptranges._acceptRanges[((_x >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)] : stdgo._internal.unicode.utf8.Utf8_t_acceptrange.T_acceptRange);
        //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L135"
        if (((_n > (1 : stdgo.GoInt) : Bool) && (((_s[(1 : stdgo.GoInt)] < _accept._lo : Bool) || (_accept._hi < _s[(1 : stdgo.GoInt)] : Bool) : Bool)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L136"
            return true;
        } else if (((_n > (2 : stdgo.GoInt) : Bool) && (((_s[(2 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool) || ((191 : stdgo.GoUInt8) < _s[(2 : stdgo.GoInt)] : Bool) : Bool)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L138"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/unicode/utf8/utf8.go#L140"
        return false;
    }
