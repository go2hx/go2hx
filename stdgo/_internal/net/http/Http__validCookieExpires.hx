package stdgo._internal.net.http;
function _validCookieExpires(_t:stdgo._internal.time.Time_Time.Time):Bool {
        return (_t.year() >= (1601 : stdgo.GoInt) : Bool);
    }
