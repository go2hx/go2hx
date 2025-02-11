package stdgo._internal.internal.intern;
function _get(_k:stdgo._internal.internal.intern.Intern_t_key.T_key):stdgo.Ref<stdgo._internal.internal.intern.Intern_value.Value> {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 stdgo._internal.internal.intern.Intern__mu._mu.lock();
            {
                final __f__ = @:check2 stdgo._internal.internal.intern.Intern__mu._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _v:stdgo.Ref<stdgo._internal.internal.intern.Intern_value.Value> = (null : stdgo.Ref<stdgo._internal.internal.intern.Intern_value.Value>);
            if (stdgo._internal.internal.intern.Intern__valsafe._valSafe != null) {
                _v = (stdgo._internal.internal.intern.Intern__valsafe._valSafe[_k] ?? (null : stdgo.Ref<stdgo._internal.internal.intern.Intern_value.Value>));
            } else {
                var __tmp__ = (stdgo._internal.internal.intern.Intern__valmap._valMap != null && stdgo._internal.internal.intern.Intern__valmap._valMap.__exists__(_k?.__copy__()) ? { _0 : stdgo._internal.internal.intern.Intern__valmap._valMap[_k?.__copy__()], _1 : true } : { _0 : new stdgo.GoUIntptr(0), _1 : false }), _addr:stdgo.GoUIntptr = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    _v = ((stdgo.Go.toInterface(_addr) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.intern.Intern_value.Value", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "__11", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, 0) }, optional : false }, { name : "_cmpVal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(true, []) }, optional : false }, { name : "_resurrected", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<stdgo._internal.internal.intern.Intern_value.Value>);
                    (@:checkr _v ?? throw "null pointer dereference")._resurrected = true;
                };
            };
            if ((_v != null && ((_v : Dynamic).__nil__ == null || !(_v : Dynamic).__nil__))) {
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _v;
                };
            };
            _v = _k.value();
            if (stdgo._internal.internal.intern.Intern__valsafe._valSafe != null) {
                stdgo._internal.internal.intern.Intern__valsafe._valSafe[_k] = _v;
            } else {
                stdgo._internal.runtime.Runtime_setfinalizer.setFinalizer(stdgo.Go.toInterface(stdgo.Go.asInterface(_v)), stdgo.Go.toInterface(stdgo._internal.internal.intern.Intern__finalize._finalize));
                stdgo._internal.internal.intern.Intern__valmap._valMap[_k] = (new stdgo.GoUIntptr((stdgo.Go.toInterface(_v) : stdgo._internal.unsafe.Unsafe.UnsafePointer)) : stdgo.GoUIntptr);
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _v;
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
                return (null : stdgo.Ref<stdgo._internal.internal.intern.Intern_value.Value>);
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
                return (null : stdgo.Ref<stdgo._internal.internal.intern.Intern_value.Value>);
            };
        };
    }
