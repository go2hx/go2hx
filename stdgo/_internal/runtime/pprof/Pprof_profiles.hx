package stdgo._internal.runtime.pprof;
function profiles():stdgo.Slice<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile>> {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L233"
            stdgo._internal.runtime.pprof.Pprof__lockprofiles._lockProfiles();
            {
                final __f__ = stdgo._internal.runtime.pprof.Pprof__unlockprofiles._unlockProfiles;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _all = (new stdgo.Slice<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile>>((0 : stdgo.GoInt).toBasic(), (stdgo._internal.runtime.pprof.Pprof__profiles._profiles._m.length)) : stdgo.Slice<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile>>);
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L237"
            for (__0 => _p in stdgo._internal.runtime.pprof.Pprof__profiles._profiles._m) {
                _all = (_all.__append__(_p) : stdgo.Slice<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile>>);
            };
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L241"
            stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_all), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
                //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L241"
                return ((@:checkr _all[(_i : stdgo.GoInt)] ?? throw "null pointer dereference")._name < (@:checkr _all[(_j : stdgo.GoInt)] ?? throw "null pointer dereference")._name : Bool);
            });
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L242"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _all;
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
                return (null : stdgo.Slice<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile>>);
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
                return (null : stdgo.Slice<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile>>);
            };
        };
    }
