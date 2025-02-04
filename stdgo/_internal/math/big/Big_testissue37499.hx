package stdgo._internal.math.big;
function testIssue37499(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _u = (stdgo._internal.math.big.Big__natfromstring._natFromString(("0x2b6c385a05be027f5c22005b63c42a1165b79ff510e1706b39f8489c1d28e57bb5ba4ef9fd9387a3e344402c0a453381" : stdgo.GoString)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _v = (stdgo._internal.math.big.Big__natfromstring._natFromString(("0x2b6c385a05be027f5c22005b63c42a1165b79ff510e1706c" : stdgo.GoString)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _q = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._make((8 : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        _q._divBasic(_u, _v);
        _q = _q._norm();
        {
            var _s = ((_q._utoa((16 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_s != (("fffffffffffffffffffffffffffffffffffffffffffffffb" : stdgo.GoString))) {
                @:check2r _t.fatalf(("incorrect quotient: %s" : stdgo.GoString), stdgo.Go.toInterface(_s));
            };
        };
    }
