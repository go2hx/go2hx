package stdgo._internal.regexp;
function _tryCompile(_s:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _re = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        {
                            var _r = ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            } : stdgo.AnyInterface);
                            if (_r != null) {
                                _err = stdgo._internal.fmt.Fmt_errorf.errorf(("panic: %v" : stdgo.GoString), _r);
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
                };
                a();
            });
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>; var _1 : stdgo.Error; } = stdgo._internal.regexp.Regexp_compile.compile(_s?.__copy__());
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _re, _1 : _err };
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
            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _re, _1 : _err };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }