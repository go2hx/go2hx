package stdgo._internal.debug.elf;
@:structInit @:using(stdgo._internal.debug.elf.Elf_chdr32_static_extension.Chdr32_static_extension) class Chdr32 {
    public var type : stdgo.GoUInt32 = 0;
    public var size : stdgo.GoUInt32 = 0;
    public var addralign : stdgo.GoUInt32 = 0;
    public function new(?type:stdgo.GoUInt32, ?size:stdgo.GoUInt32, ?addralign:stdgo.GoUInt32) {
        if (type != null) this.type = type;
        if (size != null) this.size = size;
        if (addralign != null) this.addralign = addralign;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Chdr32(type, size, addralign);
    }
}
