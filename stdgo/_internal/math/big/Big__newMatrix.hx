package stdgo._internal.math.big;
function _newMatrix(_n:stdgo.GoInt, _m:stdgo.GoInt):stdgo.Ref<stdgo._internal.math.big.Big_T_matrix.T_matrix> {
        if (!((((0 : stdgo.GoInt) <= _n : Bool) && ((0 : stdgo.GoInt) <= _m : Bool) : Bool))) {
            throw stdgo.Go.toInterface(("illegal matrix" : stdgo.GoString));
        };
        var _a = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_T_matrix.T_matrix)) : stdgo.Ref<stdgo._internal.math.big.Big_T_matrix.T_matrix>);
        _a._n = _n;
        _a._m = _m;
        _a._a = (new stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>>((_n * _m : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>>);
        return _a;
    }
