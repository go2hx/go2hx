package stdgo._internal.math.big;
function testFloatInc(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        for (__8 => _prec in stdgo._internal.math.big.Big__preclist._precList) {
            if ((((1 : stdgo.GoInt) << _prec : stdgo.GoInt) < (10 : stdgo.GoInt) : Bool)) {
                continue;
            };
            var __0:stdgo._internal.math.big.Big_float_.Float_ = ({} : stdgo._internal.math.big.Big_float_.Float_), __1:stdgo._internal.math.big.Big_float_.Float_ = ({} : stdgo._internal.math.big.Big_float_.Float_);
var _one = __1, _x = __0;
            @:check2 _x.setPrec(_prec);
            @:check2 _one.setInt64((1i64 : stdgo.GoInt64));
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (10 : stdgo.GoInt) : Bool)) {
                    @:check2 _x.add((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>), (stdgo.Go.setRef(_one) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>));
                    _i++;
                };
            };
            if (@:check2 _x.cmp(@:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setInt64((10i64 : stdgo.GoInt64))) != ((0 : stdgo.GoInt))) {
                @:check2r _t.errorf(("prec = %d: got %s; want %d" : stdgo.GoString), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>))), stdgo.Go.toInterface((10 : stdgo.GoInt)));
            };
        };
    }
