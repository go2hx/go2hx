package stdgo._internal.text.template;
function _findFunction(_name:stdgo.GoString, _tmpl:stdgo.Ref<stdgo._internal.text.template.Template_template.Template>):{ var _0 : stdgo._internal.reflect.Reflect_value.Value; var _1 : Bool; var _2 : Bool; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _v = ({} : stdgo._internal.reflect.Reflect_value.Value), _isBuiltin = false, _ok = false;
        try {
            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L142"
            if ((({
                final value = _tmpl;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && ({
                final value = (@:checkr _tmpl ?? throw "null pointer dereference")._common;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L143"
                (@:checkr _tmpl ?? throw "null pointer dereference")._common._muFuncs.rLock();
                {
                    final __f__ = (@:checkr _tmpl ?? throw "null pointer dereference")._common._muFuncs.rUnlock;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
                //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L145"
                {
                    var _fn = (((@:checkr _tmpl ?? throw "null pointer dereference")._common._execFuncs[_name] ?? ({} : stdgo._internal.reflect.Reflect_value.Value))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                    if (_fn.isValid()) {
                        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L146"
                        {
                            final __ret__:{ var _0 : stdgo._internal.reflect.Reflect_value.Value; var _1 : Bool; var _2 : Bool; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.reflect.Reflect_value.Value; var _1 : Bool; var _2 : Bool; } = { _0 : _fn?.__copy__(), _1 : false, _2 : true };
                                _v = __tmp__._0;
                                _isBuiltin = __tmp__._1;
                                _ok = __tmp__._2;
                                __tmp__;
                            };
                            _v = __ret__._0;
                            _isBuiltin = __ret__._1;
                            _ok = __ret__._2;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L149"
            {
                var _fn = ((stdgo._internal.text.template.Template__builtinfuncs._builtinFuncs()[_name] ?? ({} : stdgo._internal.reflect.Reflect_value.Value))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                if (_fn.isValid()) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L150"
                    {
                        final __ret__:{ var _0 : stdgo._internal.reflect.Reflect_value.Value; var _1 : Bool; var _2 : Bool; } = {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.reflect.Reflect_value.Value; var _1 : Bool; var _2 : Bool; } = { _0 : _fn?.__copy__(), _1 : true, _2 : true };
                            _v = __tmp__._0;
                            _isBuiltin = __tmp__._1;
                            _ok = __tmp__._2;
                            __tmp__;
                        };
                        _v = __ret__._0;
                        _isBuiltin = __ret__._1;
                        _ok = __ret__._2;
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L152"
            {
                final __ret__:{ var _0 : stdgo._internal.reflect.Reflect_value.Value; var _1 : Bool; var _2 : Bool; } = {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.reflect.Reflect_value.Value; var _1 : Bool; var _2 : Bool; } = { _0 : (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value), _1 : false, _2 : false };
                    _v = __tmp__._0;
                    _isBuiltin = __tmp__._1;
                    _ok = __tmp__._2;
                    __tmp__;
                };
                _v = __ret__._0;
                _isBuiltin = __ret__._1;
                _ok = __ret__._2;
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
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
                return { _0 : _v, _1 : _isBuiltin, _2 : _ok };
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
                return { _0 : _v, _1 : _isBuiltin, _2 : _ok };
            };
        };
    }
