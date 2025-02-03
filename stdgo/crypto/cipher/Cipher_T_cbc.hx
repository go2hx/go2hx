package stdgo.crypto.cipher;
@:structInit @:using(stdgo.crypto.cipher.Cipher.T_cbc_static_extension) abstract T_cbc(stdgo._internal.crypto.cipher.Cipher_T_cbc.T_cbc) from stdgo._internal.crypto.cipher.Cipher_T_cbc.T_cbc to stdgo._internal.crypto.cipher.Cipher_T_cbc.T_cbc {
    public var _b(get, set) : Block;
    function get__b():Block return this._b;
    function set__b(v:Block):Block {
        this._b = v;
        return v;
    }
    public var _blockSize(get, set) : StdTypes.Int;
    function get__blockSize():StdTypes.Int return this._blockSize;
    function set__blockSize(v:StdTypes.Int):StdTypes.Int {
        this._blockSize = (v : stdgo.GoInt);
        return v;
    }
    public var _iv(get, set) : Array<std.UInt>;
    function get__iv():Array<std.UInt> return [for (i in this._iv) i];
    function set__iv(v:Array<std.UInt>):Array<std.UInt> {
        this._iv = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _tmp(get, set) : Array<std.UInt>;
    function get__tmp():Array<std.UInt> return [for (i in this._tmp) i];
    function set__tmp(v:Array<std.UInt>):Array<std.UInt> {
        this._tmp = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_b:Block, ?_blockSize:StdTypes.Int, ?_iv:Array<std.UInt>, ?_tmp:Array<std.UInt>) this = new stdgo._internal.crypto.cipher.Cipher_T_cbc.T_cbc(_b, (_blockSize : stdgo.GoInt), ([for (i in _iv) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _tmp) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
