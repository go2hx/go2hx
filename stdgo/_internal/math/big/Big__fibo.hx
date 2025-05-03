package stdgo._internal.math.big;
function _fibo(_n:stdgo.GoInt):stdgo._internal.math.big.Big_t_nat.T_nat {
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L583"
        {
            final __value__ = _n;
            if (__value__ == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L585"
                return null;
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L587"
                return (new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>(1, 1, ...[(1u32 : stdgo._internal.math.big.Big_word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_t_nat.T_nat);
            };
        };
        var _f0 = (stdgo._internal.math.big.Big__fibo._fibo((0 : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _f1 = (stdgo._internal.math.big.Big__fibo._fibo((1 : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _f2:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L592"
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                _f2 = _f2._add(_f0, _f1);
{
                    final __tmp__0 = _f1;
                    final __tmp__1 = _f2;
                    final __tmp__2 = _f0;
                    _f0 = @:binopAssign __tmp__0;
                    _f1 = @:binopAssign __tmp__1;
                    _f2 = @:binopAssign __tmp__2;
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L596"
        return _f1;
    }
