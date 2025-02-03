package stdgo.crypto.cipher;
class T_ofb_static_extension {
    static public function xORKeyStream(_x:T_ofb, _dst:Array<std.UInt>, _src:Array<std.UInt>):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_ofb.T_ofb>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.cipher.Cipher_T_ofb_static_extension.T_ofb_static_extension.xORKeyStream(_x, _dst, _src);
    }
    static public function _refill(_x:T_ofb):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_ofb.T_ofb>);
        stdgo._internal.crypto.cipher.Cipher_T_ofb_static_extension.T_ofb_static_extension._refill(_x);
    }
}
