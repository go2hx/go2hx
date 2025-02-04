package stdgo._internal.math.big;
function _testShiftFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _f:(stdgo.Slice<stdgo._internal.math.big.Big_word.Word>, stdgo.Slice<stdgo._internal.math.big.Big_word.Word>, stdgo.GoUInt) -> stdgo._internal.math.big.Big_word.Word, _a:stdgo._internal.math.big.Big_t_argvu.T_argVU):Void {
        var _b = (new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>((_a._d.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.math.big.Big_word.Word>);
        _b.__copyTo__(_a._d);
        var _z = (_b.__slice__(_a._zp, (_a._zp + _a._l : stdgo.GoUInt)) : stdgo.Slice<stdgo._internal.math.big.Big_word.Word>);
        var _x = (_b.__slice__(_a._xp, (_a._xp + _a._l : stdgo.GoUInt)) : stdgo.Slice<stdgo._internal.math.big.Big_word.Word>);
        var _c = (_f(_z, _x, _a._s) : stdgo._internal.math.big.Big_word.Word);
        for (_i => _zi in _z) {
            if (_zi != (_a._r[(_i : stdgo.GoInt)])) {
                @:check2r _t.errorf(("d := %v, %s(d[%d:%d], d[%d:%d], %d)\n\tgot z[%d] = %#x; want %#x" : stdgo.GoString),
stdgo.Go.toInterface(_a._d),
stdgo.Go.toInterface(_a._m),
stdgo.Go.toInterface(_a._zp),
stdgo.Go.toInterface((_a._zp + _a._l : stdgo.GoUInt)),
stdgo.Go.toInterface(_a._xp),
stdgo.Go.toInterface((_a._xp + _a._l : stdgo.GoUInt)),
stdgo.Go.toInterface(_a._s),
stdgo.Go.toInterface(_i),
stdgo.Go.toInterface(_zi),
stdgo.Go.toInterface(_a._r[(_i : stdgo.GoInt)]));
                break;
            };
        };
        if (_c != (_a._c)) {
            @:check2r _t.errorf(("d := %v, %s(d[%d:%d], d[%d:%d], %d)\n\tgot c = %#x; want %#x" : stdgo.GoString), stdgo.Go.toInterface(_a._d), stdgo.Go.toInterface(_a._m), stdgo.Go.toInterface(_a._zp), stdgo.Go.toInterface((_a._zp + _a._l : stdgo.GoUInt)), stdgo.Go.toInterface(_a._xp), stdgo.Go.toInterface((_a._xp + _a._l : stdgo.GoUInt)), stdgo.Go.toInterface(_a._s), stdgo.Go.toInterface(_c), stdgo.Go.toInterface(_a._c));
        };
    }
