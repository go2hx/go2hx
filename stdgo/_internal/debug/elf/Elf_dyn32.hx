package stdgo._internal.debug.elf;
@:structInit @:using(stdgo._internal.debug.elf.Elf_dyn32_static_extension.Dyn32_static_extension) class Dyn32 {
    public var tag : stdgo.GoInt32 = 0;
    public var val : stdgo.GoUInt32 = 0;
    public function new(?tag:stdgo.GoInt32, ?val:stdgo.GoUInt32) {
        if (tag != null) this.tag = tag;
        if (val != null) this.val = val;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Dyn32(tag, val);
    }
}
