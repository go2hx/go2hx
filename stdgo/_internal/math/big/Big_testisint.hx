package stdgo._internal.math.big;
function testIsInt(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _one = stdgo._internal.math.big.Big_newint.newInt((1i64 : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L96"
        for (__8 => _a in stdgo._internal.math.big.Big__setstringtests._setStringTests) {
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>).setString(_a._in?.__copy__()), _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = __tmp__._0, _ok:Bool = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L98"
            if (!_ok) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L99"
                continue;
            };
            var _i = (_x.isInt() : Bool);
            var _e = (_x.denom().cmp(_one) == ((0 : stdgo.GoInt)) : Bool);
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L103"
            if (_i != (_e)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L104"
                _t.errorf(("got IsInt(%v) == %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_e));
            };
        };
    }
