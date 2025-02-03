package stdgo.runtime.pprof;
@:structInit @:using(stdgo.runtime.pprof.Pprof.T_protobuf_static_extension) abstract T_protobuf(stdgo._internal.runtime.pprof.Pprof_T_protobuf.T_protobuf) from stdgo._internal.runtime.pprof.Pprof_T_protobuf.T_protobuf to stdgo._internal.runtime.pprof.Pprof_T_protobuf.T_protobuf {
    public var _data(get, set) : Array<std.UInt>;
    function get__data():Array<std.UInt> return [for (i in this._data) i];
    function set__data(v:Array<std.UInt>):Array<std.UInt> {
        this._data = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _tmp(get, set) : haxe.ds.Vector<std.UInt>;
    function get__tmp():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._tmp) i]);
    function set__tmp(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._tmp = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _nest(get, set) : StdTypes.Int;
    function get__nest():StdTypes.Int return this._nest;
    function set__nest(v:StdTypes.Int):StdTypes.Int {
        this._nest = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_data:Array<std.UInt>, ?_tmp:haxe.ds.Vector<std.UInt>, ?_nest:StdTypes.Int) this = new stdgo._internal.runtime.pprof.Pprof_T_protobuf.T_protobuf(([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _tmp) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (_nest : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
