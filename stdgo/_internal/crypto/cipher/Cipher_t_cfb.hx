package stdgo._internal.crypto.cipher;
@:structInit @:using(stdgo._internal.crypto.cipher.Cipher_t_cfb_static_extension.T_cfb_static_extension) class T_cfb {
    public var _b : stdgo._internal.crypto.cipher.Cipher_block.Block = (null : stdgo._internal.crypto.cipher.Cipher_block.Block);
    public var _next : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _out : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _outUsed : stdgo.GoInt = 0;
    public var _decrypt : Bool = false;
    public function new(?_b:stdgo._internal.crypto.cipher.Cipher_block.Block, ?_next:stdgo.Slice<stdgo.GoUInt8>, ?_out:stdgo.Slice<stdgo.GoUInt8>, ?_outUsed:stdgo.GoInt, ?_decrypt:Bool) {
        if (_b != null) this._b = _b;
        if (_next != null) this._next = _next;
        if (_out != null) this._out = _out;
        if (_outUsed != null) this._outUsed = _outUsed;
        if (_decrypt != null) this._decrypt = _decrypt;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_cfb(_b, _next, _out, _outUsed, _decrypt);
    }
}
