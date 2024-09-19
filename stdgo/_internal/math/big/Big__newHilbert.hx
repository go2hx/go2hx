package stdgo._internal.math.big;
function _newHilbert(_n:stdgo.GoInt):stdgo.Ref<stdgo._internal.math.big.Big_T_matrix.T_matrix> {
        var _a = stdgo._internal.math.big.Big__newMatrix._newMatrix(_n, _n);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < _n : Bool), _j++, {
                        _a._set(_i, _j, stdgo._internal.math.big.Big_newRat.newRat((1i64 : stdgo.GoInt64), (((_i + _j : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64)));
                    });
                };
            });
        };
        return _a;
    }
