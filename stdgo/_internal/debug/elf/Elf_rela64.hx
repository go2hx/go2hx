package stdgo._internal.debug.elf;
@:structInit @:using(stdgo._internal.debug.elf.Elf_rela64_static_extension.Rela64_static_extension) class Rela64 {
    public var off : stdgo.GoUInt64 = 0;
    public var info : stdgo.GoUInt64 = 0;
    public var addend : stdgo.GoInt64 = 0;
    public function new(?off:stdgo.GoUInt64, ?info:stdgo.GoUInt64, ?addend:stdgo.GoInt64) {
        if (off != null) this.off = off;
        if (info != null) this.info = info;
        if (addend != null) this.addend = addend;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Rela64(off, info, addend);
    }
}
