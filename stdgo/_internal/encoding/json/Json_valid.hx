package stdgo._internal.encoding.json;
function valid(_data:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _scan = stdgo._internal.encoding.json.Json__newScanner._newScanner();
            {
                var _a0 = _scan;
                final __f__ = stdgo._internal.encoding.json.Json__freeScanner._freeScanner;
                __deferstack__.unshift(() -> __f__(_a0));
            };
            {
                final __ret__:Bool = stdgo._internal.encoding.json.Json__checkValid._checkValid(_data, _scan) == null;
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return false;
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
            return false;
        };
    }
