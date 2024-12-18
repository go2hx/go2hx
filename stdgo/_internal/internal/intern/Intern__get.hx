package stdgo._internal.internal.intern;
function _get(_k:stdgo._internal.internal.intern.Intern_T_key.T_key):stdgo.Ref<stdgo._internal.internal.intern.Intern_Value.Value> {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo._internal.internal.intern.Intern__mu._mu.lock();
            {
                final __f__ = stdgo._internal.internal.intern.Intern__mu._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            var _v:stdgo.Ref<stdgo._internal.internal.intern.Intern_Value.Value> = (null : stdgo.Ref<stdgo._internal.internal.intern.Intern_Value.Value>);
            if (stdgo._internal.internal.intern.Intern__valSafe._valSafe != null) {
                _v = (stdgo._internal.internal.intern.Intern__valSafe._valSafe[_k] ?? (null : stdgo.Ref<stdgo._internal.internal.intern.Intern_Value.Value>));
            } else {
                var __tmp__ = (stdgo._internal.internal.intern.Intern__valMap._valMap != null && stdgo._internal.internal.intern.Intern__valMap._valMap.exists(_k?.__copy__()) ? { _0 : stdgo._internal.internal.intern.Intern__valMap._valMap[_k?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoUIntptr), _1 : false }), _addr:stdgo.GoUIntptr = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    _v = ((stdgo.Go.toInterface(_addr) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.intern.Intern_Value.Value", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "__11", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType }) }, 0) }, optional : false }, { name : "_cmpVal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(true, []) }, optional : false }, { name : "_resurrected", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<stdgo._internal.internal.intern.Intern_Value.Value>);
                    _v._resurrected = true;
                };
            };
            if ((_v != null && ((_v : Dynamic).__nil__ == null || !(_v : Dynamic).__nil__))) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return _v;
                };
            };
            _v = _k.value();
            if (stdgo._internal.internal.intern.Intern__valSafe._valSafe != null) {
                stdgo._internal.internal.intern.Intern__valSafe._valSafe[_k] = _v;
            } else {
                stdgo._internal.runtime.Runtime_setFinalizer.setFinalizer(stdgo.Go.toInterface(stdgo.Go.asInterface(_v)), stdgo.Go.toInterface(stdgo._internal.internal.intern.Intern__finalize._finalize));
                stdgo._internal.internal.intern.Intern__valMap._valMap[_k] = ((stdgo.Go.toInterface(_v) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr);
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _v;
            };
            {
                final __ret__:stdgo.Ref<stdgo._internal.internal.intern.Intern_Value.Value> = (null : stdgo.Ref<stdgo._internal.internal.intern.Intern_Value.Value>);
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
            final __ret__:stdgo.Ref<stdgo._internal.internal.intern.Intern_Value.Value> = (null : stdgo.Ref<stdgo._internal.internal.intern.Intern_Value.Value>);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
