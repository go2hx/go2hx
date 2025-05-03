package stdgo._internal.math.big;
function _newInverseHilbert(_n:stdgo.GoInt):stdgo.Ref<stdgo._internal.math.big.Big_t_matrix.T_matrix> {
        var _a = stdgo._internal.math.big.Big__newmatrix._newMatrix(_n, _n);
        //"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L72"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L73"
                {
                    var _j = (0 : stdgo.GoInt);
                    while ((_j < _n : Bool)) {
                        var _x1 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>).setInt64((((_i + _j : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64));
var _x2 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>).setInt((stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).binomial(((_n + _i : stdgo.GoInt) : stdgo.GoInt64), (((_n - _j : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64)));
var _x3 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>).setInt((stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).binomial(((_n + _j : stdgo.GoInt) : stdgo.GoInt64), (((_n - _i : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64)));
var _x4 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>).setInt((stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).binomial(((_i + _j : stdgo.GoInt) : stdgo.GoInt64), (_i : stdgo.GoInt64)));
//"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L79"
                        _x1.mul(_x1, _x2);
//"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L80"
                        _x1.mul(_x1, _x3);
//"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L81"
                        _x1.mul(_x1, _x4);
//"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L82"
                        _x1.mul(_x1, _x4);
//"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L84"
                        if ((((_i + _j : stdgo.GoInt)) & (1 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L85"
                            _x1.neg(_x1);
                        };
//"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L88"
                        _a._set(_i, _j, _x1);
                        _j++;
                    };
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/hilbert_test.go#L91"
        return _a;
    }
