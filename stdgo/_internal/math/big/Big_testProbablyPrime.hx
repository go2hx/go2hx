package stdgo._internal.math.big;
function testProbablyPrime(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _nreps = (20 : stdgo.GoInt);
            if (stdgo._internal.testing.Testing_short.short()) {
                _nreps = (1 : stdgo.GoInt);
            };
            for (_i => _s in stdgo._internal.math.big.Big__primes._primes) {
                var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setString(_s?.__copy__(), (10 : stdgo.GoInt)), _p:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, __14:Bool = __tmp__._1;
                if (((!_p.probablyPrime(_nreps) || (_nreps != ((1 : stdgo.GoInt)) && !_p.probablyPrime((1 : stdgo.GoInt)) : Bool) : Bool) || !_p.probablyPrime((0 : stdgo.GoInt)) : Bool)) {
                    _t.errorf(("#%d prime found to be non-prime (%s)" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_s));
                };
            };
            for (_i => _s in stdgo._internal.math.big.Big__composites._composites) {
                _s = stdgo._internal.strings.Strings_map_.map_(stdgo._internal.math.big.Big__cutSpace._cutSpace, _s?.__copy__())?.__copy__();
                var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setString(_s?.__copy__(), (10 : stdgo.GoInt)), _c:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, __14:Bool = __tmp__._1;
                if (((_c.probablyPrime(_nreps) || (_nreps != ((1 : stdgo.GoInt)) && _c.probablyPrime((1 : stdgo.GoInt)) : Bool) : Bool) || _c.probablyPrime((0 : stdgo.GoInt)) : Bool)) {
                    _t.errorf(("#%d composite found to be prime (%s)" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_s));
                };
            };
            var _c = stdgo._internal.math.big.Big_newInt.newInt((11i64 : stdgo.GoInt64));
            for (__14 => _n in (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(-1 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
                {
                    var a = function():Void {
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            __deferstack__.unshift(() -> {
                                var a = function():Void {
                                    var __deferstack__:Array<Void -> Void> = [];
                                    try {
                                        if (((_n < (0 : stdgo.GoInt) : Bool) && (({
                                            final r = stdgo.Go.recover_exception;
                                            stdgo.Go.recover_exception = null;
                                            r;
                                        }) == null) : Bool)) {
                                            _t.fatalf(("expected panic from ProbablyPrime(%d)" : stdgo.GoString), stdgo.Go.toInterface(_n));
                                        };
                                        {
                                            for (defer in __deferstack__) {
                                                defer();
                                            };
                                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                            return;
                                        };
                                    } catch(__exception__) {
                                        var exe:Dynamic = __exception__.native;
                                        if ((exe is haxe.ValueException)) exe = exe.value;
                                        if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                            if (__exception__.message == "__return__") throw "__return__";
                                            exe = stdgo.Go.toInterface(__exception__.message);
                                        };
                                        stdgo.Go.recover_exception = exe;
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                        return;
                                    };
                                };
                                a();
                            });
                            if (!_c.probablyPrime(_n)) {
                                _t.fatalf(("%v should be a prime" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_c)));
                            };
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                return;
                            };
                        } catch(__exception__) {
                            var exe:Dynamic = __exception__.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                            return;
                        };
                    };
                    a();
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
