package stdgo._internal.math.big;
function testProdZZ(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var mulZZ = function(_z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> {
            return @:check2r _z.mul(_x, _y);
        };
        for (__8 => _a in stdgo._internal.math.big.Big__prodZZ._prodZZ) {
            var _arg = (_a?.__copy__() : stdgo._internal.math.big.Big_T_argZZ.T_argZZ);
            stdgo._internal.math.big.Big__testFunZZ._testFunZZ(_t, ("MulZZ" : stdgo.GoString), mulZZ, _arg?.__copy__());
            _arg = (new stdgo._internal.math.big.Big_T_argZZ.T_argZZ(_a._z, _a._y, _a._x) : stdgo._internal.math.big.Big_T_argZZ.T_argZZ);
            stdgo._internal.math.big.Big__testFunZZ._testFunZZ(_t, ("MulZZ symmetric" : stdgo.GoString), mulZZ, _arg?.__copy__());
        };
    }
