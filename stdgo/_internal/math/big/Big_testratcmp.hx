package stdgo._internal.math.big;
function testRatCmp(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L83"
        for (_i => _test in stdgo._internal.math.big.Big__ratcmptests._ratCmpTests) {
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>).setString(_test._rat1?.__copy__()), _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = __tmp__._0, __8:Bool = __tmp__._1;
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>).setString(_test._rat2?.__copy__()), _y:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = __tmp__._0, __9:Bool = __tmp__._1;
            var _out = (_x.cmp(_y) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L88"
            if (_out != (_test._out)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L89"
                _t.errorf(("#%d got out = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_test._out));
            };
        };
    }
