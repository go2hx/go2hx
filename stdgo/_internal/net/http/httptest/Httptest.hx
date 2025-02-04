package stdgo._internal.net.http.httptest;
@:keep var __init_go2hx__ = {
        try {
            if ((stdgo._internal.net.http.httptest.Httptest__strslicecontainsprefix._strSliceContainsPrefix(stdgo._internal.os.Os_args.args, ("-httptest.serve=" : stdgo.GoString)) || stdgo._internal.net.http.httptest.Httptest__strslicecontainsprefix._strSliceContainsPrefix(stdgo._internal.os.Os_args.args, ("--httptest.serve=" : stdgo.GoString)) : Bool)) {
                stdgo._internal.flag.Flag_stringvar.stringVar(stdgo.Go.pointer(stdgo._internal.net.http.httptest.Httptest__serveflag._serveFlag), ("httptest.serve" : stdgo.GoString), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), ("if non-empty, httptest.NewServer serves on this address and blocks." : stdgo.GoString));
            };
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
