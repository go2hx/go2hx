package stdgo._internal.math.big;
function testFunNN(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__8 => _a in stdgo._internal.math.big.Big__sumnn._sumNN) {
            var _arg = (_a?.__copy__() : stdgo._internal.math.big.Big_t_argnn.T_argNN);
            stdgo._internal.math.big.Big__testfunnn._testFunNN(_t, ("add" : stdgo.GoString), stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._add, _arg?.__copy__());
            _arg = (new stdgo._internal.math.big.Big_t_argnn.T_argNN(_a._z, _a._y, _a._x) : stdgo._internal.math.big.Big_t_argnn.T_argNN);
            stdgo._internal.math.big.Big__testfunnn._testFunNN(_t, ("add symmetric" : stdgo.GoString), stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._add, _arg?.__copy__());
            _arg = (new stdgo._internal.math.big.Big_t_argnn.T_argNN(_a._x, _a._z, _a._y) : stdgo._internal.math.big.Big_t_argnn.T_argNN);
            stdgo._internal.math.big.Big__testfunnn._testFunNN(_t, ("sub" : stdgo.GoString), stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._sub, _arg?.__copy__());
            _arg = (new stdgo._internal.math.big.Big_t_argnn.T_argNN(_a._y, _a._z, _a._x) : stdgo._internal.math.big.Big_t_argnn.T_argNN);
            stdgo._internal.math.big.Big__testfunnn._testFunNN(_t, ("sub symmetric" : stdgo.GoString), stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._sub, _arg?.__copy__());
        };
        for (__9 => _a in stdgo._internal.math.big.Big__prodnn._prodNN) {
            var _arg = (_a?.__copy__() : stdgo._internal.math.big.Big_t_argnn.T_argNN);
            stdgo._internal.math.big.Big__testfunnn._testFunNN(_t, ("mul" : stdgo.GoString), stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._mul, _arg?.__copy__());
            _arg = (new stdgo._internal.math.big.Big_t_argnn.T_argNN(_a._z, _a._y, _a._x) : stdgo._internal.math.big.Big_t_argnn.T_argNN);
            stdgo._internal.math.big.Big__testfunnn._testFunNN(_t, ("mul symmetric" : stdgo.GoString), stdgo._internal.math.big.Big_t_nat_static_extension.T_nat_static_extension._mul, _arg?.__copy__());
        };
    }
