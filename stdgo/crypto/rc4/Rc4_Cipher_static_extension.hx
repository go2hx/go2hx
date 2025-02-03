package stdgo.crypto.rc4;
class Cipher_static_extension {
    static public function xORKeyStream(_c:Cipher, _dst:Array<std.UInt>, _src:Array<std.UInt>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.rc4.Rc4_Cipher.Cipher>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.rc4.Rc4_Cipher_static_extension.Cipher_static_extension.xORKeyStream(_c, _dst, _src);
    }
    static public function reset(_c:Cipher):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.rc4.Rc4_Cipher.Cipher>);
        stdgo._internal.crypto.rc4.Rc4_Cipher_static_extension.Cipher_static_extension.reset(_c);
    }
}
