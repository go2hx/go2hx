package stdgo._internal.math.big;
function testRatSetStringZero(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>).setString(("0" : stdgo.GoString)), _got:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = __tmp__._0, __8:Bool = __tmp__._1;
        var _want = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>).setInt64((0i64 : stdgo.GoInt64));
        if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)))) {
            @:check2r _t.errorf(("got %#+v, want %#+v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
        };
    }
