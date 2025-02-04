package stdgo._internal.crypto.x509;
@:structInit @:using(stdgo._internal.crypto.x509.X509_t_rfc1423algo_static_extension.T_rfc1423Algo_static_extension) class T_rfc1423Algo {
    public var _cipher : stdgo._internal.crypto.x509.X509_pemcipher.PEMCipher = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_pemcipher.PEMCipher);
    public var _name : stdgo.GoString = "";
    public var _cipherFunc : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo._internal.crypto.cipher.Cipher_block.Block; var _1 : stdgo.Error; } = null;
    public var _keySize : stdgo.GoInt = 0;
    public var _blockSize : stdgo.GoInt = 0;
    public function new(?_cipher:stdgo._internal.crypto.x509.X509_pemcipher.PEMCipher, ?_name:stdgo.GoString, ?_cipherFunc:stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo._internal.crypto.cipher.Cipher_block.Block; var _1 : stdgo.Error; }, ?_keySize:stdgo.GoInt, ?_blockSize:stdgo.GoInt) {
        if (_cipher != null) this._cipher = _cipher;
        if (_name != null) this._name = _name;
        if (_cipherFunc != null) this._cipherFunc = _cipherFunc;
        if (_keySize != null) this._keySize = _keySize;
        if (_blockSize != null) this._blockSize = _blockSize;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_rfc1423Algo(_cipher, _name, _cipherFunc, _keySize, _blockSize);
    }
}
