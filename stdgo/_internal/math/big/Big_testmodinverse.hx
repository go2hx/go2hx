package stdgo._internal.math.big;
function testModInverse(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _element:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), _modulus:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), _gcd:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), _inverse:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
        var _one = stdgo._internal.math.big.Big_newint.newInt((1i64 : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1576"
        for (__8 => _test in stdgo._internal.math.big.Big__modinversetests._modInverseTests) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1577"
            (stdgo.Go.setRef(_element) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setString(_test._element?.__copy__(), (10 : stdgo.GoInt));
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1578"
            (stdgo.Go.setRef(_modulus) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setString(_test._modulus?.__copy__(), (10 : stdgo.GoInt));
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1579"
            (stdgo.Go.setRef(_inverse) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).modInverse((stdgo.Go.setRef(_element) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_modulus) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1580"
            (stdgo.Go.setRef(_inverse) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mul((stdgo.Go.setRef(_inverse) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_element) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1581"
            (stdgo.Go.setRef(_inverse) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mod((stdgo.Go.setRef(_inverse) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_modulus) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1582"
            if ((stdgo.Go.setRef(_inverse) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).cmp(_one) != ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1583"
                _t.errorf(("ModInverse(%d,%d)*%d%%%d=%d, not 1" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_element) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_modulus) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_element) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_modulus) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_inverse) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1587"
        {
            var _n = (2 : stdgo.GoInt);
            while ((_n < (100 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1588"
                (stdgo.Go.setRef(_modulus) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setInt64((_n : stdgo.GoInt64));
//"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1589"
                {
                    var _x = (1 : stdgo.GoInt);
                    while ((_x < _n : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1590"
                        (stdgo.Go.setRef(_element) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setInt64((_x : stdgo.GoInt64));
//"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1591"
                        (stdgo.Go.setRef(_gcd) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).gCD(null, null, (stdgo.Go.setRef(_element) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_modulus) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
//"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1592"
                        if ((stdgo.Go.setRef(_gcd) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).cmp(_one) != ((0 : stdgo.GoInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1593"
                            {
                                _x++;
                                continue;
                            };
                        };
//"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1595"
                        (stdgo.Go.setRef(_inverse) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).modInverse((stdgo.Go.setRef(_element) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_modulus) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
//"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1596"
                        (stdgo.Go.setRef(_inverse) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mul((stdgo.Go.setRef(_inverse) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_element) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
//"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1597"
                        (stdgo.Go.setRef(_inverse) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mod((stdgo.Go.setRef(_inverse) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_modulus) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
//"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1598"
                        if ((stdgo.Go.setRef(_inverse) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).cmp(_one) != ((0 : stdgo.GoInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1599"
                            _t.errorf(("ModInverse(%d,%d)*%d%%%d=%d, not 1" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_element) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_modulus) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_element) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_modulus) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_inverse) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))));
                        };
                        _x++;
                    };
                };
                _n++;
            };
        };
    }
