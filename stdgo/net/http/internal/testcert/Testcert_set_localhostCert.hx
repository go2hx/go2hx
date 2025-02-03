package stdgo.net.http.internal.testcert;
private function set_localhostCert(v:Array<std.UInt>):Array<std.UInt> {
        stdgo._internal.net.http.internal.testcert.Testcert_localhostCert.localhostCert = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
