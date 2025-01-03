package stdgo._internal.runtime.pprof;
function newProfile(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile> {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo._internal.runtime.pprof.Pprof__lockProfiles._lockProfiles();
            {
                final __f__ = stdgo._internal.runtime.pprof.Pprof__unlockProfiles._unlockProfiles;
                __deferstack__.unshift(() -> __f__());
            };
            if (_name == (stdgo.Go.str())) {
                throw stdgo.Go.toInterface(("pprof: NewProfile with empty name" : stdgo.GoString));
            };
            if (((stdgo._internal.runtime.pprof.Pprof__profiles._profiles._m[_name] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile>)) != null && ((stdgo._internal.runtime.pprof.Pprof__profiles._profiles._m[_name] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile>) : Dynamic).__nil__ == null || !(stdgo._internal.runtime.pprof.Pprof__profiles._profiles._m[_name] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile>) : Dynamic).__nil__))) {
                throw stdgo.Go.toInterface((("pprof: NewProfile name already in use: " : stdgo.GoString) + _name?.__copy__() : stdgo.GoString));
            };
            var _p = (stdgo.Go.setRef(({ _name : _name?.__copy__(), _m : ({
                final x = new stdgo.GoMap.GoAnyInterfaceMap<stdgo.Slice<stdgo.GoUIntptr>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoUIntptr>);
                {};
                cast x;
            } : stdgo.GoMap<stdgo.AnyInterface, stdgo.Slice<stdgo.GoUIntptr>>) } : stdgo._internal.runtime.pprof.Pprof_Profile.Profile)) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile>);
            stdgo._internal.runtime.pprof.Pprof__profiles._profiles._m[_name] = _p;
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                return _p;
            };
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile>);
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
                __deferstack__.remove(defer);
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile>);
        };
    }
