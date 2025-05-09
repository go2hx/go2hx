package stdgo._internal.math.big;
function testSumZZ(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var addZZ = function(_z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L102"
            return _z.add(_x, _y);
        };
        var subZZ = function(_z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L103"
            return _z.sub(_x, _y);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L104"
        for (__8 => _a in stdgo._internal.math.big.Big__sumzz._sumZZ) {
            var _arg = (_a?.__copy__() : stdgo._internal.math.big.Big_t_argzz.T_argZZ);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L106"
            stdgo._internal.math.big.Big__testfunzz._testFunZZ(_t, ("AddZZ" : stdgo.GoString), addZZ, _arg?.__copy__());
            _arg = (new stdgo._internal.math.big.Big_t_argzz.T_argZZ(_a._z, _a._y, _a._x) : stdgo._internal.math.big.Big_t_argzz.T_argZZ);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L109"
            stdgo._internal.math.big.Big__testfunzz._testFunZZ(_t, ("AddZZ symmetric" : stdgo.GoString), addZZ, _arg?.__copy__());
            _arg = (new stdgo._internal.math.big.Big_t_argzz.T_argZZ(_a._x, _a._z, _a._y) : stdgo._internal.math.big.Big_t_argzz.T_argZZ);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L112"
            stdgo._internal.math.big.Big__testfunzz._testFunZZ(_t, ("SubZZ" : stdgo.GoString), subZZ, _arg?.__copy__());
            _arg = (new stdgo._internal.math.big.Big_t_argzz.T_argZZ(_a._y, _a._z, _a._x) : stdgo._internal.math.big.Big_t_argzz.T_argZZ);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L115"
            stdgo._internal.math.big.Big__testfunzz._testFunZZ(_t, ("SubZZ symmetric" : stdgo.GoString), subZZ, _arg?.__copy__());
        };
    }
