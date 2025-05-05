package stdgo._internal.errors;
function as(_err:stdgo.Error, _target:stdgo.AnyInterface):Bool {
        //"file:///home/runner/.go/go1.21.3/src/errors/wrap.go#L94"
        if (_err == null) {
            //"file:///home/runner/.go/go1.21.3/src/errors/wrap.go#L95"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/errors/wrap.go#L97"
        if (_target == null) {
            //"file:///home/runner/.go/go1.21.3/src/errors/wrap.go#L98"
            throw stdgo.Go.toInterface(("errors: target cannot be nil" : stdgo.GoString));
        };
        var _val = (stdgo._internal.internal.reflectlite.Reflectlite_valueof.valueOf(_target)?.__copy__() : stdgo._internal.internal.reflectlite.Reflectlite_value.Value);
        var _typ = (_val.type() : stdgo._internal.internal.reflectlite.Reflectlite_type_.Type_);
        //"file:///home/runner/.go/go1.21.3/src/errors/wrap.go#L102"
        if (((_typ.kind() != (22u32 : stdgo._internal.internal.abi.Abi_kind.Kind)) || _val.isNil() : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/errors/wrap.go#L103"
            throw stdgo.Go.toInterface(("errors: target must be a non-nil pointer" : stdgo.GoString));
        };
        var _targetType = (_typ.elem() : stdgo._internal.internal.reflectlite.Reflectlite_type_.Type_);
        //"file:///home/runner/.go/go1.21.3/src/errors/wrap.go#L106"
        if (((_targetType.kind() != (20u32 : stdgo._internal.internal.abi.Abi_kind.Kind)) && !_targetType.implements_(stdgo._internal.errors.Errors__errortype._errorType) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/errors/wrap.go#L107"
            throw stdgo.Go.toInterface(("errors: *target must be interface or implement error" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/errors/wrap.go#L109"
        while (true) {
            //"file:///home/runner/.go/go1.21.3/src/errors/wrap.go#L110"
            if (stdgo._internal.internal.reflectlite.Reflectlite_typeof.typeOf(stdgo.Go.toInterface(_err)).assignableTo(_targetType)) {
                //"file:///home/runner/.go/go1.21.3/src/errors/wrap.go#L111"
                _val.elem().set(stdgo._internal.internal.reflectlite.Reflectlite_valueof.valueOf(stdgo.Go.toInterface(_err))?.__copy__());
                //"file:///home/runner/.go/go1.21.3/src/errors/wrap.go#L112"
                return true;
            };
            //"file:///home/runner/.go/go1.21.3/src/errors/wrap.go#L114"
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.errors.Errors_t__interface_3.T__interface_3)) : stdgo._internal.errors.Errors_t__interface_3.T__interface_3), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.errors.Errors_t__interface_3.T__interface_3), _1 : false };
                }, _x = __tmp__._0, _ok = __tmp__._1;
                if ((_ok && _x.as(_target) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/errors/wrap.go#L115"
                    return true;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/errors/wrap.go#L117"
            {
                final __type__ = _err;
                if (stdgo.Go.typeEquals((__type__ : stdgo._internal.errors.Errors_t__interface_0.T__interface_0))) {
                    var _x:stdgo._internal.errors.Errors_t__interface_0.T__interface_0 = __type__ == null ? (null : stdgo._internal.errors.Errors_t__interface_0.T__interface_0) : cast __type__;
                    _err = _x.unwrap();
                    //"file:///home/runner/.go/go1.21.3/src/errors/wrap.go#L120"
                    if (_err == null) {
                        //"file:///home/runner/.go/go1.21.3/src/errors/wrap.go#L121"
                        return false;
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.errors.Errors_t__interface_2.T__interface_2))) {
                    var _x:stdgo._internal.errors.Errors_t__interface_2.T__interface_2 = __type__ == null ? (null : stdgo._internal.errors.Errors_t__interface_2.T__interface_2) : cast __type__;
                    //"file:///home/runner/.go/go1.21.3/src/errors/wrap.go#L124"
                    for (__0 => _err in _x.unwrap()) {
                        //"file:///home/runner/.go/go1.21.3/src/errors/wrap.go#L125"
                        if (stdgo._internal.errors.Errors_as.as(_err, _target)) {
                            //"file:///home/runner/.go/go1.21.3/src/errors/wrap.go#L126"
                            return true;
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/errors/wrap.go#L129"
                    return false;
                } else {
                    var _x:stdgo.Error = __type__ == null ? (null : stdgo.Error) : cast __type__;
                    //"file:///home/runner/.go/go1.21.3/src/errors/wrap.go#L131"
                    return false;
                };
            };
        };
    }
