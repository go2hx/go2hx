package stdgo._internal.net.http;
@:keep var __init_go2hx__ = {
        try {
            var _e = (stdgo._internal.os.Os_getenv.getenv(("GODEBUG" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (stdgo._internal.strings.Strings_contains.contains(_e?.__copy__(), ("http2debug=1" : stdgo.GoString))) {
                stdgo._internal.net.http.Http__http2VerboseLogs._http2VerboseLogs = true;
            };
            if (stdgo._internal.strings.Strings_contains.contains(_e?.__copy__(), ("http2debug=2" : stdgo.GoString))) {
                stdgo._internal.net.http.Http__http2VerboseLogs._http2VerboseLogs = true;
                stdgo._internal.net.http.Http__http2logFrameWrites._http2logFrameWrites = true;
                stdgo._internal.net.http.Http__http2logFrameReads._http2logFrameReads = true;
            };
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
