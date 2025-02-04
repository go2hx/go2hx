package stdgo._internal.debug.elf;
@:structInit @:using(stdgo._internal.debug.elf.Elf_rela32_static_extension.Rela32_static_extension) class Rela32 {
    public var off : stdgo.GoUInt32 = 0;
    public var info : stdgo.GoUInt32 = 0;
    public var addend : stdgo.GoInt32 = 0;
    public function new(?off:stdgo.GoUInt32, ?info:stdgo.GoUInt32, ?addend:stdgo.GoInt32) {
        if (off != null) this.off = off;
        if (info != null) this.info = info;
        if (addend != null) this.addend = addend;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Rela32(off, info, addend);
    }
}
