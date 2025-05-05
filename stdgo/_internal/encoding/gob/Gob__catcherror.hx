package stdgo._internal.encoding.gob;
function _catchError(_err:stdgo.Ref<stdgo.Error>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/error.go#L35"
        {
            var _e = ({
                final r = stdgo.Go.recover_exception;
                stdgo.Go.recover_exception = null;
                r;
            } : stdgo.AnyInterface);
            if (_e != null) {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_e : stdgo._internal.encoding.gob.Gob_t_goberror.T_gobError)) : stdgo._internal.encoding.gob.Gob_t_goberror.T_gobError), _1 : true };
                } catch(_) {
                    { _0 : ({} : stdgo._internal.encoding.gob.Gob_t_goberror.T_gobError), _1 : false };
                }, _ge = __tmp__._0, _ok = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/error.go#L37"
                if (!_ok) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/error.go#L38"
                    throw stdgo.Go.toInterface(_e);
                };
                {
                    var __tmp__ = _ge._err;
                    var x = (_err : stdgo.Error);
                    x.error = __tmp__.error;
                };
            };
        };
    }
