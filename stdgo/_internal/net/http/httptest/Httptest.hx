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
@:keep var __init_go2hx__ = {
        try {
            if ((stdgo._internal.net.http.httptest.Httptest__strSliceContainsPrefix._strSliceContainsPrefix(stdgo._internal.os.Os_args.args, ("-httptest.serve=" : stdgo.GoString)) || stdgo._internal.net.http.httptest.Httptest__strSliceContainsPrefix._strSliceContainsPrefix(stdgo._internal.os.Os_args.args, ("--httptest.serve=" : stdgo.GoString)) : Bool)) {
                stdgo._internal.flag.Flag_stringVar.stringVar(stdgo.Go.pointer(stdgo._internal.net.http.httptest.Httptest__serveFlag._serveFlag), ("httptest.serve" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("if non-empty, httptest.NewServer serves on this address and blocks." : stdgo.GoString));
            };
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
