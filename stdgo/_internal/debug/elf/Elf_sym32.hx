package stdgo._internal.debug.elf;
@:structInit @:using(stdgo._internal.debug.elf.Elf_sym32_static_extension.Sym32_static_extension) class Sym32 {
    public var name : stdgo.GoUInt32 = 0;
    public var value : stdgo.GoUInt32 = 0;
    public var size : stdgo.GoUInt32 = 0;
    public var info : stdgo.GoUInt8 = 0;
    public var other : stdgo.GoUInt8 = 0;
    public var shndx : stdgo.GoUInt16 = 0;
    public function new(?name:stdgo.GoUInt32, ?value:stdgo.GoUInt32, ?size:stdgo.GoUInt32, ?info:stdgo.GoUInt8, ?other:stdgo.GoUInt8, ?shndx:stdgo.GoUInt16) {
        if (name != null) this.name = name;
        if (value != null) this.value = value;
        if (size != null) this.size = size;
        if (info != null) this.info = info;
        if (other != null) this.other = other;
        if (shndx != null) this.shndx = shndx;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Sym32(name, value, size, info, other, shndx);
    }
}
