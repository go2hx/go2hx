package stdgo.archive.tar;
@:structInit @:using(stdgo.archive.tar.Tar.T_sparseEntry_static_extension) abstract T_sparseEntry(stdgo._internal.archive.tar.Tar_T_sparseEntry.T_sparseEntry) from stdgo._internal.archive.tar.Tar_T_sparseEntry.T_sparseEntry to stdgo._internal.archive.tar.Tar_T_sparseEntry.T_sparseEntry {
    public var offset(get, set) : haxe.Int64;
    function get_offset():haxe.Int64 return this.offset;
    function set_offset(v:haxe.Int64):haxe.Int64 {
        this.offset = (v : stdgo.GoInt64);
        return v;
    }
    public var length_(get, set) : haxe.Int64;
    function get_length_():haxe.Int64 return this.length_;
    function set_length_(v:haxe.Int64):haxe.Int64 {
        this.length_ = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?offset:haxe.Int64, ?length_:haxe.Int64) this = new stdgo._internal.archive.tar.Tar_T_sparseEntry.T_sparseEntry((offset : stdgo.GoInt64), (length_ : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
