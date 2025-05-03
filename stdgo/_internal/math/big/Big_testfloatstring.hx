package stdgo._internal.math.big;
function testFloatString(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L264"
        for (_i => _test in stdgo._internal.math.big.Big__floatstringtests._floatStringTests) {
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>).setString(_test._in?.__copy__()), _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = __tmp__._0, __8:Bool = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L267"
            if (_x.floatString(_test._prec) != (_test._out)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L268"
                _t.errorf(("#%d got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_x.floatString(_test._prec)), stdgo.Go.toInterface(_test._out));
            };
        };
    }
