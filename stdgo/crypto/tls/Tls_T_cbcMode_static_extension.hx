package stdgo.crypto.tls;
class T_cbcMode_static_extension {
    static public function setIV(t:stdgo._internal.crypto.tls.Tls_T_cbcMode.T_cbcMode, _0:Array<std.UInt>):Void {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.tls.Tls_T_cbcMode_static_extension.T_cbcMode_static_extension.setIV(t, _0);
    }
}
