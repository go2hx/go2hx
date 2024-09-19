package stdgo._internal.math.big;
function testFloat64Distribution(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _add:stdgo.Slice<stdgo.GoInt64> = (new stdgo.Slice<stdgo.GoInt64>(7, 7, ...[(0i64 : stdgo.GoInt64), (1i64 : stdgo.GoInt64), (3i64 : stdgo.GoInt64), (5i64 : stdgo.GoInt64), (7i64 : stdgo.GoInt64), (9i64 : stdgo.GoInt64), (11i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>);
        var __0:stdgo.GoUInt64 = (10i64 : stdgo.GoUInt64), __1:stdgo.GoInt = (500 : stdgo.GoInt);
var _einc = __1, _winc = __0;
        if (stdgo._internal.math.big.Big__long._long.value) {
            {
                final __tmp__0 = (1i64 : stdgo.GoUInt64);
                final __tmp__1 = (1 : stdgo.GoInt);
                _winc = __tmp__0;
                _einc = __tmp__1;
            };
        };
        for (__14 => _sign in ("+-" : stdgo.GoString)) {
            for (__15 => _a in _add) {
                {
                    var _wid = ((0i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    stdgo.Go.cfor((_wid < (60i64 : stdgo.GoUInt64) : Bool), _wid = (_wid + (_winc) : stdgo.GoUInt64), {
                        var _b = (((1i64 : stdgo.GoInt64) << _wid : stdgo.GoInt64) + _a : stdgo.GoInt64);
                        if (_sign == ((45 : stdgo.GoInt32))) {
                            _b = -_b;
                        };
                        {
                            var _exp = (-1100 : stdgo.GoInt);
                            stdgo.Go.cfor((_exp < (1100 : stdgo.GoInt) : Bool), _exp = (_exp + (_einc) : stdgo.GoInt), {
                                var __0 = stdgo._internal.math.big.Big_newInt.newInt(_b), __1 = stdgo._internal.math.big.Big_newInt.newInt((1i64 : stdgo.GoInt64));
var _den = __1, _num = __0;
                                if ((_exp > (0 : stdgo.GoInt) : Bool)) {
                                    _num.lsh(_num, (_exp : stdgo.GoUInt));
                                } else {
                                    _den.lsh(_den, (-_exp : stdgo.GoUInt));
                                };
                                var _r = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>).setFrac(_num, _den);
                                var __tmp__ = _r.float64(), _f:stdgo.GoFloat64 = __tmp__._0, __16:Bool = __tmp__._1;
                                if (!stdgo._internal.math.big.Big__checkIsBestApprox64._checkIsBestApprox64(_t, _f, _r)) {
                                    _t.errorf(("(input was mantissa %#x, exp %d; f = %g (%b); f ~ %g; r = %v)" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_exp), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(stdgo._internal.math.Math_ldexp.ldexp((_b : stdgo.GoFloat64), _exp)), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)));
                                };
                                stdgo._internal.math.big.Big__checkNonLossyRoundtrip64._checkNonLossyRoundtrip64(_t, _f);
                            });
                        };
                    });
                };
            };
        };
    }
