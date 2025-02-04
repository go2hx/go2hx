package stdgo._internal.math.big;
function testRatSign(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _zero = stdgo._internal.math.big.Big_newrat.newRat((0i64 : stdgo.GoInt64), (1i64 : stdgo.GoInt64));
        for (__8 => _a in stdgo._internal.math.big.Big__setstringtests._setStringTests) {
            var __tmp__ = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>).setString(_a._in?.__copy__()), _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                continue;
            };
            var _s = (@:check2r _x.sign() : stdgo.GoInt);
            var _e = (@:check2r _x.cmp(_zero) : stdgo.GoInt);
            if (_s != (_e)) {
                @:check2r _t.errorf(("got %d; want %d for z = %v" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_e), stdgo.Go.toInterface((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>>)));
            };
        };
    }
