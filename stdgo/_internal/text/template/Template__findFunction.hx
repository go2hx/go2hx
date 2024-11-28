package stdgo._internal.text.template;
function _findFunction(_name:stdgo.GoString, _tmpl:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>):{ var _0 : stdgo._internal.reflect.Reflect_Value.Value; var _1 : Bool; var _2 : Bool; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _v = ({} : stdgo._internal.reflect.Reflect_Value.Value), _isBuiltin = false, _ok = false;
        try {
            if (((_tmpl != null && ((_tmpl : Dynamic).__nil__ == null || !(_tmpl : Dynamic).__nil__)) && (_tmpl._common != null && ((_tmpl._common : Dynamic).__nil__ == null || !(_tmpl._common : Dynamic).__nil__)) : Bool)) {
                _tmpl._common._muFuncs.rlock();
                __deferstack__.unshift(() -> _tmpl._common._muFuncs.runlock());
                {
                    var _fn = ((_tmpl._common._execFuncs[_name] ?? ({} : stdgo._internal.reflect.Reflect_Value.Value))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                    if (_fn.isValid()) {
                        {
                            final __ret__:{ var _0 : stdgo._internal.reflect.Reflect_Value.Value; var _1 : Bool; var _2 : Bool; } = { _0 : _v = _fn?.__copy__(), _1 : _isBuiltin = false, _2 : _ok = true };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                    };
                };
            };
            {
                var _fn = ((stdgo._internal.text.template.Template__builtinFuncs._builtinFuncs()[_name] ?? ({} : stdgo._internal.reflect.Reflect_Value.Value))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                if (_fn.isValid()) {
                    {
                        final __ret__:{ var _0 : stdgo._internal.reflect.Reflect_Value.Value; var _1 : Bool; var _2 : Bool; } = { _0 : _v = _fn?.__copy__(), _1 : _isBuiltin = true, _2 : _ok = true };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            {
                final __ret__:{ var _0 : stdgo._internal.reflect.Reflect_Value.Value; var _1 : Bool; var _2 : Bool; } = { _0 : _v = (new stdgo._internal.reflect.Reflect_Value.Value() : stdgo._internal.reflect.Reflect_Value.Value), _1 : _isBuiltin = false, _2 : _ok = false };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo._internal.reflect.Reflect_Value.Value; var _1 : Bool; var _2 : Bool; } = { _0 : _v, _1 : _isBuiltin, _2 : _ok };
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
            final __ret__:{ var _0 : stdgo._internal.reflect.Reflect_Value.Value; var _1 : Bool; var _2 : Bool; } = { _0 : _v, _1 : _isBuiltin, _2 : _ok };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
