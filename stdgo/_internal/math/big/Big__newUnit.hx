package stdgo._internal.math.big;
function _newUnit(_n:stdgo.GoInt):stdgo.Ref<stdgo._internal.math.big.Big_T_matrix.T_matrix> {
        var _a = stdgo._internal.math.big.Big__newMatrix._newMatrix(_n, _n);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                {
                    var _j = (0 : stdgo.GoInt);
                    while ((_j < _n : Bool)) {
                        var _x = stdgo._internal.math.big.Big_newRat.newRat((0i64 : stdgo.GoInt64), (1i64 : stdgo.GoInt64));
if (_i == (_j)) {
                            _x.setInt64((1i64 : stdgo.GoInt64));
                        };
_a._set(_i, _j, _x);
                        _j++;
                    };
                };
                _i++;
            };
        };
        return _a;
    }
