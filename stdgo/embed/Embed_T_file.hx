package stdgo.embed;
@:structInit @:using(stdgo.embed.Embed.T_file_static_extension) abstract T_file(stdgo._internal.embed.Embed_T_file.T_file) from stdgo._internal.embed.Embed_T_file.T_file to stdgo._internal.embed.Embed_T_file.T_file {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _data(get, set) : String;
    function get__data():String return this._data;
    function set__data(v:String):String {
        this._data = (v : stdgo.GoString);
        return v;
    }
    public var _hash(get, set) : haxe.ds.Vector<std.UInt>;
    function get__hash():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._hash) i]);
    function set__hash(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._hash = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_name:String, ?_data:String, ?_hash:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.embed.Embed_T_file.T_file((_name : stdgo.GoString), (_data : stdgo.GoString), ([for (i in _hash) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
