package stdgo._internal.math.big;
function testFloat64Distribution(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _add = (new stdgo.Slice<stdgo.GoInt64>(7, 7, ...[(0i64 : stdgo.GoInt64), (1i64 : stdgo.GoInt64), (3i64 : stdgo.GoInt64), (5i64 : stdgo.GoInt64), (7i64 : stdgo.GoInt64), (9i64 : stdgo.GoInt64), (11i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>);
        var _winc = (10i64 : stdgo.GoUInt64), _einc = (500 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L456"
        if (stdgo._internal.math.big.Big__long._long.value) {
            {
                final __tmp__0 = (1i64 : stdgo.GoUInt64);
                final __tmp__1 = (1 : stdgo.GoInt);
                _winc = @:binopAssign __tmp__0;
                _einc = @:binopAssign __tmp__1;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L460"
        for (__8 => _sign in ("+-" : stdgo.GoString)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L461"
            for (__9 => _a in _add) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L462"
                {
                    var _wid = ((0i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    while ((_wid < (60i64 : stdgo.GoUInt64) : Bool)) {
                        var _b = (((1i64 : stdgo.GoInt64) << _wid : stdgo.GoInt64) + _a : stdgo.GoInt64);
//"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L464"
                        if (_sign == ((45 : stdgo.GoInt32))) {
                            _b = -_b;
                        };
//"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L467"
                        {
                            var _exp = (-1100 : stdgo.GoInt);
                            while ((_exp < (1100 : stdgo.GoInt) : Bool)) {
                                var __0 = stdgo._internal.math.big.Big_newint.newInt(_b), __1 = stdgo._internal.math.big.Big_newint.newInt((1i64 : stdgo.GoInt64));
var _den = __1, _num = __0;
//"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L469"
                                if ((_exp > (0 : stdgo.GoInt) : Bool)) {
                                    //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L470"
                                    _num.lsh(_num, (_exp : stdgo.GoUInt));
                                } else {
                                    //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L472"
                                    _den.lsh(_den, (-_exp : stdgo.GoUInt));
                                };
var _r = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>).setFrac(_num, _den);
var __tmp__ = _r.float64(), _f:stdgo.GoFloat64 = __tmp__._0, __10:Bool = __tmp__._1;
//"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L477"
                                if (!stdgo._internal.math.big.Big__checkisbestapprox64._checkIsBestApprox64(_t, _f, _r)) {
                                    //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L479"
                                    _t.errorf(("(input was mantissa %#x, exp %d; f = %g (%b); f ~ %g; r = %v)" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_exp), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(stdgo._internal.math.Math_ldexp.ldexp((_b : stdgo.GoFloat64), _exp)), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)));
                                };
//"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L483"
                                stdgo._internal.math.big.Big__checknonlossyroundtrip64._checkNonLossyRoundtrip64(_t, _f);
                                _exp = (_exp + (_einc) : stdgo.GoInt);
                            };
                        };
                        _wid = (_wid + (_winc) : stdgo.GoUInt64);
                    };
                };
            };
        };
    }
