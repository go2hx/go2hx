package stdgo._internal.unicode.utf8;
private var __go2hxdoc__package : Bool;
final runeError : stdgo.GoInt32 = (65533 : stdgo.GoInt32);
final runeSelf : stdgo.GoUInt64 = (128i64 : stdgo.GoUInt64);
final maxRune : stdgo.GoInt32 = (1114111 : stdgo.GoInt32);
final utfmax : stdgo.GoUInt64 = (4i64 : stdgo.GoUInt64);
final _surrogateMin : stdgo.GoUInt64 = (55296i64 : stdgo.GoUInt64);
final _surrogateMax : stdgo.GoUInt64 = (57343i64 : stdgo.GoUInt64);
final _t1 : stdgo.GoUInt64 = (0i64 : stdgo.GoUInt64);
final _tx : stdgo.GoUInt64 = (128i64 : stdgo.GoUInt64);
final _t2 : stdgo.GoUInt64 = (192i64 : stdgo.GoUInt64);
final _t3 : stdgo.GoUInt64 = (224i64 : stdgo.GoUInt64);
final _t4 : stdgo.GoUInt64 = (240i64 : stdgo.GoUInt64);
final _t5 : stdgo.GoUInt64 = (248i64 : stdgo.GoUInt64);
final _maskx : stdgo.GoUInt64 = (63i64 : stdgo.GoUInt64);
final _mask2 : stdgo.GoUInt64 = (31i64 : stdgo.GoUInt64);
final _mask3 : stdgo.GoUInt64 = (15i64 : stdgo.GoUInt64);
final _mask4 : stdgo.GoUInt64 = (7i64 : stdgo.GoUInt64);
final _rune1Max : stdgo.GoUInt64 = (127i64 : stdgo.GoUInt64);
final _rune2Max : stdgo.GoUInt64 = (2047i64 : stdgo.GoUInt64);
final _rune3Max : stdgo.GoUInt64 = (65535i64 : stdgo.GoUInt64);
final _locb : stdgo.GoUInt64 = (128i64 : stdgo.GoUInt64);
final _hicb : stdgo.GoUInt64 = (191i64 : stdgo.GoUInt64);
final _xx : stdgo.GoUInt64 = (241i64 : stdgo.GoUInt64);
final _as : stdgo.GoUInt64 = (240i64 : stdgo.GoUInt64);
final _s1 : stdgo.GoUInt64 = (2i64 : stdgo.GoUInt64);
final _s2 : stdgo.GoUInt64 = (19i64 : stdgo.GoUInt64);
final _s3 : stdgo.GoUInt64 = (3i64 : stdgo.GoUInt64);
final _s4 : stdgo.GoUInt64 = (35i64 : stdgo.GoUInt64);
final _s5 : stdgo.GoUInt64 = (52i64 : stdgo.GoUInt64);
final _s6 : stdgo.GoUInt64 = (4i64 : stdgo.GoUInt64);
final _s7 : stdgo.GoUInt64 = (68i64 : stdgo.GoUInt64);
var _first : stdgo.GoArray<stdgo.GoUInt8> = (new stdgo.GoArray<stdgo.GoUInt8>(256, 256, ...[
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(240 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(19 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(35 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(52 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(68 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8),
(241 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>);
var _acceptRanges : stdgo.GoArray<stdgo._internal.unicode.utf8.Utf8.T_acceptRange> = {
        var s:stdgo.GoArray<stdgo._internal.unicode.utf8.Utf8.T_acceptRange> = new stdgo.GoArray<stdgo._internal.unicode.utf8.Utf8.T_acceptRange>(16, 16, ...[for (i in 0 ... 16) ({} : stdgo._internal.unicode.utf8.Utf8.T_acceptRange)]);
        s[0] = (new stdgo._internal.unicode.utf8.Utf8.T_acceptRange((128 : stdgo.GoUInt8), (191 : stdgo.GoUInt8)) : stdgo._internal.unicode.utf8.Utf8.T_acceptRange);
        s[1] = (new stdgo._internal.unicode.utf8.Utf8.T_acceptRange((160 : stdgo.GoUInt8), (191 : stdgo.GoUInt8)) : stdgo._internal.unicode.utf8.Utf8.T_acceptRange);
        s[2] = (new stdgo._internal.unicode.utf8.Utf8.T_acceptRange((128 : stdgo.GoUInt8), (159 : stdgo.GoUInt8)) : stdgo._internal.unicode.utf8.Utf8.T_acceptRange);
        s[3] = (new stdgo._internal.unicode.utf8.Utf8.T_acceptRange((144 : stdgo.GoUInt8), (191 : stdgo.GoUInt8)) : stdgo._internal.unicode.utf8.Utf8.T_acceptRange);
        s[4] = (new stdgo._internal.unicode.utf8.Utf8.T_acceptRange((128 : stdgo.GoUInt8), (143 : stdgo.GoUInt8)) : stdgo._internal.unicode.utf8.Utf8.T_acceptRange);
        s;
    };
@:structInit @:private class T_acceptRange {
    public var _lo : stdgo.GoUInt8 = 0;
    public var _hi : stdgo.GoUInt8 = 0;
    public function new(?_lo:stdgo.GoUInt8, ?_hi:stdgo.GoUInt8) {
        if (_lo != null) this._lo = _lo;
        if (_hi != null) this._hi = _hi;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_acceptRange(_lo, _hi);
    }
}
function fullRune(_p:stdgo.Slice<stdgo.GoByte>):Bool {
        var _n = (_p.length : stdgo.GoInt);
        if (_n == ((0 : stdgo.GoInt))) {
            return false;
        };
        var _x = (_first[(_p[(0 : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.GoUInt8);
        if ((_n >= ((_x & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt) : Bool)) {
            return true;
        };
        var _accept = (_acceptRanges[((_x >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)] : stdgo._internal.unicode.utf8.Utf8.T_acceptRange);
        if (((_n > (1 : stdgo.GoInt) : Bool) && (((_p[(1 : stdgo.GoInt)] < _accept._lo : Bool) || (_accept._hi < _p[(1 : stdgo.GoInt)] : Bool) : Bool)) : Bool)) {
            return true;
        } else if (((_n > (2 : stdgo.GoInt) : Bool) && (((_p[(2 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool) || ((191 : stdgo.GoUInt8) < _p[(2 : stdgo.GoInt)] : Bool) : Bool)) : Bool)) {
            return true;
        };
        return false;
    }
function fullRuneInString(_s:stdgo.GoString):Bool {
        var _n = (_s.length : stdgo.GoInt);
        if (_n == ((0 : stdgo.GoInt))) {
            return false;
        };
        var _x = (_first[(_s[(0 : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.GoUInt8);
        if ((_n >= ((_x & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt) : Bool)) {
            return true;
        };
        var _accept = (_acceptRanges[((_x >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)] : stdgo._internal.unicode.utf8.Utf8.T_acceptRange);
        if (((_n > (1 : stdgo.GoInt) : Bool) && (((_s[(1 : stdgo.GoInt)] < _accept._lo : Bool) || (_accept._hi < _s[(1 : stdgo.GoInt)] : Bool) : Bool)) : Bool)) {
            return true;
        } else if (((_n > (2 : stdgo.GoInt) : Bool) && (((_s[(2 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool) || ((191 : stdgo.GoUInt8) < _s[(2 : stdgo.GoInt)] : Bool) : Bool)) : Bool)) {
            return true;
        };
        return false;
    }
function decodeRune(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoRune; var _1 : stdgo.GoInt; } {
        var _r = (0 : stdgo.GoInt32), _size = (0 : stdgo.GoInt);
        var _n = (_p.length : stdgo.GoInt);
        if ((_n < (1 : stdgo.GoInt) : Bool)) {
            return { _0 : (65533 : stdgo.GoInt32), _1 : (0 : stdgo.GoInt) };
        };
        var _p0 = (_p[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        var _x = (_first[(_p0 : stdgo.GoInt)] : stdgo.GoUInt8);
        if ((_x >= (240 : stdgo.GoUInt8) : Bool)) {
            var _mask = (((_x : stdgo.GoRune) << (31i64 : stdgo.GoUInt64) : stdgo.GoInt32) >> (31i64 : stdgo.GoUInt64) : stdgo.GoInt32);
            return { _0 : (((_p[(0 : stdgo.GoInt)] : stdgo.GoRune) & ((_mask ^ (-1i32 : stdgo.GoInt) : stdgo.GoInt32)) : stdgo.GoInt32) | ((65533 : stdgo.GoInt32) & _mask : stdgo.GoInt32) : stdgo.GoInt32), _1 : (1 : stdgo.GoInt) };
        };
        var _sz = ((_x & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
        var _accept = (_acceptRanges[((_x >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)] : stdgo._internal.unicode.utf8.Utf8.T_acceptRange);
        if ((_n < _sz : Bool)) {
            return { _0 : (65533 : stdgo.GoInt32), _1 : (1 : stdgo.GoInt) };
        };
        var _b1 = (_p[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
        if (((_b1 < _accept._lo : Bool) || (_accept._hi < _b1 : Bool) : Bool)) {
            return { _0 : (65533 : stdgo.GoInt32), _1 : (1 : stdgo.GoInt) };
        };
        if ((_sz <= (2 : stdgo.GoInt) : Bool)) {
            return { _0 : ((((_p0 & (31 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoRune) << (6i64 : stdgo.GoUInt64) : stdgo.GoInt32) | ((_b1 & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoRune) : stdgo.GoInt32), _1 : (2 : stdgo.GoInt) };
        };
        var _b2 = (_p[(2 : stdgo.GoInt)] : stdgo.GoUInt8);
        if (((_b2 < (128 : stdgo.GoUInt8) : Bool) || ((191 : stdgo.GoUInt8) < _b2 : Bool) : Bool)) {
            return { _0 : (65533 : stdgo.GoInt32), _1 : (1 : stdgo.GoInt) };
        };
        if ((_sz <= (3 : stdgo.GoInt) : Bool)) {
            return { _0 : (((((_p0 & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoRune) << (12i64 : stdgo.GoUInt64) : stdgo.GoInt32) | (((_b1 & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoRune) << (6i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoInt32) | ((_b2 & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoRune) : stdgo.GoInt32), _1 : (3 : stdgo.GoInt) };
        };
        var _b3 = (_p[(3 : stdgo.GoInt)] : stdgo.GoUInt8);
        if (((_b3 < (128 : stdgo.GoUInt8) : Bool) || ((191 : stdgo.GoUInt8) < _b3 : Bool) : Bool)) {
            return { _0 : (65533 : stdgo.GoInt32), _1 : (1 : stdgo.GoInt) };
        };
        return { _0 : ((((((_p0 & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoRune) << (18i64 : stdgo.GoUInt64) : stdgo.GoInt32) | (((_b1 & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoRune) << (12i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoInt32) | (((_b2 & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoRune) << (6i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoInt32) | ((_b3 & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoRune) : stdgo.GoInt32), _1 : (4 : stdgo.GoInt) };
    }
function decodeRuneInString(_s:stdgo.GoString):{ var _0 : stdgo.GoRune; var _1 : stdgo.GoInt; } {
        var _r = (0 : stdgo.GoInt32), _size = (0 : stdgo.GoInt);
        var _n = (_s.length : stdgo.GoInt);
        if ((_n < (1 : stdgo.GoInt) : Bool)) {
            return { _0 : (65533 : stdgo.GoInt32), _1 : (0 : stdgo.GoInt) };
        };
        var _s0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        var _x = (_first[(_s0 : stdgo.GoInt)] : stdgo.GoUInt8);
        if ((_x >= (240 : stdgo.GoUInt8) : Bool)) {
            var _mask = (((_x : stdgo.GoRune) << (31i64 : stdgo.GoUInt64) : stdgo.GoInt32) >> (31i64 : stdgo.GoUInt64) : stdgo.GoInt32);
            return { _0 : (((_s[(0 : stdgo.GoInt)] : stdgo.GoRune) & ((_mask ^ (-1i32 : stdgo.GoInt) : stdgo.GoInt32)) : stdgo.GoInt32) | ((65533 : stdgo.GoInt32) & _mask : stdgo.GoInt32) : stdgo.GoInt32), _1 : (1 : stdgo.GoInt) };
        };
        var _sz = ((_x & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
        var _accept = (_acceptRanges[((_x >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)] : stdgo._internal.unicode.utf8.Utf8.T_acceptRange);
        if ((_n < _sz : Bool)) {
            return { _0 : (65533 : stdgo.GoInt32), _1 : (1 : stdgo.GoInt) };
        };
        var _s1 = (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
        if (((_s1 < _accept._lo : Bool) || (_accept._hi < _s1 : Bool) : Bool)) {
            return { _0 : (65533 : stdgo.GoInt32), _1 : (1 : stdgo.GoInt) };
        };
        if ((_sz <= (2 : stdgo.GoInt) : Bool)) {
            return { _0 : ((((_s0 & (31 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoRune) << (6i64 : stdgo.GoUInt64) : stdgo.GoInt32) | ((_s1 & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoRune) : stdgo.GoInt32), _1 : (2 : stdgo.GoInt) };
        };
        var _s2 = (_s[(2 : stdgo.GoInt)] : stdgo.GoUInt8);
        if (((_s2 < (128 : stdgo.GoUInt8) : Bool) || ((191 : stdgo.GoUInt8) < _s2 : Bool) : Bool)) {
            return { _0 : (65533 : stdgo.GoInt32), _1 : (1 : stdgo.GoInt) };
        };
        if ((_sz <= (3 : stdgo.GoInt) : Bool)) {
            return { _0 : (((((_s0 & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoRune) << (12i64 : stdgo.GoUInt64) : stdgo.GoInt32) | (((_s1 & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoRune) << (6i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoInt32) | ((_s2 & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoRune) : stdgo.GoInt32), _1 : (3 : stdgo.GoInt) };
        };
        var _s3 = (_s[(3 : stdgo.GoInt)] : stdgo.GoUInt8);
        if (((_s3 < (128 : stdgo.GoUInt8) : Bool) || ((191 : stdgo.GoUInt8) < _s3 : Bool) : Bool)) {
            return { _0 : (65533 : stdgo.GoInt32), _1 : (1 : stdgo.GoInt) };
        };
        return { _0 : ((((((_s0 & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoRune) << (18i64 : stdgo.GoUInt64) : stdgo.GoInt32) | (((_s1 & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoRune) << (12i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoInt32) | (((_s2 & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoRune) << (6i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoInt32) | ((_s3 & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoRune) : stdgo.GoInt32), _1 : (4 : stdgo.GoInt) };
    }
function decodeLastRune(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoRune; var _1 : stdgo.GoInt; } {
        var _r = (0 : stdgo.GoInt32), _size = (0 : stdgo.GoInt);
        var _end = (_p.length : stdgo.GoInt);
        if (_end == ((0 : stdgo.GoInt))) {
            return { _0 : (65533 : stdgo.GoInt32), _1 : (0 : stdgo.GoInt) };
        };
        var _start = (_end - (1 : stdgo.GoInt) : stdgo.GoInt);
        _r = (_p[(_start : stdgo.GoInt)] : stdgo.GoRune);
        if ((_r < (128 : stdgo.GoInt32) : Bool)) {
            return { _0 : _r, _1 : (1 : stdgo.GoInt) };
        };
        var _lim = (_end - (4 : stdgo.GoInt) : stdgo.GoInt);
        if ((_lim < (0 : stdgo.GoInt) : Bool)) {
            _lim = (0 : stdgo.GoInt);
        };
        {
            _start--;
            stdgo.Go.cfor((_start >= _lim : Bool), _start--, {
                if (runeStart(_p[(_start : stdgo.GoInt)])) {
                    break;
                };
            });
        };
        if ((_start < (0 : stdgo.GoInt) : Bool)) {
            _start = (0 : stdgo.GoInt);
        };
        {
            var __tmp__ = decodeRune((_p.__slice__(_start, _end) : stdgo.Slice<stdgo.GoUInt8>));
            _r = __tmp__._0;
            _size = __tmp__._1;
        };
        if ((_start + _size : stdgo.GoInt) != (_end)) {
            return { _0 : (65533 : stdgo.GoInt32), _1 : (1 : stdgo.GoInt) };
        };
        return { _0 : _r, _1 : _size };
    }
function decodeLastRuneInString(_s:stdgo.GoString):{ var _0 : stdgo.GoRune; var _1 : stdgo.GoInt; } {
        var _r = (0 : stdgo.GoInt32), _size = (0 : stdgo.GoInt);
        var _end = (_s.length : stdgo.GoInt);
        if (_end == ((0 : stdgo.GoInt))) {
            return { _0 : (65533 : stdgo.GoInt32), _1 : (0 : stdgo.GoInt) };
        };
        var _start = (_end - (1 : stdgo.GoInt) : stdgo.GoInt);
        _r = (_s[(_start : stdgo.GoInt)] : stdgo.GoRune);
        if ((_r < (128 : stdgo.GoInt32) : Bool)) {
            return { _0 : _r, _1 : (1 : stdgo.GoInt) };
        };
        var _lim = (_end - (4 : stdgo.GoInt) : stdgo.GoInt);
        if ((_lim < (0 : stdgo.GoInt) : Bool)) {
            _lim = (0 : stdgo.GoInt);
        };
        {
            _start--;
            stdgo.Go.cfor((_start >= _lim : Bool), _start--, {
                if (runeStart(_s[(_start : stdgo.GoInt)])) {
                    break;
                };
            });
        };
        if ((_start < (0 : stdgo.GoInt) : Bool)) {
            _start = (0 : stdgo.GoInt);
        };
        {
            var __tmp__ = decodeRuneInString((_s.__slice__(_start, _end) : stdgo.GoString)?.__copy__());
            _r = __tmp__._0;
            _size = __tmp__._1;
        };
        if ((_start + _size : stdgo.GoInt) != (_end)) {
            return { _0 : (65533 : stdgo.GoInt32), _1 : (1 : stdgo.GoInt) };
        };
        return { _0 : _r, _1 : _size };
    }
function runeLen(_r:stdgo.GoRune):stdgo.GoInt {
        if ((_r < (0 : stdgo.GoInt32) : Bool)) {
            return (-1 : stdgo.GoInt);
        } else if ((_r <= (127 : stdgo.GoInt32) : Bool)) {
            return (1 : stdgo.GoInt);
        } else if ((_r <= (2047 : stdgo.GoInt32) : Bool)) {
            return (2 : stdgo.GoInt);
        } else if ((((55296 : stdgo.GoInt32) <= _r : Bool) && (_r <= (57343 : stdgo.GoInt32) : Bool) : Bool)) {
            return (-1 : stdgo.GoInt);
        } else if ((_r <= (65535 : stdgo.GoInt32) : Bool)) {
            return (3 : stdgo.GoInt);
        } else if ((_r <= (1114111 : stdgo.GoInt32) : Bool)) {
            return (4 : stdgo.GoInt);
        };
        return (-1 : stdgo.GoInt);
    }
function encodeRune(_p:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):stdgo.GoInt {
        {
            var _i = (_r : stdgo.GoUInt32);
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (_i <= (127u32 : stdgo.GoUInt32) : Bool))) {
                        _p[(0 : stdgo.GoInt)] = (_r : stdgo.GoByte);
                        return (1 : stdgo.GoInt);
                        break;
                        break;
                    } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (_i <= (2047u32 : stdgo.GoUInt32) : Bool))) {
                        var __blank__ = _p[(1 : stdgo.GoInt)];
                        _p[(0 : stdgo.GoInt)] = ((192 : stdgo.GoUInt8) | ((_r >> (6i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoByte) : stdgo.GoUInt8);
                        _p[(1 : stdgo.GoInt)] = ((128 : stdgo.GoUInt8) | ((_r : stdgo.GoByte) & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
                        return (2 : stdgo.GoInt);
                        break;
                        break;
                    } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && ((_i > (1114111u32 : stdgo.GoUInt32) : Bool) || (((55296u32 : stdgo.GoUInt32) <= _i : Bool) && (_i <= (57343u32 : stdgo.GoUInt32) : Bool) : Bool)))) {
                        _r = (65533 : stdgo.GoInt32);
                        @:fallthrough {
                            __switchIndex__ = 3;
                            __run__ = true;
                            continue;
                        };
                        break;
                    } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && (_i <= (65535u32 : stdgo.GoUInt32) : Bool))) {
                        var __blank__ = _p[(2 : stdgo.GoInt)];
                        _p[(0 : stdgo.GoInt)] = ((224 : stdgo.GoUInt8) | ((_r >> (12i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoByte) : stdgo.GoUInt8);
                        _p[(1 : stdgo.GoInt)] = ((128 : stdgo.GoUInt8) | (((_r >> (6i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoByte) & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
                        _p[(2 : stdgo.GoInt)] = ((128 : stdgo.GoUInt8) | ((_r : stdgo.GoByte) & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
                        return (3 : stdgo.GoInt);
                        break;
                        break;
                    } else {
                        var __blank__ = _p[(3 : stdgo.GoInt)];
                        _p[(0 : stdgo.GoInt)] = ((240 : stdgo.GoUInt8) | ((_r >> (18i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoByte) : stdgo.GoUInt8);
                        _p[(1 : stdgo.GoInt)] = ((128 : stdgo.GoUInt8) | (((_r >> (12i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoByte) & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
                        _p[(2 : stdgo.GoInt)] = ((128 : stdgo.GoUInt8) | (((_r >> (6i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoByte) & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
                        _p[(3 : stdgo.GoInt)] = ((128 : stdgo.GoUInt8) | ((_r : stdgo.GoByte) & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
                        return (4 : stdgo.GoInt);
                        break;
                    };
                    break;
                };
                return (0 : stdgo.GoInt);
            };
        };
    }
function appendRune(_p:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):stdgo.Slice<stdgo.GoByte> {
        if (((_r : stdgo.GoUInt32) <= (127u32 : stdgo.GoUInt32) : Bool)) {
            return (_p.__append__((_r : stdgo.GoByte)));
        };
        return _appendRuneNonASCII(_p, _r);
    }
function _appendRuneNonASCII(_p:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):stdgo.Slice<stdgo.GoByte> {
        {
            var _i = (_r : stdgo.GoUInt32);
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (_i <= (2047u32 : stdgo.GoUInt32) : Bool))) {
                        return (_p.__append__(((192 : stdgo.GoUInt8) | ((_r >> (6i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoByte) : stdgo.GoUInt8), ((128 : stdgo.GoUInt8) | ((_r : stdgo.GoByte) & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8)));
                        break;
                        break;
                    } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && ((_i > (1114111u32 : stdgo.GoUInt32) : Bool) || (((55296u32 : stdgo.GoUInt32) <= _i : Bool) && (_i <= (57343u32 : stdgo.GoUInt32) : Bool) : Bool)))) {
                        _r = (65533 : stdgo.GoInt32);
                        @:fallthrough {
                            __switchIndex__ = 2;
                            __run__ = true;
                            continue;
                        };
                        break;
                    } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (_i <= (65535u32 : stdgo.GoUInt32) : Bool))) {
                        return (_p.__append__(((224 : stdgo.GoUInt8) | ((_r >> (12i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoByte) : stdgo.GoUInt8), ((128 : stdgo.GoUInt8) | (((_r >> (6i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoByte) & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8), ((128 : stdgo.GoUInt8) | ((_r : stdgo.GoByte) & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8)));
                        break;
                        break;
                    } else {
                        return (_p.__append__(((240 : stdgo.GoUInt8) | ((_r >> (18i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoByte) : stdgo.GoUInt8), ((128 : stdgo.GoUInt8) | (((_r >> (12i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoByte) & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8), ((128 : stdgo.GoUInt8) | (((_r >> (6i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoByte) & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8), ((128 : stdgo.GoUInt8) | ((_r : stdgo.GoByte) & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8)));
                        break;
                    };
                    break;
                };
                return (null : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
    }
function runeCount(_p:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt {
        var _np = (_p.length : stdgo.GoInt);
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _np : Bool)) {
                _n++;
                var _c = (_p[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                if ((_c < (128 : stdgo.GoUInt8) : Bool)) {
                    _i++;
                    continue;
                };
                var _x = (_first[(_c : stdgo.GoInt)] : stdgo.GoUInt8);
                if (_x == ((241 : stdgo.GoUInt8))) {
                    _i++;
                    continue;
                };
                var _size = ((_x & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
                if (((_i + _size : stdgo.GoInt) > _np : Bool)) {
                    _i++;
                    continue;
                };
                var _accept = (_acceptRanges[((_x >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)] : stdgo._internal.unicode.utf8.Utf8.T_acceptRange);
                {
                    var _c = (_p[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
                    if (((_c < _accept._lo : Bool) || (_accept._hi < _c : Bool) : Bool)) {
                        _size = (1 : stdgo.GoInt);
                    } else if (_size == ((2 : stdgo.GoInt))) {} else {
                        var _c = (_p[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
                        if (((_c < (128 : stdgo.GoUInt8) : Bool) || ((191 : stdgo.GoUInt8) < _c : Bool) : Bool)) {
                            _size = (1 : stdgo.GoInt);
                        } else if (_size == ((3 : stdgo.GoInt))) {} else {
                            var _c = (_p[(_i + (3 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
                            if (((_c < (128 : stdgo.GoUInt8) : Bool) || ((191 : stdgo.GoUInt8) < _c : Bool) : Bool)) {
                                _size = (1 : stdgo.GoInt);
                            };
                        };
                    };
                };
                _i = (_i + (_size) : stdgo.GoInt);
            };
        };
        return _n;
    }
function runeCountInString(_s:stdgo.GoString):stdgo.GoInt {
        var _n = (0 : stdgo.GoInt);
        var _ns = (_s.length : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _ns : Bool), _n++, {
                var _c = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                if ((_c < (128 : stdgo.GoUInt8) : Bool)) {
                    _i++;
                    continue;
                };
                var _x = (_first[(_c : stdgo.GoInt)] : stdgo.GoUInt8);
                if (_x == ((241 : stdgo.GoUInt8))) {
                    _i++;
                    continue;
                };
                var _size = ((_x & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
                if (((_i + _size : stdgo.GoInt) > _ns : Bool)) {
                    _i++;
                    continue;
                };
                var _accept = (_acceptRanges[((_x >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)] : stdgo._internal.unicode.utf8.Utf8.T_acceptRange);
                {
                    var _c = (_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
                    if (((_c < _accept._lo : Bool) || (_accept._hi < _c : Bool) : Bool)) {
                        _size = (1 : stdgo.GoInt);
                    } else if (_size == ((2 : stdgo.GoInt))) {} else {
                        var _c = (_s[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
                        if (((_c < (128 : stdgo.GoUInt8) : Bool) || ((191 : stdgo.GoUInt8) < _c : Bool) : Bool)) {
                            _size = (1 : stdgo.GoInt);
                        } else if (_size == ((3 : stdgo.GoInt))) {} else {
                            var _c = (_s[(_i + (3 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
                            if (((_c < (128 : stdgo.GoUInt8) : Bool) || ((191 : stdgo.GoUInt8) < _c : Bool) : Bool)) {
                                _size = (1 : stdgo.GoInt);
                            };
                        };
                    };
                };
                _i = (_i + (_size) : stdgo.GoInt);
            });
        };
        return _n;
    }
function runeStart(_b:stdgo.GoByte):Bool {
        return (_b & (192 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((128 : stdgo.GoUInt8));
    }
function valid(_p:stdgo.Slice<stdgo.GoByte>):Bool {
        _p = (_p.__slice__(0, (_p.length), (_p.length)) : stdgo.Slice<stdgo.GoUInt8>);
        while (((_p.length) >= (8 : stdgo.GoInt) : Bool)) {
            var _first32 = ((((_p[(0 : stdgo.GoInt)] : stdgo.GoUInt32) | ((_p[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_p[(2 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_p[(3 : stdgo.GoInt)] : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32);
            var _second32 = ((((_p[(4 : stdgo.GoInt)] : stdgo.GoUInt32) | ((_p[(5 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_p[(6 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_p[(7 : stdgo.GoInt)] : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32);
            if ((((_first32 | _second32 : stdgo.GoUInt32)) & (-2139062144u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32))) {
                break;
            };
            _p = (_p.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _n = (_p.length : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                var _pi = (_p[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                if ((_pi < (128 : stdgo.GoUInt8) : Bool)) {
                    _i++;
                    continue;
                };
                var _x = (_first[(_pi : stdgo.GoInt)] : stdgo.GoUInt8);
                if (_x == ((241 : stdgo.GoUInt8))) {
                    return false;
                };
                var _size = ((_x & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
                if (((_i + _size : stdgo.GoInt) > _n : Bool)) {
                    return false;
                };
                var _accept = (_acceptRanges[((_x >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)] : stdgo._internal.unicode.utf8.Utf8.T_acceptRange);
                {
                    var _c = (_p[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
                    if (((_c < _accept._lo : Bool) || (_accept._hi < _c : Bool) : Bool)) {
                        return false;
                    } else if (_size == ((2 : stdgo.GoInt))) {} else {
                        var _c = (_p[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
                        if (((_c < (128 : stdgo.GoUInt8) : Bool) || ((191 : stdgo.GoUInt8) < _c : Bool) : Bool)) {
                            return false;
                        } else if (_size == ((3 : stdgo.GoInt))) {} else {
                            var _c = (_p[(_i + (3 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
                            if (((_c < (128 : stdgo.GoUInt8) : Bool) || ((191 : stdgo.GoUInt8) < _c : Bool) : Bool)) {
                                return false;
                            };
                        };
                    };
                };
                _i = (_i + (_size) : stdgo.GoInt);
            };
        };
        return true;
    }
function validString(_s:stdgo.GoString):Bool {
        while (((_s.length) >= (8 : stdgo.GoInt) : Bool)) {
            var _first32 = ((((_s[(0 : stdgo.GoInt)] : stdgo.GoUInt32) | ((_s[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_s[(2 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_s[(3 : stdgo.GoInt)] : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32);
            var _second32 = ((((_s[(4 : stdgo.GoInt)] : stdgo.GoUInt32) | ((_s[(5 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_s[(6 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_s[(7 : stdgo.GoInt)] : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32);
            if ((((_first32 | _second32 : stdgo.GoUInt32)) & (-2139062144u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32))) {
                break;
            };
            _s = (_s.__slice__((8 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        var _n = (_s.length : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                var _si = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                if ((_si < (128 : stdgo.GoUInt8) : Bool)) {
                    _i++;
                    continue;
                };
                var _x = (_first[(_si : stdgo.GoInt)] : stdgo.GoUInt8);
                if (_x == ((241 : stdgo.GoUInt8))) {
                    return false;
                };
                var _size = ((_x & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
                if (((_i + _size : stdgo.GoInt) > _n : Bool)) {
                    return false;
                };
                var _accept = (_acceptRanges[((_x >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)] : stdgo._internal.unicode.utf8.Utf8.T_acceptRange);
                {
                    var _c = (_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
                    if (((_c < _accept._lo : Bool) || (_accept._hi < _c : Bool) : Bool)) {
                        return false;
                    } else if (_size == ((2 : stdgo.GoInt))) {} else {
                        var _c = (_s[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
                        if (((_c < (128 : stdgo.GoUInt8) : Bool) || ((191 : stdgo.GoUInt8) < _c : Bool) : Bool)) {
                            return false;
                        } else if (_size == ((3 : stdgo.GoInt))) {} else {
                            var _c = (_s[(_i + (3 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
                            if (((_c < (128 : stdgo.GoUInt8) : Bool) || ((191 : stdgo.GoUInt8) < _c : Bool) : Bool)) {
                                return false;
                            };
                        };
                    };
                };
                _i = (_i + (_size) : stdgo.GoInt);
            };
        };
        return true;
    }
function validRune(_r:stdgo.GoRune):Bool {
        if ((((0 : stdgo.GoInt32) <= _r : Bool) && (_r < (55296 : stdgo.GoInt32) : Bool) : Bool)) {
            return true;
        } else if ((((57343 : stdgo.GoInt32) < _r : Bool) && (_r <= (1114111 : stdgo.GoInt32) : Bool) : Bool)) {
            return true;
        };
        return false;
    }
