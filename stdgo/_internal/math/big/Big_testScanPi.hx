package stdgo._internal.math.big;
function testScanPi(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _x:stdgo._internal.math.big.Big_T_nat.T_nat = new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0);
        var __tmp__ = _x._scan(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(stdgo._internal.math.big.Big__pi._pi?.__copy__())), (10 : stdgo.GoInt), false), _z:stdgo._internal.math.big.Big_T_nat.T_nat = __tmp__._0, __14:stdgo.GoInt = __tmp__._1, __15:stdgo.GoInt = __tmp__._2, _err:stdgo.Error = __tmp__._3;
        if (_err != null) {
            _t.errorf(("scanning pi: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {
            var _s = ((_z._utoa((10 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_s != (stdgo._internal.math.big.Big__pi._pi)) {
                _t.errorf(("scanning pi: got %s" : stdgo.GoString), stdgo.Go.toInterface(_s));
            };
        };
    }
