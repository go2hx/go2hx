package stdgo._internal.encoding.gob;
function _error_(_err:stdgo.Error):Void {
        throw stdgo.Go.toInterface((new stdgo._internal.encoding.gob.Gob_T_gobError.T_gobError(_err) : stdgo._internal.encoding.gob.Gob_T_gobError.T_gobError));
    }