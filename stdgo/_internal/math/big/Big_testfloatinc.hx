package stdgo._internal.math.big;
function testFloatInc(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1193"
        for (__8 => _prec in stdgo._internal.math.big.Big__preclist._precList.__copy__()) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1194"
            if ((((1 : stdgo.GoInt) << _prec : stdgo.GoInt) < (10 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1195"
                continue;
            };
            var _x:stdgo._internal.math.big.Big_float_.Float_ = ({} : stdgo._internal.math.big.Big_float_.Float_), _one:stdgo._internal.math.big.Big_float_.Float_ = ({} : stdgo._internal.math.big.Big_float_.Float_);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1198"
            _x.setPrec(_prec);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1199"
            _one.setInt64((1i64 : stdgo.GoInt64));
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1200"
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (10 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1201"
                    _x.add((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>), (stdgo.Go.setRef(_one) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>));
                    _i++;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1203"
            if (_x.cmp((stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setInt64((10i64 : stdgo.GoInt64))) != ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1204"
                _t.errorf(("prec = %d: got %s; want %d" : stdgo.GoString), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>))), stdgo.Go.toInterface((10 : stdgo.GoInt)));
            };
        };
    }
