package stdgo.crypto.cipher;
@:structInit @:using(stdgo.crypto.cipher.Cipher.T_ctr_static_extension) abstract T_ctr(stdgo._internal.crypto.cipher.Cipher_T_ctr.T_ctr) from stdgo._internal.crypto.cipher.Cipher_T_ctr.T_ctr to stdgo._internal.crypto.cipher.Cipher_T_ctr.T_ctr {
    public var _b(get, set) : Block;
    function get__b():Block return this._b;
    function set__b(v:Block):Block {
        this._b = v;
        return v;
    }
    public var _ctr(get, set) : Array<std.UInt>;
    function get__ctr():Array<std.UInt> return [for (i in this._ctr) i];
    function set__ctr(v:Array<std.UInt>):Array<std.UInt> {
        this._ctr = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
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
    public function new(?_b:Block, ?_ctr:Array<std.UInt>, ?_out:Array<std.UInt>, ?_outUsed:StdTypes.Int) this = new stdgo._internal.crypto.cipher.Cipher_T_ctr.T_ctr(_b, ([for (i in _ctr) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _out) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_outUsed : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
