package stdgo._internal.errors;
function as(_err:stdgo.Error, _target:stdgo.AnyInterface):Bool {
        if (_err == null) {
            return false;
        };
        if (_target == null) {
            throw stdgo.Go.toInterface(("errors: target cannot be nil" : stdgo.GoString));
        };
        var _val = (stdgo._internal.internal.reflectlite.Reflectlite_valueof.valueOf(_target)?.__copy__() : stdgo._internal.internal.reflectlite.Reflectlite_value.Value);
        var _typ = (_val.type() : stdgo._internal.internal.reflectlite.Reflectlite_type_.Type_);
        if (((_typ.kind() != (22u32 : stdgo._internal.internal.abi.Abi_kind.Kind)) || _val.isNil() : Bool)) {
            throw stdgo.Go.toInterface(("errors: target must be a non-nil pointer" : stdgo.GoString));
        };
        var _targetType = (_typ.elem() : stdgo._internal.internal.reflectlite.Reflectlite_type_.Type_);
        if (((_targetType.kind() != (20u32 : stdgo._internal.internal.abi.Abi_kind.Kind)) && !_targetType.implements_(stdgo._internal.errors.Errors__errortype._errorType) : Bool)) {
            throw stdgo.Go.toInterface(("errors: *target must be interface or implement error" : stdgo.GoString));
        };
        while (true) {
            if (stdgo._internal.internal.reflectlite.Reflectlite_typeof.typeOf(stdgo.Go.toInterface(_err)).assignableTo(_targetType)) {
                _val.elem().set(stdgo._internal.internal.reflectlite.Reflectlite_valueof.valueOf(stdgo.Go.toInterface(_err))?.__copy__());
                return true;
            };
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.errors.Errors_t__interface_3.T__interface_3)) : stdgo._internal.errors.Errors_t__interface_3.T__interface_3), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.errors.Errors_t__interface_3.T__interface_3), _1 : false };
                }, _x = __tmp__._0, _ok = __tmp__._1;
                if ((_ok && _x.as(_target) : Bool)) {
                    return true;
                };
            };
            {
                final __type__ = _err;
                if (stdgo.Go.typeEquals((__type__ : stdgo._internal.errors.Errors_t__interface_0.T__interface_0))) {
                    var _x:stdgo._internal.errors.Errors_t__interface_0.T__interface_0 = __type__ == null ? (null : stdgo._internal.errors.Errors_t__interface_0.T__interface_0) : cast __type__;
                    _err = _x.unwrap();
                    if (_err == null) {
                        return false;
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.errors.Errors_t__interface_2.T__interface_2))) {
                    var _x:stdgo._internal.errors.Errors_t__interface_2.T__interface_2 = __type__ == null ? (null : stdgo._internal.errors.Errors_t__interface_2.T__interface_2) : cast __type__;
                    for (__0 => _err in _x.unwrap()) {
                        if (stdgo._internal.errors.Errors_as.as(_err, _target)) {
                            return true;
                        };
                    };
                    return false;
                } else {
                    var _x:stdgo.Error = __type__ == null ? (null : stdgo.Error) : cast __type__;
                    return false;
                };
            };
        };
    }
