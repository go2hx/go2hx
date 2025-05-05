package stdgo._internal.math.big;
function testSticky(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L692"
        for (_i => _test in stdgo._internal.math.big.Big__stickytests._stickyTests) {
            var _x = (stdgo._internal.math.big.Big__natfromstring._natFromString(_test._x?.__copy__()) : stdgo._internal.math.big.Big_t_nat.T_nat);
            //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L694"
            {
                var _got = (_x._sticky(_test._i) : stdgo.GoUInt);
                if (_got != (_test._want)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L695"
                    _t.errorf(("#%d: %s.sticky(%d) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._x), stdgo.Go.toInterface(_test._i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L697"
            if (_test._want == ((1u32 : stdgo.GoUInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L699"
                {
                    var _d = ((1u32 : stdgo.GoUInt) : stdgo.GoUInt);
                    while ((_d <= (3u32 : stdgo.GoUInt) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L700"
                        {
                            var _got = (_x._sticky((_test._i + _d : stdgo.GoUInt)) : stdgo.GoUInt);
                            if (_got != ((1u32 : stdgo.GoUInt))) {
                                //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L701"
                                _t.errorf(("#%d: %s.sticky(%d) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._x), stdgo.Go.toInterface((_test._i + _d : stdgo.GoUInt)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface((1 : stdgo.GoInt)));
                            };
                        };
                        _d++;
                    };
                };
            };
        };
    }
