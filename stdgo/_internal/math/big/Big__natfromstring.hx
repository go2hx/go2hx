package stdgo._internal.math.big;
function _natFromString(_s:stdgo.GoString):stdgo._internal.math.big.Big_t_nat.T_nat {
        var __tmp__ = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._scan(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newreader.newReader(_s?.__copy__())), (0 : stdgo.GoInt), false), _x:stdgo._internal.math.big.Big_t_nat.T_nat = __tmp__._0, __8:stdgo.GoInt = __tmp__._1, __9:stdgo.GoInt = __tmp__._2, _err:stdgo.Error = __tmp__._3;
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L92"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L93"
            throw stdgo.Go.toInterface(_err);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L95"
        return _x;
    }
