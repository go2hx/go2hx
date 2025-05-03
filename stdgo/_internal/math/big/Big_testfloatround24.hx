package stdgo._internal.math.big;
function testFloatRound24(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L528"
        {
            var _d = (0 : stdgo.GoInt);
            while ((_d <= (16 : stdgo.GoInt) : Bool)) {
                var _x = (((67108848 : stdgo.GoInt) + _d : stdgo.GoInt) : stdgo.GoFloat64);
var _f = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setPrec((24u32 : stdgo.GoUInt)).setFloat64(_x);
var __tmp__ = _f.float32(), _got:stdgo.GoFloat32 = __tmp__._0, __8:stdgo._internal.math.big.Big_accuracy.Accuracy = __tmp__._1;
var _want = (_x : stdgo.GoFloat32);
//"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L533"
                if (_got != (_want)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L534"
                    _t.errorf(("Round(%g, 24) = %g; want %g" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
                _d++;
            };
        };
    }
