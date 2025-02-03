package stdgo.crypto.cipher;
class T_gcm_static_extension {
    static public function _auth(_g:T_gcm, _out:Array<std.UInt>, _ciphertext:Array<std.UInt>, _additionalData:Array<std.UInt>, _tagMask:haxe.ds.Vector<std.UInt>):Void {
        final _g = (_g : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_gcm.T_gcm>);
        final _out = ([for (i in _out) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _ciphertext = ([for (i in _ciphertext) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _additionalData = ([for (i in _additionalData) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _tagMask = (_tagMask : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        stdgo._internal.crypto.cipher.Cipher_T_gcm_static_extension.T_gcm_static_extension._auth(_g, _out, _ciphertext, _additionalData, _tagMask);
    }
    static public function _deriveCounter(_g:T_gcm, _counter:haxe.ds.Vector<std.UInt>, _nonce:Array<std.UInt>):Void {
        final _g = (_g : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_gcm.T_gcm>);
        final _counter = (_counter : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        final _nonce = ([for (i in _nonce) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.cipher.Cipher_T_gcm_static_extension.T_gcm_static_extension._deriveCounter(_g, _counter, _nonce);
    }
    static public function _counterCrypt(_g:T_gcm, _out:Array<std.UInt>, _in:Array<std.UInt>, _counter:haxe.ds.Vector<std.UInt>):Void {
        final _g = (_g : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_gcm.T_gcm>);
        final _out = ([for (i in _out) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _in = ([for (i in _in) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _counter = (_counter : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        stdgo._internal.crypto.cipher.Cipher_T_gcm_static_extension.T_gcm_static_extension._counterCrypt(_g, _out, _in, _counter);
    }
    static public function _update(_g:T_gcm, _y:T_gcmFieldElement, _data:Array<std.UInt>):Void {
        final _g = (_g : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_gcm.T_gcm>);
        final _y = (_y : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_gcmFieldElement.T_gcmFieldElement>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.cipher.Cipher_T_gcm_static_extension.T_gcm_static_extension._update(_g, _y, _data);
    }
    static public function _updateBlocks(_g:T_gcm, _y:T_gcmFieldElement, _blocks:Array<std.UInt>):Void {
        final _g = (_g : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_gcm.T_gcm>);
        final _y = (_y : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_gcmFieldElement.T_gcmFieldElement>);
        final _blocks = ([for (i in _blocks) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.cipher.Cipher_T_gcm_static_extension.T_gcm_static_extension._updateBlocks(_g, _y, _blocks);
    }
    static public function _mul(_g:T_gcm, _y:T_gcmFieldElement):Void {
        final _g = (_g : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_gcm.T_gcm>);
        final _y = (_y : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_gcmFieldElement.T_gcmFieldElement>);
        stdgo._internal.crypto.cipher.Cipher_T_gcm_static_extension.T_gcm_static_extension._mul(_g, _y);
    }
    static public function open(_g:T_gcm, _dst:Array<std.UInt>, _nonce:Array<std.UInt>, _ciphertext:Array<std.UInt>, _data:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _g = (_g : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_gcm.T_gcm>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _nonce = ([for (i in _nonce) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _ciphertext = ([for (i in _ciphertext) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.cipher.Cipher_T_gcm_static_extension.T_gcm_static_extension.open(_g, _dst, _nonce, _ciphertext, _data);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function seal(_g:T_gcm, _dst:Array<std.UInt>, _nonce:Array<std.UInt>, _plaintext:Array<std.UInt>, _data:Array<std.UInt>):Array<std.UInt> {
        final _g = (_g : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_gcm.T_gcm>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _nonce = ([for (i in _nonce) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _plaintext = ([for (i in _plaintext) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.crypto.cipher.Cipher_T_gcm_static_extension.T_gcm_static_extension.seal(_g, _dst, _nonce, _plaintext, _data)) i];
    }
    static public function overhead(_g:T_gcm):StdTypes.Int {
        final _g = (_g : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_gcm.T_gcm>);
        return stdgo._internal.crypto.cipher.Cipher_T_gcm_static_extension.T_gcm_static_extension.overhead(_g);
    }
    static public function nonceSize(_g:T_gcm):StdTypes.Int {
        final _g = (_g : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_gcm.T_gcm>);
        return stdgo._internal.crypto.cipher.Cipher_T_gcm_static_extension.T_gcm_static_extension.nonceSize(_g);
    }
}
