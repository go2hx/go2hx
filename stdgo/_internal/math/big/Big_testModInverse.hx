package stdgo._internal.math.big;
function testModInverse(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __0:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_), __1:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_), __2:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_), __3:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_);
var _inverse = __3, _gcd = __2, _modulus = __1, _element = __0;
        var _inverse__pointer__ = (stdgo.Go.setRef(_inverse) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _gcd__pointer__ = (stdgo.Go.setRef(_gcd) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _modulus__pointer__ = (stdgo.Go.setRef(_modulus) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _element__pointer__ = (stdgo.Go.setRef(_element) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _inverse__pointer__ = (stdgo.Go.setRef(_inverse) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _gcd__pointer__ = (stdgo.Go.setRef(_gcd) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _modulus__pointer__ = (stdgo.Go.setRef(_modulus) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _element__pointer__ = (stdgo.Go.setRef(_element) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _inverse__pointer__ = (stdgo.Go.setRef(_inverse) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _gcd__pointer__ = (stdgo.Go.setRef(_gcd) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _modulus__pointer__ = (stdgo.Go.setRef(_modulus) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _element__pointer__ = (stdgo.Go.setRef(_element) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _inverse__pointer__ = (stdgo.Go.setRef(_inverse) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _gcd__pointer__ = (stdgo.Go.setRef(_gcd) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _modulus__pointer__ = (stdgo.Go.setRef(_modulus) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _element__pointer__ = (stdgo.Go.setRef(_element) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _one = stdgo._internal.math.big.Big_newInt.newInt((1i64 : stdgo.GoInt64));
        for (__8 => _test in stdgo._internal.math.big.Big__modInverseTests._modInverseTests) {
            _element__pointer__.setString(_test._element?.__copy__(), (10 : stdgo.GoInt));
            _modulus__pointer__.setString(_test._modulus?.__copy__(), (10 : stdgo.GoInt));
            _inverse__pointer__.modInverse(_element__pointer__, _modulus__pointer__);
            _inverse__pointer__.mul(_inverse__pointer__, _element__pointer__);
            _inverse__pointer__.mod(_inverse__pointer__, _modulus__pointer__);
            if (_inverse__pointer__.cmp(_one) != ((0 : stdgo.GoInt))) {
                _t.errorf(("ModInverse(%d,%d)*%d%%%d=%d, not 1" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_element__pointer__)), stdgo.Go.toInterface(stdgo.Go.asInterface(_modulus__pointer__)), stdgo.Go.toInterface(stdgo.Go.asInterface(_element__pointer__)), stdgo.Go.toInterface(stdgo.Go.asInterface(_modulus__pointer__)), stdgo.Go.toInterface(stdgo.Go.asInterface(_inverse__pointer__)));
            };
        };
        {
            var _n = (2 : stdgo.GoInt);
            while ((_n < (100 : stdgo.GoInt) : Bool)) {
                _modulus__pointer__.setInt64((_n : stdgo.GoInt64));
{
                    var _x = (1 : stdgo.GoInt);
                    while ((_x < _n : Bool)) {
                        _element__pointer__.setInt64((_x : stdgo.GoInt64));
_gcd__pointer__.gcd(null, null, _element__pointer__, _modulus__pointer__);
if (_gcd__pointer__.cmp(_one) != ((0 : stdgo.GoInt))) {
                            {
                                _x++;
                                continue;
                            };
                        };
_inverse__pointer__.modInverse(_element__pointer__, _modulus__pointer__);
_inverse__pointer__.mul(_inverse__pointer__, _element__pointer__);
_inverse__pointer__.mod(_inverse__pointer__, _modulus__pointer__);
if (_inverse__pointer__.cmp(_one) != ((0 : stdgo.GoInt))) {
                            _t.errorf(("ModInverse(%d,%d)*%d%%%d=%d, not 1" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_element__pointer__)), stdgo.Go.toInterface(stdgo.Go.asInterface(_modulus__pointer__)), stdgo.Go.toInterface(stdgo.Go.asInterface(_element__pointer__)), stdgo.Go.toInterface(stdgo.Go.asInterface(_modulus__pointer__)), stdgo.Go.toInterface(stdgo.Go.asInterface(_inverse__pointer__)));
                        };
                        _x++;
                    };
                };
                _n++;
            };
        };
    }
