package stdgo._internal.math.big;
function testFloat32Distribution(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _add = (new stdgo.Slice<stdgo.GoInt64>(7, 7, ...[(0i64 : stdgo.GoInt64), (1i64 : stdgo.GoInt64), (3i64 : stdgo.GoInt64), (5i64 : stdgo.GoInt64), (7i64 : stdgo.GoInt64), (9i64 : stdgo.GoInt64), (11i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>);
        var __0 = (5i64 : stdgo.GoUInt64), __1 = (15 : stdgo.GoInt);
var _einc = __1, _winc = __0;
        if (stdgo._internal.math.big.Big__long._long.value) {
            {
                final __tmp__0 = (1i64 : stdgo.GoUInt64);
                final __tmp__1 = (1 : stdgo.GoInt);
                _winc = __tmp__0;
                _einc = __tmp__1;
            };
        };
        for (__8 => _sign in ("+-" : stdgo.GoString)) {
            for (__9 => _a in _add) {
                {
                    var _wid = ((0i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    while ((_wid < (30i64 : stdgo.GoUInt64) : Bool)) {
                        var _b = (((1i64 : stdgo.GoInt64) << _wid : stdgo.GoInt64) + _a : stdgo.GoInt64);
if (_sign == ((45 : stdgo.GoInt32))) {
                            _b = -_b;
                        };
{
                            var _exp = (-150 : stdgo.GoInt);
                            while ((_exp < (150 : stdgo.GoInt) : Bool)) {
                                var __0 = stdgo._internal.math.big.Big_newint.newInt(_b), __1 = stdgo._internal.math.big.Big_newint.newInt((1i64 : stdgo.GoInt64));
var _den = __1, _num = __0;
if ((_exp > (0 : stdgo.GoInt) : Bool)) {
                                    @:check2r _num.lsh(_num, (_exp : stdgo.GoUInt));
                                } else {
                                    @:check2r _den.lsh(_den, (-_exp : stdgo.GoUInt));
                                };
var _r = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>).setFrac(_num, _den);
var __tmp__ = @:check2r _r.float32(), _f:stdgo.GoFloat32 = __tmp__._0, __10:Bool = __tmp__._1;
if (!stdgo._internal.math.big.Big__checkisbestapprox32._checkIsBestApprox32(_t, _f, _r)) {
                                    @:check2r _t.errorf(("(input was mantissa %#x, exp %d; f = %g (%b); f ~ %g; r = %v)" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_exp), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(stdgo._internal.math.Math_ldexp.ldexp((_b : stdgo.GoFloat64), _exp)), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)));
                                };
stdgo._internal.math.big.Big__checknonlossyroundtrip32._checkNonLossyRoundtrip32(_t, _f);
                                _exp = (_exp + (_einc) : stdgo.GoInt);
                            };
                        };
                        _wid = (_wid + (_winc) : stdgo.GoUInt64);
                    };
                };
            };
        };
    }
