package stdgo._internal.math.big;
function testRatCmp(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (_i => _test in stdgo._internal.math.big.Big__ratCmpTests._ratCmpTests) {
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>).setString(_test._rat1?.__copy__()), _x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = __tmp__._0, __14:Bool = __tmp__._1;
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>).setString(_test._rat2?.__copy__()), _y:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = __tmp__._0, __15:Bool = __tmp__._1;
            var _out = (_x.cmp(_y) : stdgo.GoInt);
            if (_out != (_test._out)) {
                _t.errorf(("#%d got out = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_test._out));
            };
        };
    }