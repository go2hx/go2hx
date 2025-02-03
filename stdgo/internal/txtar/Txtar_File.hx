package stdgo.internal.txtar;
@:structInit @:using(stdgo.internal.txtar.Txtar.File_static_extension) abstract File(stdgo._internal.internal.txtar.Txtar_File.File) from stdgo._internal.internal.txtar.Txtar_File.File to stdgo._internal.internal.txtar.Txtar_File.File {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var data(get, set) : Array<std.UInt>;
    function get_data():Array<std.UInt> return [for (i in this.data) i];
    function set_data(v:Array<std.UInt>):Array<std.UInt> {
        this.data = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?name:String, ?data:Array<std.UInt>) this = new stdgo._internal.internal.txtar.Txtar_File.File((name : stdgo.GoString), ([for (i in data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
