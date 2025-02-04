package stdgo._internal.unicode.utf8;
function fullRuneInString(_s:stdgo.GoString):Bool {
        var _n = (_s.length : stdgo.GoInt);
        if (_n == ((0 : stdgo.GoInt))) {
            return false;
        };
        var _x = (stdgo._internal.unicode.utf8.Utf8__first._first[(_s[(0 : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.GoUInt8);
        if ((_n >= ((_x & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt) : Bool)) {
            return true;
        };
        var _accept = (stdgo._internal.unicode.utf8.Utf8__acceptranges._acceptRanges[((_x >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)] : stdgo._internal.unicode.utf8.Utf8_t_acceptrange.T_acceptRange);
        if (((_n > (1 : stdgo.GoInt) : Bool) && (((_s[(1 : stdgo.GoInt)] < _accept._lo : Bool) || (_accept._hi < _s[(1 : stdgo.GoInt)] : Bool) : Bool)) : Bool)) {
            return true;
        } else if (((_n > (2 : stdgo.GoInt) : Bool) && (((_s[(2 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool) || ((191 : stdgo.GoUInt8) < _s[(2 : stdgo.GoInt)] : Bool) : Bool)) : Bool)) {
            return true;
        };
        return false;
    }
