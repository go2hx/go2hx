package stdgo._internal.math.big;
function testFunVWW(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__14 => _a in stdgo._internal.math.big.Big__prodVWW._prodVWW) {
            var _arg = (_a?.__copy__() : stdgo._internal.math.big.Big_T_argVWW.T_argVWW);
            stdgo._internal.math.big.Big__testFunVWW._testFunVWW(_t, ("mulAddVWW_g" : stdgo.GoString), stdgo._internal.math.big.Big__mulAddVWW_g._mulAddVWW_g, _arg?.__copy__());
            stdgo._internal.math.big.Big__testFunVWW._testFunVWW(_t, ("mulAddVWW" : stdgo.GoString), stdgo._internal.math.big.Big__mulAddVWW._mulAddVWW, _arg?.__copy__());
            if (((_a._y != (0u32 : stdgo._internal.math.big.Big_Word.Word)) && (_a._r < _a._y : Bool) : Bool)) {
                var _arg = (new stdgo._internal.math.big.Big_T_argWVW.T_argWVW(_a._x, _a._c, _a._z, _a._y, _a._r) : stdgo._internal.math.big.Big_T_argWVW.T_argWVW);
                stdgo._internal.math.big.Big__testFunWVW._testFunWVW(_t, ("divWVW" : stdgo.GoString), stdgo._internal.math.big.Big__divWVW._divWVW, _arg?.__copy__());
            };
        };
    }
