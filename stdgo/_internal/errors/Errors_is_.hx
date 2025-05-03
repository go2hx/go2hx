package stdgo._internal.errors;
function is_(_err:stdgo.Error, _target:stdgo.Error):Bool {
        //"file:///home/runner/.go/go1.21.3/src/errors/wrap.go#L45"
        if (_target == null) {
            //"file:///home/runner/.go/go1.21.3/src/errors/wrap.go#L46"
            return stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(_target));
        };
        var _isComparable = (stdgo._internal.internal.reflectlite.Reflectlite_typeof.typeOf(stdgo.Go.toInterface(_target)).comparable_() : Bool);
        //"file:///home/runner/.go/go1.21.3/src/errors/wrap.go#L50"
        while (true) {
            //"file:///home/runner/.go/go1.21.3/src/errors/wrap.go#L51"
            if ((_isComparable && (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(_target)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/errors/wrap.go#L52"
                return true;
            };
            //"file:///home/runner/.go/go1.21.3/src/errors/wrap.go#L54"
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.errors.Errors_t__interface_1.T__interface_1)) : stdgo._internal.errors.Errors_t__interface_1.T__interface_1), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.errors.Errors_t__interface_1.T__interface_1), _1 : false };
                }, _x = __tmp__._0, _ok = __tmp__._1;
                if ((_ok && _x.is_(_target) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/errors/wrap.go#L55"
                    return true;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/errors/wrap.go#L57"
            {
                final __type__ = _err;
                if (stdgo.Go.typeEquals((__type__ : stdgo._internal.errors.Errors_t__interface_0.T__interface_0))) {
                    var _x:stdgo._internal.errors.Errors_t__interface_0.T__interface_0 = __type__ == null ? (null : stdgo._internal.errors.Errors_t__interface_0.T__interface_0) : cast __type__;
                    _err = _x.unwrap();
                    //"file:///home/runner/.go/go1.21.3/src/errors/wrap.go#L60"
                    if (_err == null) {
                        //"file:///home/runner/.go/go1.21.3/src/errors/wrap.go#L61"
                        return false;
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.errors.Errors_t__interface_2.T__interface_2))) {
                    var _x:stdgo._internal.errors.Errors_t__interface_2.T__interface_2 = __type__ == null ? (null : stdgo._internal.errors.Errors_t__interface_2.T__interface_2) : cast __type__;
                    //"file:///home/runner/.go/go1.21.3/src/errors/wrap.go#L64"
                    for (__0 => _err in _x.unwrap()) {
                        //"file:///home/runner/.go/go1.21.3/src/errors/wrap.go#L65"
                        if (stdgo._internal.errors.Errors_is_.is_(_err, _target)) {
                            //"file:///home/runner/.go/go1.21.3/src/errors/wrap.go#L66"
                            return true;
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/errors/wrap.go#L69"
                    return false;
                } else {
                    var _x:stdgo.Error = __type__ == null ? (null : stdgo.Error) : cast __type__;
                    //"file:///home/runner/.go/go1.21.3/src/errors/wrap.go#L71"
                    return false;
                };
            };
        };
    }
