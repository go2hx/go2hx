package stdgo._internal.math.big;
function _newHilbert(_n:stdgo.GoInt):stdgo.Ref<stdgo._internal.math.big.Big_t_matrix.T_matrix> {
        var _a = stdgo._internal.math.big.Big__newmatrix._newMatrix(_n, _n);
        //"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L62"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L63"
                {
                    var _j = (0 : stdgo.GoInt);
                    while ((_j < _n : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L64"
                        _a._set(_i, _j, stdgo._internal.math.big.Big_newrat.newRat((1i64 : stdgo.GoInt64), (((_i + _j : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64)));
                        _j++;
                    };
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L67"
        return _a;
    }
