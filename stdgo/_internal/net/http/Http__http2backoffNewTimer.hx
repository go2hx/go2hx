package stdgo._internal.net.http;
function _http2backoffNewTimer(_d:stdgo._internal.time.Time_Duration.Duration):stdgo.Ref<stdgo._internal.time.Time_Timer.Timer> {
        if (stdgo._internal.net.http.Http__http2retryBackoffHook._http2retryBackoffHook != null) {
            return stdgo._internal.net.http.Http__http2retryBackoffHook._http2retryBackoffHook(_d);
        };
        return stdgo._internal.time.Time_newTimer.newTimer(_d);
    }
