package stdgo._internal.crypto.cipher;
@:structInit @:using(stdgo._internal.crypto.cipher.Cipher_T_gcm_static_extension.T_gcm_static_extension) class T_gcm {
    public var _cipher : stdgo._internal.crypto.cipher.Cipher_Block.Block = (null : stdgo._internal.crypto.cipher.Cipher_Block.Block);
    public var _nonceSize : stdgo.GoInt = 0;
    public var _tagSize : stdgo.GoInt = 0;
    public var _productTable : stdgo.GoArray<stdgo._internal.crypto.cipher.Cipher_T_gcmFieldElement.T_gcmFieldElement> = new stdgo.GoArray<stdgo._internal.crypto.cipher.Cipher_T_gcmFieldElement.T_gcmFieldElement>(16, 16, ...[for (i in 0 ... 16) ({} : stdgo._internal.crypto.cipher.Cipher_T_gcmFieldElement.T_gcmFieldElement)]);
    public function new(?_cipher:stdgo._internal.crypto.cipher.Cipher_Block.Block, ?_nonceSize:stdgo.GoInt, ?_tagSize:stdgo.GoInt, ?_productTable:stdgo.GoArray<stdgo._internal.crypto.cipher.Cipher_T_gcmFieldElement.T_gcmFieldElement>) {
        if (_cipher != null) this._cipher = _cipher;
        if (_nonceSize != null) this._nonceSize = _nonceSize;
        if (_tagSize != null) this._tagSize = _tagSize;
        if (_productTable != null) this._productTable = _productTable;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_gcm(_cipher, _nonceSize, _tagSize, _productTable);
    }
}
