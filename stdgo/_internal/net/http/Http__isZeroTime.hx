package stdgo._internal.net.http;
function _isZeroTime(_t:stdgo._internal.time.Time_Time.Time):Bool {
        return (_t.isZero() || _t.equal(stdgo._internal.net.http.Http__unixEpochTime._unixEpochTime?.__copy__()) : Bool);
    }
