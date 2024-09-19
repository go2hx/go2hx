package stdgo._internal.math.big;
function testFunNN(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__14 => _a in stdgo._internal.math.big.Big__sumNN._sumNN) {
            var _arg = (_a?.__copy__() : stdgo._internal.math.big.Big_T_argNN.T_argNN);
            stdgo._internal.math.big.Big__testFunNN._testFunNN(_t, ("add" : stdgo.GoString), stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._add, _arg?.__copy__());
            _arg = (new stdgo._internal.math.big.Big_T_argNN.T_argNN(_a._z, _a._y, _a._x) : stdgo._internal.math.big.Big_T_argNN.T_argNN);
            stdgo._internal.math.big.Big__testFunNN._testFunNN(_t, ("add symmetric" : stdgo.GoString), stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._add, _arg?.__copy__());
            _arg = (new stdgo._internal.math.big.Big_T_argNN.T_argNN(_a._x, _a._z, _a._y) : stdgo._internal.math.big.Big_T_argNN.T_argNN);
            stdgo._internal.math.big.Big__testFunNN._testFunNN(_t, ("sub" : stdgo.GoString), stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._sub, _arg?.__copy__());
            _arg = (new stdgo._internal.math.big.Big_T_argNN.T_argNN(_a._y, _a._z, _a._x) : stdgo._internal.math.big.Big_T_argNN.T_argNN);
            stdgo._internal.math.big.Big__testFunNN._testFunNN(_t, ("sub symmetric" : stdgo.GoString), stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._sub, _arg?.__copy__());
        };
        for (__15 => _a in stdgo._internal.math.big.Big__prodNN._prodNN) {
            var _arg = (_a?.__copy__() : stdgo._internal.math.big.Big_T_argNN.T_argNN);
            stdgo._internal.math.big.Big__testFunNN._testFunNN(_t, ("mul" : stdgo.GoString), stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._mul, _arg?.__copy__());
            _arg = (new stdgo._internal.math.big.Big_T_argNN.T_argNN(_a._z, _a._y, _a._x) : stdgo._internal.math.big.Big_T_argNN.T_argNN);
            stdgo._internal.math.big.Big__testFunNN._testFunNN(_t, ("mul symmetric" : stdgo.GoString), stdgo._internal.math.big.Big_T_nat_static_extension.T_nat_static_extension._mul, _arg?.__copy__());
        };
    }
