package stdgo._internal.math.big;
function _basicSqr(_z:stdgo._internal.math.big.Big_T_nat.T_nat, _x:stdgo._internal.math.big.Big_T_nat.T_nat):Void {
        var _n = (_x.length : stdgo.GoInt);
        var _tp = stdgo._internal.math.big.Big__getNat._getNat(((2 : stdgo.GoInt) * _n : stdgo.GoInt));
        var _t = (_tp : stdgo._internal.math.big.Big_T_nat.T_nat);
        _t._clear();
        {
            var __tmp__ = stdgo._internal.math.big.Big__mulWW._mulWW(_x[(0 : stdgo.GoInt)], _x[(0 : stdgo.GoInt)]);
            _z[(1 : stdgo.GoInt)] = __tmp__._0;
            _z[(0 : stdgo.GoInt)] = __tmp__._1;
        };
        {
            var _i = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                var _d = (_x[(_i : stdgo.GoInt)] : stdgo._internal.math.big.Big_Word.Word);
                {
                    var __tmp__ = stdgo._internal.math.big.Big__mulWW._mulWW(_d, _d);
                    _z[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)] = __tmp__._0;
                    _z[((2 : stdgo.GoInt) * _i : stdgo.GoInt)] = __tmp__._1;
                };
                _t[((2 : stdgo.GoInt) * _i : stdgo.GoInt)] = stdgo._internal.math.big.Big__addMulVVW._addMulVVW((_t.__slice__(_i, ((2 : stdgo.GoInt) * _i : stdgo.GoInt)) : stdgo._internal.math.big.Big_T_nat.T_nat), (_x.__slice__((0 : stdgo.GoInt), _i) : stdgo._internal.math.big.Big_T_nat.T_nat), _d);
            });
        };
        _t[(((2 : stdgo.GoInt) * _n : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)] = stdgo._internal.math.big.Big__shlVU._shlVU((_t.__slice__((1 : stdgo.GoInt), (((2 : stdgo.GoInt) * _n : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo._internal.math.big.Big_T_nat.T_nat), (_t.__slice__((1 : stdgo.GoInt), (((2 : stdgo.GoInt) * _n : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo._internal.math.big.Big_T_nat.T_nat), (1u32 : stdgo.GoUInt));
        stdgo._internal.math.big.Big__addVV._addVV(_z, _z, _t);
        stdgo._internal.math.big.Big__putNat._putNat(_tp);
    }
