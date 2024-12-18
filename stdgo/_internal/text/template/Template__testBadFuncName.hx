package stdgo._internal.text.template;
function _testBadFuncName(_name:stdgo.GoString, _t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.helper();
            {
                __deferstack__.unshift(() -> ({
                    var a = function():Void {
                        stdgo._internal.text.template.Template__recover._recover();
                    };
                    a();
                }));
            };
            stdgo._internal.text.template.Template_new_.new_(("X" : stdgo.GoString)).funcs(({
                final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
                x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
                x.set(_name, stdgo.Go.toInterface(stdgo._internal.text.template.Template__funcNameTestFunc._funcNameTestFunc));
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>));
            _t.errorf(("%q succeeded incorrectly as function name" : stdgo.GoString), stdgo.Go.toInterface(_name));
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
