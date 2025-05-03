package stdgo._internal.math.big;
function testBitSet(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1376"
        for (__8 => _test in stdgo._internal.math.big.Big__bitwisetests._bitwiseTests) {
            var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1378"
            _x.setString(_test._x?.__copy__(), (0 : stdgo.GoInt));
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1379"
            stdgo._internal.math.big.Big__testbitset._testBitset(_t, _x);
            _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1381"
            _x.setString(_test._y?.__copy__(), (0 : stdgo.GoInt));
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1382"
            stdgo._internal.math.big.Big__testbitset._testBitset(_t, _x);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1384"
        for (_i => _test in stdgo._internal.math.big.Big__bitsettests._bitsetTests) {
            var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1386"
            _x.setString(_test._x?.__copy__(), (0 : stdgo.GoInt));
            var _b = (_x.bit(_test._i) : stdgo.GoUInt);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1388"
            if (_b != (_test._b)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1389"
                _t.errorf(("#%d got %v want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_test._b));
            };
        };
        var _z = stdgo._internal.math.big.Big_newint.newInt((1i64 : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1393"
        _z.setBit(stdgo._internal.math.big.Big_newint.newInt((0i64 : stdgo.GoInt64)), (2 : stdgo.GoInt), (1u32 : stdgo.GoUInt));
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1394"
        if (_z.cmp(stdgo._internal.math.big.Big_newint.newInt((4i64 : stdgo.GoInt64))) != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1395"
            _t.errorf(("destination leaked into result; got %s want 4" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)));
        };
    }
