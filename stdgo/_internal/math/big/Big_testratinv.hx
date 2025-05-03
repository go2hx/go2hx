package stdgo._internal.math.big;
function testRatInv(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _zero = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L144"
        for (__8 => _a in stdgo._internal.math.big.Big__setstringtests._setStringTests) {
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>).setString(_a._in?.__copy__()), _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = __tmp__._0, _ok:Bool = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L146"
            if (!_ok) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L147"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L149"
            if (_x.cmp(_zero) == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L150"
                continue;
            };
            var _e = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>).setFrac(_x.denom(), _x.num());
            var _z = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>).inv(_x);
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L154"
            if (_z.cmp(_e) != ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L155"
                _t.errorf(("got Inv(%v) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)), stdgo.Go.toInterface(stdgo.Go.asInterface(_e)));
            };
        };
    }
