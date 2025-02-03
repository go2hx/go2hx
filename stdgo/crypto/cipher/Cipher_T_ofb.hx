package stdgo.crypto.cipher;
@:structInit @:using(stdgo.crypto.cipher.Cipher.T_ofb_static_extension) abstract T_ofb(stdgo._internal.crypto.cipher.Cipher_T_ofb.T_ofb) from stdgo._internal.crypto.cipher.Cipher_T_ofb.T_ofb to stdgo._internal.crypto.cipher.Cipher_T_ofb.T_ofb {
    public var _b(get, set) : Block;
    function get__b():Block return this._b;
    function set__b(v:Block):Block {
        this._b = v;
        return v;
    }
    public var _cipher(get, set) : Array<std.UInt>;
    function get__cipher():Array<std.UInt> return [for (i in this._cipher) i];
    function set__cipher(v:Array<std.UInt>):Array<std.UInt> {
        this._cipher = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _out(get, set) : Array<std.UInt>;
    function get__out():Array<std.UInt> return [for (i in this._out) i];
    function set__out(v:Array<std.UInt>):Array<std.UInt> {
        this._out = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _outUsed(get, set) : StdTypes.Int;
    function get__outUsed():StdTypes.Int return this._outUsed;
    function set__outUsed(v:StdTypes.Int):StdTypes.Int {
        this._outUsed = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_b:Block, ?_cipher:Array<std.UInt>, ?_out:Array<std.UInt>, ?_outUsed:StdTypes.Int) this = new stdgo._internal.crypto.cipher.Cipher_T_ofb.T_ofb(_b, ([for (i in _cipher) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _out) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_outUsed : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
