package stdgo.crypto.cipher;
@:structInit @:using(stdgo.crypto.cipher.Cipher.T_cfb_static_extension) abstract T_cfb(stdgo._internal.crypto.cipher.Cipher_T_cfb.T_cfb) from stdgo._internal.crypto.cipher.Cipher_T_cfb.T_cfb to stdgo._internal.crypto.cipher.Cipher_T_cfb.T_cfb {
    public var _b(get, set) : Block;
    function get__b():Block return this._b;
    function set__b(v:Block):Block {
        this._b = v;
        return v;
    }
    public var _next(get, set) : Array<std.UInt>;
    function get__next():Array<std.UInt> return [for (i in this._next) i];
    function set__next(v:Array<std.UInt>):Array<std.UInt> {
        this._next = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
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
    public var _decrypt(get, set) : Bool;
    function get__decrypt():Bool return this._decrypt;
    function set__decrypt(v:Bool):Bool {
        this._decrypt = v;
        return v;
    }
    public function new(?_b:Block, ?_next:Array<std.UInt>, ?_out:Array<std.UInt>, ?_outUsed:StdTypes.Int, ?_decrypt:Bool) this = new stdgo._internal.crypto.cipher.Cipher_T_cfb.T_cfb(_b, ([for (i in _next) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _out) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_outUsed : stdgo.GoInt), _decrypt);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
