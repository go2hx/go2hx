package stdgo._internal.math.big;
function _fibo(_n:stdgo.GoInt):stdgo._internal.math.big.Big_t_nat.T_nat {
        {
            final __value__ = _n;
            if (__value__ == ((0 : stdgo.GoInt))) {
                return null;
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                return (new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>(1, 1, ...[(1u32 : stdgo._internal.math.big.Big_word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_t_nat.T_nat);
            };
        };
        var _f0 = (stdgo._internal.math.big.Big__fibo._fibo((0 : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _f1 = (stdgo._internal.math.big.Big__fibo._fibo((1 : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _f2:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                _f2 = _f2._add(_f0, _f1);
{
                    final __tmp__0 = _f1;
                    final __tmp__1 = _f2;
                    final __tmp__2 = _f0;
                    _f0 = __tmp__0;
                    _f1 = __tmp__1;
                    _f2 = __tmp__2;
                };
                _i++;
            };
        };
        return _f1;
    }
