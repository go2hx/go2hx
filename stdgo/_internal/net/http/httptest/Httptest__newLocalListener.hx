package stdgo._internal.net.http.httptest;
import stdgo._internal.net.http.Http;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.net.textproto.Textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.net.Net;
import stdgo._internal.os.Os;
import stdgo._internal.flag.Flag;
import stdgo._internal.bytes.Bytes;
import _internal.golang_dot_org.x.net.http.httpguts.Httpguts;
import stdgo._internal.crypto.tls.Tls;
import stdgo._internal.net.http.internal.testcert.Testcert;
import stdgo._internal.crypto.x509.X509;
import stdgo._internal.time.Time;
import stdgo._internal.log.Log;
function _newLocalListener():stdgo._internal.net.Net_Listener.Listener {
        if (stdgo._internal.net.http.httptest.Httptest__serveFlag._serveFlag != (stdgo.Go.str())) {
            var __tmp__ = stdgo._internal.net.Net_listen.listen(("tcp" : stdgo.GoString), stdgo._internal.net.http.httptest.Httptest__serveFlag._serveFlag?.__copy__()), _l:stdgo._internal.net.Net_Listener.Listener = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("httptest: failed to listen on %v: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.net.http.httptest.Httptest__serveFlag._serveFlag), stdgo.Go.toInterface(_err)));
            };
            return _l;
        };
        var __tmp__ = stdgo._internal.net.Net_listen.listen(("tcp" : stdgo.GoString), ("127.0.0.1:0" : stdgo.GoString)), _l:stdgo._internal.net.Net_Listener.Listener = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            {
                {
                    var __tmp__ = stdgo._internal.net.Net_listen.listen(("tcp6" : stdgo.GoString), ("[::1]:0" : stdgo.GoString));
                    _l = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("httptest: failed to listen on a port: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)));
                };
            };
        };
        return _l;
    }
