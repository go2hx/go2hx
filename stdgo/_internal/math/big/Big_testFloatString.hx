package stdgo._internal.math.big;
function testFloatString(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (_i => _test in stdgo._internal.math.big.Big__floatStringTests._floatStringTests) {
            var __tmp__ = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>).setString(_test._in?.__copy__()), _x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = __tmp__._0, __8:Bool = __tmp__._1;
            if (@:check2r _x.floatString(_test._prec) != (_test._out)) {
                @:check2r _t.errorf(("#%d got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(@:check2r _x.floatString(_test._prec)), stdgo.Go.toInterface(_test._out));
            };
        };
    }
