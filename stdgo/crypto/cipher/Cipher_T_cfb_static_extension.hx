package stdgo.crypto.cipher;
class T_cfb_static_extension {
    static public function xORKeyStream(_x:T_cfb, _dst:Array<std.UInt>, _src:Array<std.UInt>):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_cfb.T_cfb>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.cipher.Cipher_T_cfb_static_extension.T_cfb_static_extension.xORKeyStream(_x, _dst, _src);
    }
}
