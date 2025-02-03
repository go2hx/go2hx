package stdgo.internal.txtar;
@:structInit @:using(stdgo.internal.txtar.Txtar.Archive_static_extension) abstract Archive(stdgo._internal.internal.txtar.Txtar_Archive.Archive) from stdgo._internal.internal.txtar.Txtar_Archive.Archive to stdgo._internal.internal.txtar.Txtar_Archive.Archive {
    public var comment(get, set) : Array<std.UInt>;
    function get_comment():Array<std.UInt> return [for (i in this.comment) i];
    function set_comment(v:Array<std.UInt>):Array<std.UInt> {
        this.comment = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var files(get, set) : Array<File>;
    function get_files():Array<File> return [for (i in this.files) i];
    function set_files(v:Array<File>):Array<File> {
        this.files = ([for (i in v) i] : stdgo.Slice<stdgo._internal.internal.txtar.Txtar_File.File>);
        return v;
    }
    public function new(?comment:Array<std.UInt>, ?files:Array<File>) this = new stdgo._internal.internal.txtar.Txtar_Archive.Archive(([for (i in comment) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in files) i] : stdgo.Slice<stdgo._internal.internal.txtar.Txtar_File.File>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
