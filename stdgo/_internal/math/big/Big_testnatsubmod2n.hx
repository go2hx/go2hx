package stdgo._internal.math.big;
function testNatSubMod2N(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L776"
        for (__8 => _mode in (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("noalias" : stdgo.GoString), ("aliasX" : stdgo.GoString), ("aliasY" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L777"
            _t.run(_mode?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
                //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L778"
                for (__17 => _tt in stdgo._internal.math.big.Big__submod2ntests._subMod2NTests) {
                    var _x0 = (stdgo._internal.math.big.Big__natfromstring._natFromString(_tt._x?.__copy__()) : stdgo._internal.math.big.Big_t_nat.T_nat);
                    var _y0 = (stdgo._internal.math.big.Big__natfromstring._natFromString(_tt._y?.__copy__()) : stdgo._internal.math.big.Big_t_nat.T_nat);
                    var _want = (stdgo._internal.math.big.Big__natfromstring._natFromString(_tt._z?.__copy__()) : stdgo._internal.math.big.Big_t_nat.T_nat);
                    var _x = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._set(_x0) : stdgo._internal.math.big.Big_t_nat.T_nat);
                    var _y = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._set(_y0) : stdgo._internal.math.big.Big_t_nat.T_nat);
                    var _z:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
                    //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L785"
                    {
                        final __value__ = _mode;
                        if (__value__ == (("aliasX" : stdgo.GoString))) {
                            _z = _x;
                        } else if (__value__ == (("aliasY" : stdgo.GoString))) {
                            _z = _y;
                        };
                    };
                    _z = _z._subMod2N(_x, _y, _tt._n);
                    //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L792"
                    if (_z._cmp(_want) != ((0 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L793"
                        _t.fatalf(("subMod2N(%d, %d, %d) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x0)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y0)), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
                    };
                    //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L795"
                    if (((_mode != ("aliasX" : stdgo.GoString)) && (_x._cmp(_x0) != (0 : stdgo.GoInt)) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L796"
                        _t.fatalf(("subMod2N(%d, %d, %d) modified x" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x0)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y0)), stdgo.Go.toInterface(_tt._n));
                    };
                    //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L798"
                    if (((_mode != ("aliasY" : stdgo.GoString)) && (_y._cmp(_y0) != (0 : stdgo.GoInt)) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L799"
                        _t.fatalf(("subMod2N(%d, %d, %d) modified y" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x0)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y0)), stdgo.Go.toInterface(_tt._n));
                    };
                };
            });
        };
    }
