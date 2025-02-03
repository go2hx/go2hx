package stdgo.crypto.cipher;
class T_ctr_static_extension {
    static public function xORKeyStream(_x:T_ctr, _dst:Array<std.UInt>, _src:Array<std.UInt>):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_ctr.T_ctr>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.cipher.Cipher_T_ctr_static_extension.T_ctr_static_extension.xORKeyStream(_x, _dst, _src);
    }
    static public function _refill(_x:T_ctr):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_ctr.T_ctr>);
        stdgo._internal.crypto.cipher.Cipher_T_ctr_static_extension.T_ctr_static_extension._refill(_x);
    }
}
