package stdgo._internal.encoding.gob;
function _testError(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L47"
        {
            var _e = ({
                final r = stdgo.Go.recover_exception;
                stdgo.Go.recover_exception = null;
                r;
            } : stdgo.AnyInterface);
            if (_e != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L48"
                _t.error(stdgo.Go.toInterface((stdgo.Go.typeAssert((_e : stdgo._internal.encoding.gob.Gob_t_goberror.T_gobError)) : stdgo._internal.encoding.gob.Gob_t_goberror.T_gobError)._err));
            };
        };
    }
