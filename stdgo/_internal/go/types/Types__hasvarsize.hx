package stdgo._internal.go.types;
function _hasVarSize(_t:stdgo._internal.go.types.Types_type_.Type_, _seen:stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>, Bool>):Bool {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _varSized = false;
        try {
            //"file:///home/runner/.go/go1.21.3/src/go/types/builtins.go#L925"
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : false };
                }, _named = __tmp__._0, __0 = __tmp__._1;
                if (({
                    final value = _named;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/builtins.go#L926"
                    {
                        var __tmp__ = (_seen != null && _seen.__exists__(_named) ? { _0 : _seen[_named], _1 : true } : { _0 : false, _1 : false }), _v:Bool = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (_ok) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/builtins.go#L927"
                            return _varSized = _v;
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/types/builtins.go#L929"
                    if (_seen == null) {
                        _seen = ({
                            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>, Bool>();
                            {};
                            cast x;
                        } : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>, Bool>);
                    };
                    _seen[_named] = true;
                    {
                        __deferstack__.unshift({ ran : false, f : () -> ({
                            var a = function():Void {
                                _seen[_named] = _varSized;
                            };
                            a();
                        }) });
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/builtins.go#L938"
            {
                final __type__ = stdgo._internal.go.types.Types__under._under(_t);
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>))) {
                    var _u:stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/builtins.go#L940"
                    {
                        final __ret__:Bool = _varSized = stdgo._internal.go.types.Types__hasvarsize._hasVarSize((@:checkr _u ?? throw "null pointer dereference")._elem, _seen);
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>))) {
                    var _u:stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/builtins.go#L942"
                    for (__1 => _f in (@:checkr _u ?? throw "null pointer dereference")._fields) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/builtins.go#L943"
                        if (stdgo._internal.go.types.Types__hasvarsize._hasVarSize((@:checkr _f ?? throw "null pointer dereference")._object._typ, _seen)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/builtins.go#L944"
                            {
                                final __ret__:Bool = _varSized = true;
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>))) {
                    var _u:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/builtins.go#L948"
                    {
                        final __ret__:Bool = _varSized = stdgo._internal.go.types.Types__istypeparam._isTypeParam(_t);
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>))) {
                    var _u:stdgo._internal.go.types.Types_type_.Type_ = __type__ == null ? (null : stdgo._internal.go.types.Types_type_.Type_) : cast __type__;
                    //"file:///home/runner/.go/go1.21.3/src/go/types/builtins.go#L950"
                    stdgo._internal.go.types.Types__unreachable._unreachable();
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/builtins.go#L952"
            {
                final __ret__:Bool = _varSized = false;
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
                return _varSized;
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
                return _varSized;
            };
        };
    }
