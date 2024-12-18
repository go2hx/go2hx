package stdgo._internal.runtime.pprof;
function lookup(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile> {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo._internal.runtime.pprof.Pprof__lockProfiles._lockProfiles();
            {
                final __f__ = stdgo._internal.runtime.pprof.Pprof__unlockProfiles._unlockProfiles;
                __deferstack__.unshift(() -> __f__());
            };
            {
                final __ret__:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile> = (stdgo._internal.runtime.pprof.Pprof__profiles._profiles._m[_name] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile>));
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile>);
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile>);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
