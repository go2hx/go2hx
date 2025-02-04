package stdgo._internal.debug.dwarf;
@:structInit @:using(stdgo._internal.debug.dwarf.Dwarf_linefile_static_extension.LineFile_static_extension) class LineFile {
    public var name : stdgo.GoString = "";
    public var mtime : stdgo.GoUInt64 = 0;
    public var length_ : stdgo.GoInt = 0;
    public function new(?name:stdgo.GoString, ?mtime:stdgo.GoUInt64, ?length_:stdgo.GoInt) {
        if (name != null) this.name = name;
        if (mtime != null) this.mtime = mtime;
        if (length_ != null) this.length_ = length_;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new LineFile(name, mtime, length_);
    }
}
