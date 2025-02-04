package stdgo._internal.math.big;
function _newInverseHilbert(_n:stdgo.GoInt):stdgo.Ref<stdgo._internal.math.big.Big_t_matrix.T_matrix> {
        var _a = stdgo._internal.math.big.Big__newmatrix._newMatrix(_n, _n);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                {
                    var _j = (0 : stdgo.GoInt);
                    while ((_j < _n : Bool)) {
                        var _x1 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>).setInt64((((_i + _j : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64));
var _x2 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>).setInt(@:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).binomial(((_n + _i : stdgo.GoInt) : stdgo.GoInt64), (((_n - _j : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64)));
var _x3 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>).setInt(@:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).binomial(((_n + _j : stdgo.GoInt) : stdgo.GoInt64), (((_n - _i : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64)));
var _x4 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>).setInt(@:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).binomial(((_i + _j : stdgo.GoInt) : stdgo.GoInt64), (_i : stdgo.GoInt64)));
@:check2r _x1.mul(_x1, _x2);
@:check2r _x1.mul(_x1, _x3);
@:check2r _x1.mul(_x1, _x4);
@:check2r _x1.mul(_x1, _x4);
if ((((_i + _j : stdgo.GoInt)) & (1 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                            @:check2r _x1.neg(_x1);
                        };
@:check2r _a._set(_i, _j, _x1);
                        _j++;
                    };
                };
                _i++;
            };
        };
        return _a;
    }
