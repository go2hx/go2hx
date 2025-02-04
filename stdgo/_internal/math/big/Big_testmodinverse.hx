package stdgo._internal.math.big;
function testModInverse(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __0:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), __1:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), __2:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), __3:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
var _inverse = __3, _gcd = __2, _modulus = __1, _element = __0;
        var _one = stdgo._internal.math.big.Big_newint.newInt((1i64 : stdgo.GoInt64));
        for (__8 => _test in stdgo._internal.math.big.Big__modinversetests._modInverseTests) {
            @:check2r (stdgo.Go.setRef(_element) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setString(_test._element?.__copy__(), (10 : stdgo.GoInt));
            @:check2r (stdgo.Go.setRef(_modulus) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setString(_test._modulus?.__copy__(), (10 : stdgo.GoInt));
            @:check2r (stdgo.Go.setRef(_inverse) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).modInverse((stdgo.Go.setRef(_element) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_modulus) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
            @:check2r (stdgo.Go.setRef(_inverse) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mul((stdgo.Go.setRef(_inverse) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_element) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
            @:check2r (stdgo.Go.setRef(_inverse) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mod((stdgo.Go.setRef(_inverse) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_modulus) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
            if (@:check2r (stdgo.Go.setRef(_inverse) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).cmp(_one) != ((0 : stdgo.GoInt))) {
                @:check2r _t.errorf(("ModInverse(%d,%d)*%d%%%d=%d, not 1" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_element) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_modulus) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_element) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_modulus) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_inverse) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))));
            };
        };
        {
            var _n = (2 : stdgo.GoInt);
            while ((_n < (100 : stdgo.GoInt) : Bool)) {
                @:check2r (stdgo.Go.setRef(_modulus) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setInt64((_n : stdgo.GoInt64));
{
                    var _x = (1 : stdgo.GoInt);
                    while ((_x < _n : Bool)) {
                        @:check2r (stdgo.Go.setRef(_element) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setInt64((_x : stdgo.GoInt64));
@:check2r (stdgo.Go.setRef(_gcd) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).gCD(null, null, (stdgo.Go.setRef(_element) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_modulus) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
if (@:check2r (stdgo.Go.setRef(_gcd) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).cmp(_one) != ((0 : stdgo.GoInt))) {
                            {
                                _x++;
                                continue;
                            };
                        };
@:check2r (stdgo.Go.setRef(_inverse) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).modInverse((stdgo.Go.setRef(_element) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_modulus) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
@:check2r (stdgo.Go.setRef(_inverse) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mul((stdgo.Go.setRef(_inverse) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_element) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
@:check2r (stdgo.Go.setRef(_inverse) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mod((stdgo.Go.setRef(_inverse) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_modulus) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
if (@:check2r (stdgo.Go.setRef(_inverse) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).cmp(_one) != ((0 : stdgo.GoInt))) {
                            @:check2r _t.errorf(("ModInverse(%d,%d)*%d%%%d=%d, not 1" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_element) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_modulus) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_element) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_modulus) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_inverse) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))));
                        };
                        _x++;
                    };
                };
                _n++;
            };
        };
    }
