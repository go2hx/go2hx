package stdgo._internal.math.big;
function testRatCmp(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (_i => _test in stdgo._internal.math.big.Big__ratcmptests._ratCmpTests) {
            var __tmp__ = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>).setString(_test._rat1?.__copy__()), _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = __tmp__._0, __8:Bool = __tmp__._1;
            var __tmp__ = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>).setString(_test._rat2?.__copy__()), _y:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = __tmp__._0, __9:Bool = __tmp__._1;
            var _out = (@:check2r _x.cmp(_y) : stdgo.GoInt);
            if (_out != (_test._out)) {
                @:check2r _t.errorf(("#%d got out = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_test._out));
            };
        };
    }
