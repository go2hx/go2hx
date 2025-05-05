package stdgo._internal.math.big;
function _newUnit(_n:stdgo.GoInt):stdgo.Ref<stdgo._internal.math.big.Big_t_matrix.T_matrix> {
        var _a = stdgo._internal.math.big.Big__newmatrix._newMatrix(_n, _n);
        //"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L48"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L49"
                {
                    var _j = (0 : stdgo.GoInt);
                    while ((_j < _n : Bool)) {
                        var _x = stdgo._internal.math.big.Big_newrat.newRat((0i64 : stdgo.GoInt64), (1i64 : stdgo.GoInt64));
//"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L51"
                        if (_i == (_j)) {
                            //"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L52"
                            _x.setInt64((1i64 : stdgo.GoInt64));
                        };
//"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L54"
                        _a._set(_i, _j, _x);
                        _j++;
                    };
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L57"
        return _a;
    }
