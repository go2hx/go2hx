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
function _parseContentLength(_cl:stdgo.GoString):stdgo.GoInt64 {
        _cl = stdgo._internal.net.textproto.Textproto_trimString.trimString(_cl?.__copy__())?.__copy__();
        if (_cl == (stdgo.Go.str())) {
            return (-1i64 : stdgo.GoInt64);
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_parseUint.parseUint(_cl?.__copy__(), (10 : stdgo.GoInt), (63 : stdgo.GoInt)), _n:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return (-1i64 : stdgo.GoInt64);
        };
        return (_n : stdgo.GoInt64);
    }
