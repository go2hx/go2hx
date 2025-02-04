package stdgo._internal.debug.elf;
@:structInit @:using(stdgo._internal.debug.elf.Elf_chdr64_static_extension.Chdr64_static_extension) class Chdr64 {
    public var type : stdgo.GoUInt32 = 0;
    @:optional
    public var __1 : stdgo.GoUInt32 = 0;
    public var size : stdgo.GoUInt64 = 0;
    public var addralign : stdgo.GoUInt64 = 0;
    public function new(?type:stdgo.GoUInt32, ?__1:stdgo.GoUInt32, ?size:stdgo.GoUInt64, ?addralign:stdgo.GoUInt64) {
        if (type != null) this.type = type;
        if (__1 != null) this.__1 = __1;
        if (size != null) this.size = size;
        if (addralign != null) this.addralign = addralign;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Chdr64(type, __1, size, addralign);
    }
}
