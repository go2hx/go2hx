package stdgo._internal.math.big;
function _testBitset(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):Void {
        var _n = (_x.bitLen() : stdgo.GoInt);
        var _z = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).set(_x);
        var _z1 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).set(_x);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1323"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_n + (10 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                var _old = (_z.bit(_i) : stdgo.GoUInt);
var _old1 = (stdgo._internal.math.big.Big__altbit._altBit(_z1, _i) : stdgo.GoUInt);
//"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1326"
                if (_old != (_old1)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1327"
                    _t.errorf(("bitset: inconsistent value for Bit(%s, %d), got %v want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z1)), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_old), stdgo.Go.toInterface(_old1));
                };
var _z = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setBit(_z, _i, (1u32 : stdgo.GoUInt));
var _z1 = stdgo._internal.math.big.Big__altsetbit._altSetBit((stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _z1, _i, (1u32 : stdgo.GoUInt));
//"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1331"
                if (_z.bit(_i) == ((0u32 : stdgo.GoUInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1332"
                    _t.errorf(("bitset: bit %d of %s got 0 want 1" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
                };
//"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1334"
                if (_z.cmp(_z1) != ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1335"
                    _t.errorf(("bitset: inconsistent value after SetBit 1, got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)), stdgo.Go.toInterface(stdgo.Go.asInterface(_z1)));
                };
//"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1337"
                _z.setBit(_z, _i, (0u32 : stdgo.GoUInt));
//"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1338"
                stdgo._internal.math.big.Big__altsetbit._altSetBit(_z1, _z1, _i, (0u32 : stdgo.GoUInt));
//"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1339"
                if (_z.bit(_i) != ((0u32 : stdgo.GoUInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1340"
                    _t.errorf(("bitset: bit %d of %s got 1 want 0" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
                };
//"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1342"
                if (_z.cmp(_z1) != ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1343"
                    _t.errorf(("bitset: inconsistent value after SetBit 0, got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)), stdgo.Go.toInterface(stdgo.Go.asInterface(_z1)));
                };
//"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1345"
                stdgo._internal.math.big.Big__altsetbit._altSetBit(_z1, _z1, _i, _old);
//"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1346"
                _z.setBit(_z, _i, _old);
//"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1347"
                if (_z.cmp(_z1) != ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1348"
                    _t.errorf(("bitset: inconsistent value after SetBit old, got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)), stdgo.Go.toInterface(stdgo.Go.asInterface(_z1)));
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1351"
        if (_z.cmp(_x) != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1352"
            _t.errorf(("bitset: got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
        };
    }
