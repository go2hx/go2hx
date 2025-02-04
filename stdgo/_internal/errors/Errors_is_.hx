package stdgo._internal.errors;
function is_(_err:stdgo.Error, _target:stdgo.Error):Bool {
        if (_target == null) {
            return stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(_target));
        };
        var _isComparable = (stdgo._internal.internal.reflectlite.Reflectlite_typeof.typeOf(stdgo.Go.toInterface(_target)).comparable_() : Bool);
        while (true) {
            if ((_isComparable && (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(_target)) : Bool)) {
                return true;
            };
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.errors.Errors_t__interface_1.T__interface_1)) : stdgo._internal.errors.Errors_t__interface_1.T__interface_1), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.errors.Errors_t__interface_1.T__interface_1), _1 : false };
                }, _x = __tmp__._0, _ok = __tmp__._1;
                if ((_ok && _x.is_(_target) : Bool)) {
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
                        if (stdgo._internal.errors.Errors_is_.is_(_err, _target)) {
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
