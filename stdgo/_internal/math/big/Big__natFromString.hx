package stdgo._internal.math.big;
function _natFromString(_s:stdgo.GoString):stdgo._internal.math.big.Big_T_nat.T_nat {
        var __tmp__ = (new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_T_nat.T_nat)._scan(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(_s?.__copy__())), (0 : stdgo.GoInt), false), _x:stdgo._internal.math.big.Big_T_nat.T_nat = __tmp__._0, __14:stdgo.GoInt = __tmp__._1, __15:stdgo.GoInt = __tmp__._2, _err:stdgo.Error = __tmp__._3;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        return _x;
    }
