package stdgo._internal.math.big;
function testModSqrt(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _elt:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), _mod:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), _modx4:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), _sq:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), _sqrt:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
        var _r = stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newsource.newSource((9i64 : stdgo.GoInt64)));
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1657"
        for (_i => _s in (stdgo._internal.math.big.Big__primes._primes.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1658"
            _mod.setString(_s?.__copy__(), (10 : stdgo.GoInt));
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1659"
            _modx4.lsh((stdgo.Go.setRef(_mod) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (2u32 : stdgo.GoUInt));
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1662"
            {
                var _x = (1 : stdgo.GoInt);
                while ((_x < (5 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1663"
                    _elt.rand(_r, (stdgo.Go.setRef(_modx4) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
//"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1664"
                    _elt.sub((stdgo.Go.setRef(_elt) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_mod) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
//"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1665"
                    if (!stdgo._internal.math.big.Big__testmodsqrt._testModSqrt(_t, (stdgo.Go.setRef(_elt) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_mod) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_sq) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_sqrt) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))) {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1666"
                        _t.errorf(("#%d: failed (sqrt(e) = %s)" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_sqrt) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))));
                    };
                    _x++;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1670"
            if ((stdgo._internal.testing.Testing_short.short() && (_i > (2 : stdgo.GoInt) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1671"
                break;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1675"
        if (stdgo._internal.testing.Testing_short.short()) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1676"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1680"
        {
            var _n = (3 : stdgo.GoInt);
            while ((_n < (100 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1681"
                _mod.setInt64((_n : stdgo.GoInt64));
//"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1682"
                if (!_mod.probablyPrime((10 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1683"
                    {
                        _n++;
                        continue;
                    };
                };
var _isSquare = (new stdgo.Slice<Bool>((_n : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<Bool>);
//"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1688"
                {
                    var _x = (1 : stdgo.GoInt);
                    while ((_x < _n : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1689"
                        _elt.setInt64((_x : stdgo.GoInt64));
//"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1690"
                        if (!stdgo._internal.math.big.Big__testmodsqrt._testModSqrt(_t, (stdgo.Go.setRef(_elt) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_mod) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_sq) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_sqrt) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))) {
                            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1691"
                            _t.errorf(("#%d: failed (sqrt(%d,%d) = %s)" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_elt) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_mod) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_sqrt) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))));
                        };
_isSquare[(_sq.uint64() : stdgo.GoInt)] = true;
                        _x++;
                    };
                };
//"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1697"
                {
                    var _x = (1 : stdgo.GoInt);
                    while ((_x < _n : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1698"
                        _sq.setInt64((_x : stdgo.GoInt64));
var _z = _sqrt.modSqrt((stdgo.Go.setRef(_sq) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_mod) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
//"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1700"
                        if ((!_isSquare[(_x : stdgo.GoInt)] && ({
                            final value = _z;
                            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                        }) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1701"
                            _t.errorf(("#%d: failed (sqrt(%d,%d) = nil)" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_sqrt) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_mod) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))));
                        };
                        _x++;
                    };
                };
                _n++;
            };
        };
    }
