package stdgo._internal.math.big;
function testRatBin(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (_i => _test in stdgo._internal.math.big.Big__ratbintests._ratBinTests) {
            var _arg = (new stdgo._internal.math.big.Big_t_ratbinarg.T_ratBinArg(_test._x?.__copy__(), _test._y?.__copy__(), _test._sum?.__copy__()) : stdgo._internal.math.big.Big_t_ratbinarg.T_ratBinArg);
            stdgo._internal.math.big.Big__testratbin._testRatBin(_t, _i, ("Add" : stdgo.GoString), stdgo._internal.math.big.Big_rat_static_extension.Rat_static_extension.add, _arg?.__copy__());
            _arg = (new stdgo._internal.math.big.Big_t_ratbinarg.T_ratBinArg(_test._y?.__copy__(), _test._x?.__copy__(), _test._sum?.__copy__()) : stdgo._internal.math.big.Big_t_ratbinarg.T_ratBinArg);
            stdgo._internal.math.big.Big__testratbin._testRatBin(_t, _i, ("Add symmetric" : stdgo.GoString), stdgo._internal.math.big.Big_rat_static_extension.Rat_static_extension.add, _arg?.__copy__());
            _arg = (new stdgo._internal.math.big.Big_t_ratbinarg.T_ratBinArg(_test._sum?.__copy__(), _test._x?.__copy__(), _test._y?.__copy__()) : stdgo._internal.math.big.Big_t_ratbinarg.T_ratBinArg);
            stdgo._internal.math.big.Big__testratbin._testRatBin(_t, _i, ("Sub" : stdgo.GoString), stdgo._internal.math.big.Big_rat_static_extension.Rat_static_extension.sub, _arg?.__copy__());
            _arg = (new stdgo._internal.math.big.Big_t_ratbinarg.T_ratBinArg(_test._sum?.__copy__(), _test._y?.__copy__(), _test._x?.__copy__()) : stdgo._internal.math.big.Big_t_ratbinarg.T_ratBinArg);
            stdgo._internal.math.big.Big__testratbin._testRatBin(_t, _i, ("Sub symmetric" : stdgo.GoString), stdgo._internal.math.big.Big_rat_static_extension.Rat_static_extension.sub, _arg?.__copy__());
            _arg = (new stdgo._internal.math.big.Big_t_ratbinarg.T_ratBinArg(_test._x?.__copy__(), _test._y?.__copy__(), _test._prod?.__copy__()) : stdgo._internal.math.big.Big_t_ratbinarg.T_ratBinArg);
            stdgo._internal.math.big.Big__testratbin._testRatBin(_t, _i, ("Mul" : stdgo.GoString), stdgo._internal.math.big.Big_rat_static_extension.Rat_static_extension.mul, _arg?.__copy__());
            _arg = (new stdgo._internal.math.big.Big_t_ratbinarg.T_ratBinArg(_test._y?.__copy__(), _test._x?.__copy__(), _test._prod?.__copy__()) : stdgo._internal.math.big.Big_t_ratbinarg.T_ratBinArg);
            stdgo._internal.math.big.Big__testratbin._testRatBin(_t, _i, ("Mul symmetric" : stdgo.GoString), stdgo._internal.math.big.Big_rat_static_extension.Rat_static_extension.mul, _arg?.__copy__());
            if (_test._x != (("0" : stdgo.GoString))) {
                _arg = (new stdgo._internal.math.big.Big_t_ratbinarg.T_ratBinArg(_test._prod?.__copy__(), _test._x?.__copy__(), _test._y?.__copy__()) : stdgo._internal.math.big.Big_t_ratbinarg.T_ratBinArg);
                stdgo._internal.math.big.Big__testratbin._testRatBin(_t, _i, ("Quo" : stdgo.GoString), stdgo._internal.math.big.Big_rat_static_extension.Rat_static_extension.quo, _arg?.__copy__());
            };
            if (_test._y != (("0" : stdgo.GoString))) {
                _arg = (new stdgo._internal.math.big.Big_t_ratbinarg.T_ratBinArg(_test._prod?.__copy__(), _test._y?.__copy__(), _test._x?.__copy__()) : stdgo._internal.math.big.Big_t_ratbinarg.T_ratBinArg);
                stdgo._internal.math.big.Big__testratbin._testRatBin(_t, _i, ("Quo symmetric" : stdgo.GoString), stdgo._internal.math.big.Big_rat_static_extension.Rat_static_extension.quo, _arg?.__copy__());
            };
        };
    }
