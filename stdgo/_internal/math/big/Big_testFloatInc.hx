package stdgo._internal.math.big;
function testFloatInc(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        for (__8 => _prec in stdgo._internal.math.big.Big__precList._precList) {
            if ((((1 : stdgo.GoInt) << _prec : stdgo.GoInt) < (10 : stdgo.GoInt) : Bool)) {
                continue;
            };
            var __0:stdgo._internal.math.big.Big_Float_.Float_ = ({} : stdgo._internal.math.big.Big_Float_.Float_), __1:stdgo._internal.math.big.Big_Float_.Float_ = ({} : stdgo._internal.math.big.Big_Float_.Float_);
var _one = __1, _x = __0;
            var _one__pointer__ = (stdgo.Go.setRef(_one) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
            var _x__pointer__ = (stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
            var _one__pointer__ = (stdgo.Go.setRef(_one) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
            var _x__pointer__ = (stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
            var _one__pointer__ = (stdgo.Go.setRef(_one) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
            var _x__pointer__ = (stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
            var _one__pointer__ = (stdgo.Go.setRef(_one) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
            var _x__pointer__ = (stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
            _x.setPrec(_prec);
            _one.setInt64((1i64 : stdgo.GoInt64));
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (10 : stdgo.GoInt) : Bool)) {
                    _x.add(_x__pointer__, _one__pointer__);
                    _i++;
                };
            };
            if (_x.cmp((stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>).setInt64((10i64 : stdgo.GoInt64))) != ((0 : stdgo.GoInt))) {
                _t.errorf(("prec = %d: got %s; want %d" : stdgo.GoString), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(stdgo.Go.asInterface(_x__pointer__)), stdgo.Go.toInterface((10 : stdgo.GoInt)));
            };
        };
    }
