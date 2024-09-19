package stdgo._internal.net.http;
function _badStringError(_what:stdgo.GoString, _val:stdgo.GoString):stdgo.Error {
        return stdgo._internal.fmt.Fmt_errorf.errorf(("%s %q" : stdgo.GoString), stdgo.Go.toInterface(_what), stdgo.Go.toInterface(_val));
    }
