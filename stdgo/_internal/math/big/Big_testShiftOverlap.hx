package stdgo._internal.math.big;
function testShiftOverlap(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__8 => _a in stdgo._internal.math.big.Big__argshlVU._argshlVU) {
            var _arg = (_a?.__copy__() : stdgo._internal.math.big.Big_T_argVU.T_argVU);
            stdgo._internal.math.big.Big__testShiftFunc._testShiftFunc(_t, stdgo._internal.math.big.Big__shlVU._shlVU, _arg?.__copy__());
        };
        for (__9 => _a in stdgo._internal.math.big.Big__argshrVU._argshrVU) {
            var _arg = (_a?.__copy__() : stdgo._internal.math.big.Big_T_argVU.T_argVU);
            stdgo._internal.math.big.Big__testShiftFunc._testShiftFunc(_t, stdgo._internal.math.big.Big__shrVU._shrVU, _arg?.__copy__());
        };
    }
