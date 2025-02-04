package stdgo._internal.debug.elf;
@:structInit @:using(stdgo._internal.debug.elf.Elf_rel64_static_extension.Rel64_static_extension) class Rel64 {
    public var off : stdgo.GoUInt64 = 0;
    public var info : stdgo.GoUInt64 = 0;
    public function new(?off:stdgo.GoUInt64, ?info:stdgo.GoUInt64) {
        if (off != null) this.off = off;
        if (info != null) this.info = info;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Rel64(off, info);
    }
}
