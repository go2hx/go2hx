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
function newRecorder():stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_ResponseRecorder.ResponseRecorder> {
        return (stdgo.Go.setRef(({ headerMap : (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_Header.Header), body : (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>), code : (200 : stdgo.GoInt) } : stdgo._internal.net.http.httptest.Httptest_ResponseRecorder.ResponseRecorder)) : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_ResponseRecorder.ResponseRecorder>);
    }
