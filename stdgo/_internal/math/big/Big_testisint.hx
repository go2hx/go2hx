package stdgo._internal.math.big;
function testIsInt(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _one = stdgo._internal.math.big.Big_newint.newInt((1i64 : stdgo.GoInt64));
        for (__8 => _a in stdgo._internal.math.big.Big__setstringtests._setStringTests) {
            var __tmp__ = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>).setString(_a._in?.__copy__()), _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                continue;
            };
            var _i = (@:check2r _x.isInt() : Bool);
            var _e = (@:check2r @:check2r _x.denom().cmp(_one) == ((0 : stdgo.GoInt)) : Bool);
            if (_i != (_e)) {
                @:check2r _t.errorf(("got IsInt(%v) == %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_e));
            };
        };
    }
