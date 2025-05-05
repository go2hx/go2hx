package stdgo._internal.errors;
function unwrap(_err:stdgo.Error):stdgo.Error {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.errors.Errors_t__interface_0.T__interface_0)) : stdgo._internal.errors.Errors_t__interface_0.T__interface_0), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.errors.Errors_t__interface_0.T__interface_0), _1 : false };
        }, _u = __tmp__._0, _ok = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/errors/wrap.go#L21"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/errors/wrap.go#L22"
            return (null : stdgo.Error);
        };
        //"file:///home/runner/.go/go1.21.3/src/errors/wrap.go#L24"
        return _u.unwrap();
    }
