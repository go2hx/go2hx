package stdgo._internal.runtime.pprof;
function profiles():stdgo.Slice<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile>> {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo._internal.runtime.pprof.Pprof__lockProfiles._lockProfiles();
            {
                final __f__ = stdgo._internal.runtime.pprof.Pprof__unlockProfiles._unlockProfiles;
                __deferstack__.unshift(() -> __f__());
            };
            var _all = (new stdgo.Slice<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile>>((0 : stdgo.GoInt).toBasic(), (stdgo._internal.runtime.pprof.Pprof__profiles._profiles._m.length)) : stdgo.Slice<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile>>);
            for (__0 => _p in stdgo._internal.runtime.pprof.Pprof__profiles._profiles._m) {
                _all = (_all.__append__(_p));
            };
            stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_all), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
                return (_all[(_i : stdgo.GoInt)]._name < _all[(_j : stdgo.GoInt)]._name : Bool);
            });
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _all;
            };
            {
                final __ret__:stdgo.Slice<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile>>);
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
            final __ret__:stdgo.Slice<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile>>);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
