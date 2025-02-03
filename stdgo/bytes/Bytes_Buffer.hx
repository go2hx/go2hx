package stdgo.bytes;
@:structInit @:using(stdgo.bytes.Bytes.Buffer_static_extension) abstract Buffer(stdgo._internal.bytes.Bytes_Buffer.Buffer) from stdgo._internal.bytes.Bytes_Buffer.Buffer to stdgo._internal.bytes.Bytes_Buffer.Buffer {
    public var _buf(get, set) : Array<std.UInt>;
    function get__buf():Array<std.UInt> return [for (i in this._buf) i];
    function set__buf(v:Array<std.UInt>):Array<std.UInt> {
        this._buf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _off(get, set) : StdTypes.Int;
    function get__off():StdTypes.Int return this._off;
    function set__off(v:StdTypes.Int):StdTypes.Int {
        this._off = (v : stdgo.GoInt);
        return v;
    }
    public var _lastRead(get, set) : T_readOp;
    function get__lastRead():T_readOp return this._lastRead;
    function set__lastRead(v:T_readOp):T_readOp {
        this._lastRead = v;
        return v;
    }
    public function new(?_buf:Array<std.UInt>, ?_off:StdTypes.Int, ?_lastRead:T_readOp) this = new stdgo._internal.bytes.Bytes_Buffer.Buffer(([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_off : stdgo.GoInt), _lastRead);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
