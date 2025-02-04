package stdgo._internal.crypto.cipher;
@:structInit @:using(stdgo._internal.crypto.cipher.Cipher_t_cbc_static_extension.T_cbc_static_extension) class T_cbc {
    public var _b : stdgo._internal.crypto.cipher.Cipher_block.Block = (null : stdgo._internal.crypto.cipher.Cipher_block.Block);
    public var _blockSize : stdgo.GoInt = 0;
    public var _iv : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _tmp : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_b:stdgo._internal.crypto.cipher.Cipher_block.Block, ?_blockSize:stdgo.GoInt, ?_iv:stdgo.Slice<stdgo.GoUInt8>, ?_tmp:stdgo.Slice<stdgo.GoUInt8>) {
        if (_b != null) this._b = _b;
        if (_blockSize != null) this._blockSize = _blockSize;
        if (_iv != null) this._iv = _iv;
        if (_tmp != null) this._tmp = _tmp;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_cbc(_b, _blockSize, _iv, _tmp);
    }
}
