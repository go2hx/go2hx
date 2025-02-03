package stdgo.net.http.internal.testcert;
private function set_localhostKey(v:Array<std.UInt>):Array<std.UInt> {
        stdgo._internal.net.http.internal.testcert.Testcert_localhostKey.localhostKey = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
