package stdgo.net.http.internal.testcert;
var localhostCert(get, set) : Array<std.UInt>;
private function get_localhostCert():Array<std.UInt> return [for (i in stdgo._internal.net.http.internal.testcert.Testcert_localhostCert.localhostCert) i];
private function set_localhostCert(v:Array<std.UInt>):Array<std.UInt> {
        stdgo._internal.net.http.internal.testcert.Testcert_localhostCert.localhostCert = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
var localhostKey(get, set) : Array<std.UInt>;
private function get_localhostKey():Array<std.UInt> return [for (i in stdgo._internal.net.http.internal.testcert.Testcert_localhostKey.localhostKey) i];
private function set_localhostKey(v:Array<std.UInt>):Array<std.UInt> {
        stdgo._internal.net.http.internal.testcert.Testcert_localhostKey.localhostKey = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
/**
    * Package testcert contains a test-only localhost certificate.
**/
class Testcert {

}
