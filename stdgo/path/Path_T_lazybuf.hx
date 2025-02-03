package stdgo.path;
@:structInit @:using(stdgo.path.Path.T_lazybuf_static_extension) abstract T_lazybuf(stdgo._internal.path.Path_T_lazybuf.T_lazybuf) from stdgo._internal.path.Path_T_lazybuf.T_lazybuf to stdgo._internal.path.Path_T_lazybuf.T_lazybuf {
    public var _s(get, set) : String;
    function get__s():String return this._s;
    function set__s(v:String):String {
        this._s = (v : stdgo.GoString);
        return v;
    }
    public var _buf(get, set) : Array<std.UInt>;
    function get__buf():Array<std.UInt> return [for (i in this._buf) i];
    function set__buf(v:Array<std.UInt>):Array<std.UInt> {
        this._buf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _w(get, set) : StdTypes.Int;
    function get__w():StdTypes.Int return this._w;
    function set__w(v:StdTypes.Int):StdTypes.Int {
        this._w = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_s:String, ?_buf:Array<std.UInt>, ?_w:StdTypes.Int) this = new stdgo._internal.path.Path_T_lazybuf.T_lazybuf((_s : stdgo.GoString), ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_w : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
