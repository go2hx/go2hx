package stdgo._internal.math.big;
function testProbablyPrime(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _nreps = (20 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/math/big/prime_test.go#L127"
        if (stdgo._internal.testing.Testing_short.short()) {
            _nreps = (1 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/prime_test.go#L130"
        for (_i => _s in stdgo._internal.math.big.Big__primes._primes) {
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setString(_s?.__copy__(), (10 : stdgo.GoInt)), _p:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, __8:Bool = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/math/big/prime_test.go#L132"
            if (((!_p.probablyPrime(_nreps) || (_nreps != ((1 : stdgo.GoInt)) && !_p.probablyPrime((1 : stdgo.GoInt)) : Bool) : Bool) || !_p.probablyPrime((0 : stdgo.GoInt)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/prime_test.go#L133"
                _t.errorf(("#%d prime found to be non-prime (%s)" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_s));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/prime_test.go#L137"
        for (_i => _s in stdgo._internal.math.big.Big__composites._composites) {
            _s = stdgo._internal.strings.Strings_map_.map_(stdgo._internal.math.big.Big__cutspace._cutSpace, _s?.__copy__())?.__copy__();
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setString(_s?.__copy__(), (10 : stdgo.GoInt)), _c:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, __8:Bool = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/math/big/prime_test.go#L140"
            if (((_c.probablyPrime(_nreps) || (_nreps != ((1 : stdgo.GoInt)) && _c.probablyPrime((1 : stdgo.GoInt)) : Bool) : Bool) || _c.probablyPrime((0 : stdgo.GoInt)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/prime_test.go#L141"
                _t.errorf(("#%d composite found to be prime (%s)" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_s));
            };
        };
        var _c = stdgo._internal.math.big.Big_newint.newInt((11i64 : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/math/big/prime_test.go#L147"
        for (__8 => _n in (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(-1 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/prime_test.go#L148"
            ({
                var a = function():Void {
                    var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
                    try {
                        {
                            __deferstack__.unshift({ ran : false, f : () -> ({
                                var a = function():Void {
                                    //"file:///home/runner/.go/go1.21.3/src/math/big/prime_test.go#L150"
                                    if (((_n < (0 : stdgo.GoInt) : Bool) && (({
                                        final r = stdgo.Go.recover_exception;
                                        stdgo.Go.recover_exception = null;
                                        r;
                                    }) == null) : Bool)) {
                                        //"file:///home/runner/.go/go1.21.3/src/math/big/prime_test.go#L151"
                                        _t.fatalf(("expected panic from ProbablyPrime(%d)" : stdgo.GoString), stdgo.Go.toInterface(_n));
                                    };
                                };
                                a();
                            }) });
                        };
                        //"file:///home/runner/.go/go1.21.3/src/math/big/prime_test.go#L154"
                        if (!_c.probablyPrime(_n)) {
                            //"file:///home/runner/.go/go1.21.3/src/math/big/prime_test.go#L155"
                            _t.fatalf(("%v should be a prime" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_c)));
                        };
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            if (stdgo.Go.recover_exception != null) {
                                final e = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                throw e;
                            };
                            return;
                        };
                    } catch(__exception__) {
                        {
                            var exe:Dynamic = __exception__.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            {
                                function f() {
                                    try {
                                        {
                                            for (defer in __deferstack__) {
                                                if (defer.ran) continue;
                                                defer.ran = true;
                                                defer.f();
                                            };
                                        };
                                    } catch(__exception__2) {
                                        var exe:Dynamic = __exception__2.native;
                                        if ((exe is haxe.ValueException)) exe = exe.value;
                                        if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                            if (__exception__.message == "__return__") throw "__return__";
                                            exe = stdgo.Go.toInterface(__exception__.message);
                                        };
                                        stdgo.Go.recover_exception = exe;
                                        f();
                                    };
                                };
                                f();
                            };
                            if (stdgo.Go.recover_exception != null) {
                                final e = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                throw e;
                            };
                            return;
                        };
                    };
                };
                a();
            });
        };
    }
