package stdgo._internal.math.big;
function testSticky(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (_i => _test in stdgo._internal.math.big.Big__stickytests._stickyTests) {
            var _x = (stdgo._internal.math.big.Big__natfromstring._natFromString(_test._x?.__copy__()) : stdgo._internal.math.big.Big_t_nat.T_nat);
            {
                var _got = (_x._sticky(_test._i) : stdgo.GoUInt);
                if (_got != (_test._want)) {
                    @:check2r _t.errorf(("#%d: %s.sticky(%d) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._x), stdgo.Go.toInterface(_test._i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
            if (_test._want == ((1u32 : stdgo.GoUInt))) {
                {
                    var _d = ((1u32 : stdgo.GoUInt) : stdgo.GoUInt);
                    while ((_d <= (3u32 : stdgo.GoUInt) : Bool)) {
                        {
                            var _got = (_x._sticky((_test._i + _d : stdgo.GoUInt)) : stdgo.GoUInt);
                            if (_got != ((1u32 : stdgo.GoUInt))) {
                                @:check2r _t.errorf(("#%d: %s.sticky(%d) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._x), stdgo.Go.toInterface((_test._i + _d : stdgo.GoUInt)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface((1 : stdgo.GoInt)));
                            };
                        };
                        _d++;
                    };
                };
            };
        };
    }
