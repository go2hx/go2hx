package stdgo._internal.crypto.cipher;
@:structInit @:using(stdgo._internal.crypto.cipher.Cipher_t_ctr_static_extension.T_ctr_static_extension) class T_ctr {
    public var _b : stdgo._internal.crypto.cipher.Cipher_block.Block = (null : stdgo._internal.crypto.cipher.Cipher_block.Block);
    public var _ctr : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _out : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _outUsed : stdgo.GoInt = 0;
    public function new(?_b:stdgo._internal.crypto.cipher.Cipher_block.Block, ?_ctr:stdgo.Slice<stdgo.GoUInt8>, ?_out:stdgo.Slice<stdgo.GoUInt8>, ?_outUsed:stdgo.GoInt) {
        if (_b != null) this._b = _b;
        if (_ctr != null) this._ctr = _ctr;
        if (_out != null) this._out = _out;
        if (_outUsed != null) this._outUsed = _outUsed;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_ctr(_b, _ctr, _out, _outUsed);
    }
}
