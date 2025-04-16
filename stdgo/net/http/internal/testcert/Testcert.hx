package stdgo.net.http.internal.testcert;
var localhostCert(get, set) : stdgo.Slice<stdgo.GoUInt8>;
private function get_localhostCert():stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.net.http.internal.testcert.Testcert_localhostcert.localhostCert;
private function set_localhostCert(v:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        stdgo._internal.net.http.internal.testcert.Testcert_localhostcert.localhostCert = v;
        return v;
    }
var localhostKey(get, set) : stdgo.Slice<stdgo.GoUInt8>;
private function get_localhostKey():stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.net.http.internal.testcert.Testcert_localhostkey.localhostKey;
private function set_localhostKey(v:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        stdgo._internal.net.http.internal.testcert.Testcert_localhostkey.localhostKey = v;
        return v;
    }
/**
    * Package testcert contains a test-only localhost certificate.
**/
class Testcert {

}
