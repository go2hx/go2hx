package stdgo._internal.math.big;
function testFunVV(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__14 => _a in stdgo._internal.math.big.Big__sumVV._sumVV) {
            var _arg = (_a?.__copy__() : stdgo._internal.math.big.Big_T_argVV.T_argVV);
            stdgo._internal.math.big.Big__testFunVV._testFunVV(_t, ("addVV_g" : stdgo.GoString), stdgo._internal.math.big.Big__addVV_g._addVV_g, _arg?.__copy__());
            stdgo._internal.math.big.Big__testFunVV._testFunVV(_t, ("addVV" : stdgo.GoString), stdgo._internal.math.big.Big__addVV._addVV, _arg?.__copy__());
            _arg = (new stdgo._internal.math.big.Big_T_argVV.T_argVV(_a._z, _a._y, _a._x, _a._c) : stdgo._internal.math.big.Big_T_argVV.T_argVV);
            stdgo._internal.math.big.Big__testFunVV._testFunVV(_t, ("addVV_g symmetric" : stdgo.GoString), stdgo._internal.math.big.Big__addVV_g._addVV_g, _arg?.__copy__());
            stdgo._internal.math.big.Big__testFunVV._testFunVV(_t, ("addVV symmetric" : stdgo.GoString), stdgo._internal.math.big.Big__addVV._addVV, _arg?.__copy__());
            _arg = (new stdgo._internal.math.big.Big_T_argVV.T_argVV(_a._x, _a._z, _a._y, _a._c) : stdgo._internal.math.big.Big_T_argVV.T_argVV);
            stdgo._internal.math.big.Big__testFunVV._testFunVV(_t, ("subVV_g" : stdgo.GoString), stdgo._internal.math.big.Big__subVV_g._subVV_g, _arg?.__copy__());
            stdgo._internal.math.big.Big__testFunVV._testFunVV(_t, ("subVV" : stdgo.GoString), stdgo._internal.math.big.Big__subVV._subVV, _arg?.__copy__());
            _arg = (new stdgo._internal.math.big.Big_T_argVV.T_argVV(_a._y, _a._z, _a._x, _a._c) : stdgo._internal.math.big.Big_T_argVV.T_argVV);
            stdgo._internal.math.big.Big__testFunVV._testFunVV(_t, ("subVV_g symmetric" : stdgo.GoString), stdgo._internal.math.big.Big__subVV_g._subVV_g, _arg?.__copy__());
            stdgo._internal.math.big.Big__testFunVV._testFunVV(_t, ("subVV symmetric" : stdgo.GoString), stdgo._internal.math.big.Big__subVV._subVV, _arg?.__copy__());
        };
    }
