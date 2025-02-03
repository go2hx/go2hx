package stdgo.crypto.x509;
class T_rfc1423Algo_static_extension {
    static public function _deriveKey(_c:T_rfc1423Algo, _password:Array<std.UInt>, _salt:Array<std.UInt>):Array<std.UInt> {
        final _password = ([for (i in _password) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _salt = ([for (i in _salt) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.crypto.x509.X509_T_rfc1423Algo_static_extension.T_rfc1423Algo_static_extension._deriveKey(_c, _password, _salt)) i];
    }
}
