package stdgo._internal.encoding.gob;
function _testError(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _e = ({
                final r = stdgo.Go.recover_exception;
                stdgo.Go.recover_exception = null;
                r;
            } : stdgo.AnyInterface);
            if (_e != null) {
                _t.error(stdgo.Go.toInterface((stdgo.Go.typeAssert((_e : stdgo._internal.encoding.gob.Gob_T_gobError.T_gobError)) : stdgo._internal.encoding.gob.Gob_T_gobError.T_gobError)._err));
            };
        };
    }