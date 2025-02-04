package stdgo._internal.runtime.pprof;
function newProfile(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile> {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            stdgo._internal.runtime.pprof.Pprof__lockprofiles._lockProfiles();
            {
                final __f__ = stdgo._internal.runtime.pprof.Pprof__unlockprofiles._unlockProfiles;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if (_name == ((stdgo.Go.str() : stdgo.GoString))) {
                throw stdgo.Go.toInterface(("pprof: NewProfile with empty name" : stdgo.GoString));
            };
            if (((stdgo._internal.runtime.pprof.Pprof__profiles._profiles._m[_name] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile>)) != null && ((stdgo._internal.runtime.pprof.Pprof__profiles._profiles._m[_name] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile>) : Dynamic).__nil__ == null || !(stdgo._internal.runtime.pprof.Pprof__profiles._profiles._m[_name] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile>) : Dynamic).__nil__))) {
                throw stdgo.Go.toInterface((("pprof: NewProfile name already in use: " : stdgo.GoString) + _name?.__copy__() : stdgo.GoString));
            };
            var _p = (stdgo.Go.setRef(({ _name : _name?.__copy__(), _m : ({
                final x = new stdgo.GoMap.GoAnyInterfaceMap<stdgo.Slice<stdgo.GoUIntptr>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoUIntptr>);
                {};
                cast x;
            } : stdgo.GoMap<stdgo.AnyInterface, stdgo.Slice<stdgo.GoUIntptr>>) } : stdgo._internal.runtime.pprof.Pprof_profile.Profile)) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile>);
            stdgo._internal.runtime.pprof.Pprof__profiles._profiles._m[_name] = _p;
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _p;
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
                return (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile>);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
                return (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile>);
            };
        };
    }
