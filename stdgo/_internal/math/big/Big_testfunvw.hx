package stdgo._internal.math.big;
function testFunVW(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__8 => _a in stdgo._internal.math.big.Big__sumvw._sumVW) {
            var _arg = (_a?.__copy__() : stdgo._internal.math.big.Big_t_argvw.T_argVW);
            stdgo._internal.math.big.Big__testfunvw._testFunVW(_t, ("addVW_g" : stdgo.GoString), stdgo._internal.math.big.Big__addvw_g._addVW_g, _arg?.__copy__());
            stdgo._internal.math.big.Big__testfunvw._testFunVW(_t, ("addVW" : stdgo.GoString), stdgo._internal.math.big.Big__addvw._addVW, _arg?.__copy__());
            _arg = (new stdgo._internal.math.big.Big_t_argvw.T_argVW(_a._x, _a._z, _a._y, _a._c) : stdgo._internal.math.big.Big_t_argvw.T_argVW);
            stdgo._internal.math.big.Big__testfunvw._testFunVW(_t, ("subVW_g" : stdgo.GoString), stdgo._internal.math.big.Big__subvw_g._subVW_g, _arg?.__copy__());
            stdgo._internal.math.big.Big__testfunvw._testFunVW(_t, ("subVW" : stdgo.GoString), stdgo._internal.math.big.Big__subvw._subVW, _arg?.__copy__());
        };
        var _shlVW_g = (stdgo._internal.math.big.Big__makefunvw._makeFunVW(stdgo._internal.math.big.Big__shlvu_g._shlVU_g) : stdgo._internal.math.big.Big_t_funvw.T_funVW);
        var _shlVW = (stdgo._internal.math.big.Big__makefunvw._makeFunVW(stdgo._internal.math.big.Big__shlvu._shlVU) : stdgo._internal.math.big.Big_t_funvw.T_funVW);
        for (__9 => _a in stdgo._internal.math.big.Big__lshvw._lshVW) {
            var _arg = (_a?.__copy__() : stdgo._internal.math.big.Big_t_argvw.T_argVW);
            stdgo._internal.math.big.Big__testfunvw._testFunVW(_t, ("shlVU_g" : stdgo.GoString), _shlVW_g, _arg?.__copy__());
            stdgo._internal.math.big.Big__testfunvw._testFunVW(_t, ("shlVU" : stdgo.GoString), _shlVW, _arg?.__copy__());
        };
        var _shrVW_g = (stdgo._internal.math.big.Big__makefunvw._makeFunVW(stdgo._internal.math.big.Big__shrvu_g._shrVU_g) : stdgo._internal.math.big.Big_t_funvw.T_funVW);
        var _shrVW = (stdgo._internal.math.big.Big__makefunvw._makeFunVW(stdgo._internal.math.big.Big__shrvu._shrVU) : stdgo._internal.math.big.Big_t_funvw.T_funVW);
        for (__10 => _a in stdgo._internal.math.big.Big__rshvw._rshVW) {
            var _arg = (_a?.__copy__() : stdgo._internal.math.big.Big_t_argvw.T_argVW);
            stdgo._internal.math.big.Big__testfunvw._testFunVW(_t, ("shrVU_g" : stdgo.GoString), _shrVW_g, _arg?.__copy__());
            stdgo._internal.math.big.Big__testfunvw._testFunVW(_t, ("shrVU" : stdgo.GoString), _shrVW, _arg?.__copy__());
        };
    }
