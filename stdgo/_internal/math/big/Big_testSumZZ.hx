package stdgo._internal.math.big;
function testSumZZ(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var addZZ = function(_z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> {
            return _z.add(_x, _y);
        };
        var subZZ = function(_z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> {
            return _z.sub(_x, _y);
        };
        for (__14 => _a in stdgo._internal.math.big.Big__sumZZ._sumZZ) {
            var _arg = (_a?.__copy__() : stdgo._internal.math.big.Big_T_argZZ.T_argZZ);
            stdgo._internal.math.big.Big__testFunZZ._testFunZZ(_t, ("AddZZ" : stdgo.GoString), addZZ, _arg?.__copy__());
            _arg = (new stdgo._internal.math.big.Big_T_argZZ.T_argZZ(_a._z, _a._y, _a._x) : stdgo._internal.math.big.Big_T_argZZ.T_argZZ);
            stdgo._internal.math.big.Big__testFunZZ._testFunZZ(_t, ("AddZZ symmetric" : stdgo.GoString), addZZ, _arg?.__copy__());
            _arg = (new stdgo._internal.math.big.Big_T_argZZ.T_argZZ(_a._x, _a._z, _a._y) : stdgo._internal.math.big.Big_T_argZZ.T_argZZ);
            stdgo._internal.math.big.Big__testFunZZ._testFunZZ(_t, ("SubZZ" : stdgo.GoString), subZZ, _arg?.__copy__());
            _arg = (new stdgo._internal.math.big.Big_T_argZZ.T_argZZ(_a._y, _a._z, _a._x) : stdgo._internal.math.big.Big_T_argZZ.T_argZZ);
            stdgo._internal.math.big.Big__testFunZZ._testFunZZ(_t, ("SubZZ symmetric" : stdgo.GoString), subZZ, _arg?.__copy__());
        };
    }
