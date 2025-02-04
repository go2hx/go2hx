package stdgo._internal.math.big;
function _basicSqr(_z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat):Void {
        var _n = (_x.length : stdgo.GoInt);
        var _tp = stdgo._internal.math.big.Big__getnat._getNat(((2 : stdgo.GoInt) * _n : stdgo.GoInt));
        var _t = (_tp : stdgo._internal.math.big.Big_t_nat.T_nat);
        _t._clear();
        {
            var __tmp__ = stdgo._internal.math.big.Big__mulww._mulWW(_x[(0 : stdgo.GoInt)], _x[(0 : stdgo.GoInt)]);
            _z[(1 : stdgo.GoInt)] = @:tmpset0 __tmp__._0;
            _z[(0 : stdgo.GoInt)] = @:tmpset0 __tmp__._1;
        };
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                var _d = (_x[(_i : stdgo.GoInt)] : stdgo._internal.math.big.Big_word.Word);
{
                    var __tmp__ = stdgo._internal.math.big.Big__mulww._mulWW(_d, _d);
                    _z[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)] = @:tmpset0 __tmp__._0;
                    _z[((2 : stdgo.GoInt) * _i : stdgo.GoInt)] = @:tmpset0 __tmp__._1;
                };
_t[((2 : stdgo.GoInt) * _i : stdgo.GoInt)] = stdgo._internal.math.big.Big__addmulvvw._addMulVVW((_t.__slice__(_i, ((2 : stdgo.GoInt) * _i : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat), (_x.__slice__((0 : stdgo.GoInt), _i) : stdgo._internal.math.big.Big_t_nat.T_nat), _d);
                _i++;
            };
        };
        _t[(((2 : stdgo.GoInt) * _n : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)] = stdgo._internal.math.big.Big__shlvu._shlVU((_t.__slice__((1 : stdgo.GoInt), (((2 : stdgo.GoInt) * _n : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat), (_t.__slice__((1 : stdgo.GoInt), (((2 : stdgo.GoInt) * _n : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat), (1u32 : stdgo.GoUInt));
        stdgo._internal.math.big.Big__addvv._addVV(_z, _z, _t);
        stdgo._internal.math.big.Big__putnat._putNat(_tp);
    }
