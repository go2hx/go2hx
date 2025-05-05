package stdgo._internal.math.big;
function testProdZZ(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var mulZZ = function(_z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L120"
            return _z.mul(_x, _y);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L121"
        for (__8 => _a in stdgo._internal.math.big.Big__prodzz._prodZZ) {
            var _arg = (_a?.__copy__() : stdgo._internal.math.big.Big_t_argzz.T_argZZ);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L123"
            stdgo._internal.math.big.Big__testfunzz._testFunZZ(_t, ("MulZZ" : stdgo.GoString), mulZZ, _arg?.__copy__());
            _arg = (new stdgo._internal.math.big.Big_t_argzz.T_argZZ(_a._z, _a._y, _a._x) : stdgo._internal.math.big.Big_t_argzz.T_argZZ);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L126"
            stdgo._internal.math.big.Big__testfunzz._testFunZZ(_t, ("MulZZ symmetric" : stdgo.GoString), mulZZ, _arg?.__copy__());
        };
    }
