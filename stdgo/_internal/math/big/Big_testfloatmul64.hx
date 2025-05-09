package stdgo._internal.math.big;
function testFloatMul64(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1422"
        for (__8 => _test in (new stdgo.Slice<stdgo._internal.math.big.Big_t__struct_25.T__struct_25>(8, 8, ...[({ _x : (0 : stdgo.GoFloat64), _y : (0 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_25.T__struct_25), ({ _x : (0 : stdgo.GoFloat64), _y : (1 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_25.T__struct_25), ({ _x : (1 : stdgo.GoFloat64), _y : (1 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_25.T__struct_25), ({ _x : (1 : stdgo.GoFloat64), _y : (1.5 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_25.T__struct_25), ({ _x : (1.234 : stdgo.GoFloat64), _y : (0.5678 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_25.T__struct_25), ({ _x : (2.718281828 : stdgo.GoFloat64), _y : (3.14159265358979 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_25.T__struct_25), ({ _x : (2.718281828e+10 : stdgo.GoFloat64), _y : (3.14159265358979e-32 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_25.T__struct_25), ({ _x : (0.3333333333333333 : stdgo.GoFloat64), _y : (1e+200 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_25.T__struct_25)].concat([for (i in 8 ... (8 > 8 ? 8 : 8 : stdgo.GoInt).toBasic()) ({ _x : (0 : stdgo.GoFloat64), _y : (0 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_25.T__struct_25)])) : stdgo.Slice<stdgo._internal.math.big.Big_t__struct_25.T__struct_25>)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1434"
            for (_i => _ in (new stdgo.GoArray<stdgo.GoInt>(8, 8, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>).__copy__()) {
                var __0 = (_test._x : stdgo.GoFloat64), __1 = (_test._y : stdgo.GoFloat64);
var _y0 = __1, _x0 = __0;
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1436"
                if ((_i & (1 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                    _x0 = -_x0;
                };
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1439"
                if ((_i & (2 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                    _y0 = -_y0;
                };
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1442"
                if ((_i & (4 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                    {
                        final __tmp__0 = _y0;
                        final __tmp__1 = _x0;
                        _x0 = @:binopAssign __tmp__0;
                        _y0 = @:binopAssign __tmp__1;
                    };
                };
                var _x = stdgo._internal.math.big.Big_newfloat.newFloat(_x0);
                var _y = stdgo._internal.math.big.Big_newfloat.newFloat(_y0);
                var _z = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setPrec((53u32 : stdgo.GoUInt));
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1450"
                _z.mul(_x, _y);
                var __tmp__ = _z.float64(), _got:stdgo.GoFloat64 = __tmp__._0, __9:stdgo._internal.math.big.Big_accuracy.Accuracy = __tmp__._1;
                var _want = (_x0 * _y0 : stdgo.GoFloat64);
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1453"
                if (_got != (_want)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1454"
                    _t.errorf(("%g * %g = %g; want %g" : stdgo.GoString), stdgo.Go.toInterface(_x0), stdgo.Go.toInterface(_y0), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1457"
                if (_y0 == ((0 : stdgo.GoFloat64))) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1458"
                    continue;
                };
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1460"
                _z.quo(_z, _y);
                {
                    var __tmp__ = _z.float64();
                    _got = @:tmpset0 __tmp__._0;
                };
                _want = (_want / (_y0) : stdgo.GoFloat64);
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1463"
                if (_got != (_want)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1464"
                    _t.errorf(("%g / %g = %g; want %g" : stdgo.GoString), stdgo.Go.toInterface((_x0 * _y0 : stdgo.GoFloat64)), stdgo.Go.toInterface(_y0), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
        };
    }
