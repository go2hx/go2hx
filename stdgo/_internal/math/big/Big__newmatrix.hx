package stdgo._internal.math.big;
function _newMatrix(_n:stdgo.GoInt, _m:stdgo.GoInt):stdgo.Ref<stdgo._internal.math.big.Big_t_matrix.T_matrix> {
        if (!((((0 : stdgo.GoInt) <= _n : Bool) && ((0 : stdgo.GoInt) <= _m : Bool) : Bool))) {
            throw stdgo.Go.toInterface(("illegal matrix" : stdgo.GoString));
        };
        var _a = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_t_matrix.T_matrix)) : stdgo.Ref<stdgo._internal.math.big.Big_t_matrix.T_matrix>);
        (@:checkr _a ?? throw "null pointer dereference")._n = _n;
        (@:checkr _a ?? throw "null pointer dereference")._m = _m;
        (@:checkr _a ?? throw "null pointer dereference")._a = (new stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>>((_n * _m : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>>);
        return _a;
    }
