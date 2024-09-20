package stdgo._internal.math.big;
function testModInverse(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __0:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_), __1:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_), __2:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_), __3:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_);
var _inverse = __3, _gcd = __2, _modulus = __1, _element = __0;
        var _one = stdgo._internal.math.big.Big_newInt.newInt((1i64 : stdgo.GoInt64));
        for (__8 => _test in stdgo._internal.math.big.Big__modInverseTests._modInverseTests) {
            (stdgo.Go.setRef(_element) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setString(_test._element?.__copy__(), (10 : stdgo.GoInt));
            (stdgo.Go.setRef(_modulus) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setString(_test._modulus?.__copy__(), (10 : stdgo.GoInt));
            (stdgo.Go.setRef(_inverse) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).modInverse((stdgo.Go.setRef(_element) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), (stdgo.Go.setRef(_modulus) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>));
            (stdgo.Go.setRef(_inverse) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).mul((stdgo.Go.setRef(_inverse) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), (stdgo.Go.setRef(_element) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>));
            (stdgo.Go.setRef(_inverse) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).mod((stdgo.Go.setRef(_inverse) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), (stdgo.Go.setRef(_modulus) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>));
            if ((stdgo.Go.setRef(_inverse) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).cmp(_one) != ((0 : stdgo.GoInt))) {
                _t.errorf(("ModInverse(%d,%d)*%d%%%d=%d, not 1" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_element) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_modulus) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_element) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_modulus) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_inverse) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>))));
            };
        };
        {
            var _n = (2 : stdgo.GoInt);
            stdgo.Go.cfor((_n < (100 : stdgo.GoInt) : Bool), _n++, {
                (stdgo.Go.setRef(_modulus) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setInt64((_n : stdgo.GoInt64));
                {
                    var _x = (1 : stdgo.GoInt);
                    stdgo.Go.cfor((_x < _n : Bool), _x++, {
                        (stdgo.Go.setRef(_element) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setInt64((_x : stdgo.GoInt64));
                        (stdgo.Go.setRef(_gcd) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).gcd(null, null, (stdgo.Go.setRef(_element) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), (stdgo.Go.setRef(_modulus) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>));
                        if ((stdgo.Go.setRef(_gcd) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).cmp(_one) != ((0 : stdgo.GoInt))) {
                            continue;
                        };
                        (stdgo.Go.setRef(_inverse) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).modInverse((stdgo.Go.setRef(_element) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), (stdgo.Go.setRef(_modulus) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>));
                        (stdgo.Go.setRef(_inverse) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).mul((stdgo.Go.setRef(_inverse) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), (stdgo.Go.setRef(_element) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>));
                        (stdgo.Go.setRef(_inverse) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).mod((stdgo.Go.setRef(_inverse) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), (stdgo.Go.setRef(_modulus) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>));
                        if ((stdgo.Go.setRef(_inverse) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).cmp(_one) != ((0 : stdgo.GoInt))) {
                            _t.errorf(("ModInverse(%d,%d)*%d%%%d=%d, not 1" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_element) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_modulus) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_element) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_modulus) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_inverse) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>))));
                        };
                    });
                };
            });
        };
    }
