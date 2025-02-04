package stdgo._internal.math.big;
function testFunVV(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__8 => _a in stdgo._internal.math.big.Big__sumvv._sumVV) {
            var _arg = (_a?.__copy__() : stdgo._internal.math.big.Big_t_argvv.T_argVV);
            stdgo._internal.math.big.Big__testfunvv._testFunVV(_t, ("addVV_g" : stdgo.GoString), stdgo._internal.math.big.Big__addvv_g._addVV_g, _arg?.__copy__());
            stdgo._internal.math.big.Big__testfunvv._testFunVV(_t, ("addVV" : stdgo.GoString), stdgo._internal.math.big.Big__addvv._addVV, _arg?.__copy__());
            _arg = (new stdgo._internal.math.big.Big_t_argvv.T_argVV(_a._z, _a._y, _a._x, _a._c) : stdgo._internal.math.big.Big_t_argvv.T_argVV);
            stdgo._internal.math.big.Big__testfunvv._testFunVV(_t, ("addVV_g symmetric" : stdgo.GoString), stdgo._internal.math.big.Big__addvv_g._addVV_g, _arg?.__copy__());
            stdgo._internal.math.big.Big__testfunvv._testFunVV(_t, ("addVV symmetric" : stdgo.GoString), stdgo._internal.math.big.Big__addvv._addVV, _arg?.__copy__());
            _arg = (new stdgo._internal.math.big.Big_t_argvv.T_argVV(_a._x, _a._z, _a._y, _a._c) : stdgo._internal.math.big.Big_t_argvv.T_argVV);
            stdgo._internal.math.big.Big__testfunvv._testFunVV(_t, ("subVV_g" : stdgo.GoString), stdgo._internal.math.big.Big__subvv_g._subVV_g, _arg?.__copy__());
            stdgo._internal.math.big.Big__testfunvv._testFunVV(_t, ("subVV" : stdgo.GoString), stdgo._internal.math.big.Big__subvv._subVV, _arg?.__copy__());
            _arg = (new stdgo._internal.math.big.Big_t_argvv.T_argVV(_a._y, _a._z, _a._x, _a._c) : stdgo._internal.math.big.Big_t_argvv.T_argVV);
            stdgo._internal.math.big.Big__testfunvv._testFunVV(_t, ("subVV_g symmetric" : stdgo.GoString), stdgo._internal.math.big.Big__subvv_g._subVV_g, _arg?.__copy__());
            stdgo._internal.math.big.Big__testfunvv._testFunVV(_t, ("subVV symmetric" : stdgo.GoString), stdgo._internal.math.big.Big__subvv._subVV, _arg?.__copy__());
        };
    }
