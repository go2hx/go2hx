package stdgo._internal.math.big;
function _getNat(_n:stdgo.GoInt):stdgo.Ref<stdgo._internal.math.big.Big_T_nat.T_nat> {
        var _z:stdgo.Ref<stdgo._internal.math.big.Big_T_nat.T_nat> = (null : stdgo.Ref<stdgo._internal.math.big.Big_T_nat.T_nat>);
        {
            var _v = (stdgo._internal.math.big.Big__natPool._natPool.get() : stdgo.AnyInterface);
            if (_v != null) {
                _z = (stdgo.Go.typeAssert((_v : stdgo.Ref<stdgo._internal.math.big.Big_T_nat.T_nat>)) : stdgo.Ref<stdgo._internal.math.big.Big_T_nat.T_nat>);
            };
        };
        if ((_z == null || (_z : Dynamic).__nil__)) {
            _z = (stdgo.Go.setRef(new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0)) : stdgo.Ref<stdgo._internal.math.big.Big_T_nat.T_nat>);
        };
        (_z : stdgo._internal.math.big.Big_T_nat.T_nat).__setData__(_z._make(_n));
        if ((_n > (0 : stdgo.GoInt) : Bool)) {
            ((_z : stdgo._internal.math.big.Big_T_nat.T_nat))[(0 : stdgo.GoInt)] = (1043915u32 : stdgo._internal.math.big.Big_Word.Word);
        };
        return _z;
    }
