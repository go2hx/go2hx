package stdgo._internal.archive.tar;
@:structInit @:using(stdgo._internal.archive.tar.Tar_t_sparseentry_static_extension.T_sparseEntry_static_extension) class T_sparseEntry {
    public var offset : stdgo.GoInt64 = 0;
    public var length_ : stdgo.GoInt64 = 0;
    public function new(?offset:stdgo.GoInt64, ?length_:stdgo.GoInt64) {
        if (offset != null) this.offset = offset;
        if (length_ != null) this.length_ = length_;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_sparseEntry(offset, length_);
    }
}
