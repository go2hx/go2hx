package stdgo._internal.math.big;
function _testBitFunSelf(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _msg:stdgo.GoString, _f:stdgo._internal.math.big.Big_T_bitFun.T_bitFun, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _exp:stdgo.GoString):Void {
        var _self = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        _self.set(_x);
        var _expected = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        _expected.setString(_exp?.__copy__(), (0 : stdgo.GoInt));
        _self = _f(_self, _self, _y);
        if (_self.cmp(_expected) != ((0 : stdgo.GoInt))) {
            _t.errorf(("%s: got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(stdgo.Go.asInterface(_self)), stdgo.Go.toInterface(stdgo.Go.asInterface(_expected)));
        };
    }
