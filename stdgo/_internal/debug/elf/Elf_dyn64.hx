package stdgo._internal.debug.elf;
@:structInit @:using(stdgo._internal.debug.elf.Elf_dyn64_static_extension.Dyn64_static_extension) class Dyn64 {
    public var tag : stdgo.GoInt64 = 0;
    public var val : stdgo.GoUInt64 = 0;
    public function new(?tag:stdgo.GoInt64, ?val:stdgo.GoUInt64) {
        if (tag != null) this.tag = tag;
        if (val != null) this.val = val;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Dyn64(tag, val);
    }
}
