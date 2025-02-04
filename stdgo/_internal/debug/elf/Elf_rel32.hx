package stdgo._internal.debug.elf;
@:structInit @:using(stdgo._internal.debug.elf.Elf_rel32_static_extension.Rel32_static_extension) class Rel32 {
    public var off : stdgo.GoUInt32 = 0;
    public var info : stdgo.GoUInt32 = 0;
    public function new(?off:stdgo.GoUInt32, ?info:stdgo.GoUInt32) {
        if (off != null) this.off = off;
        if (info != null) this.info = info;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Rel32(off, info);
    }
}
