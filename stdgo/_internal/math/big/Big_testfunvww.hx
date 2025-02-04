package stdgo._internal.math.big;
function testFunVWW(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__8 => _a in stdgo._internal.math.big.Big__prodvww._prodVWW) {
            var _arg = (_a?.__copy__() : stdgo._internal.math.big.Big_t_argvww.T_argVWW);
            stdgo._internal.math.big.Big__testfunvww._testFunVWW(_t, ("mulAddVWW_g" : stdgo.GoString), stdgo._internal.math.big.Big__muladdvww_g._mulAddVWW_g, _arg?.__copy__());
            stdgo._internal.math.big.Big__testfunvww._testFunVWW(_t, ("mulAddVWW" : stdgo.GoString), stdgo._internal.math.big.Big__muladdvww._mulAddVWW, _arg?.__copy__());
            if (((_a._y != (0u32 : stdgo._internal.math.big.Big_word.Word)) && (_a._r < _a._y : Bool) : Bool)) {
                var _arg = (new stdgo._internal.math.big.Big_t_argwvw.T_argWVW(_a._x, _a._c, _a._z, _a._y, _a._r) : stdgo._internal.math.big.Big_t_argwvw.T_argWVW);
                stdgo._internal.math.big.Big__testfunwvw._testFunWVW(_t, ("divWVW" : stdgo.GoString), stdgo._internal.math.big.Big__divwvw._divWVW, _arg?.__copy__());
            };
        };
    }
