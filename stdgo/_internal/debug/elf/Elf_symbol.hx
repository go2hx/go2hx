package stdgo._internal.debug.elf;
@:structInit @:using(stdgo._internal.debug.elf.Elf_symbol_static_extension.Symbol_static_extension) class Symbol {
    public var name : stdgo.GoString = "";
    public var info : stdgo.GoUInt8 = 0;
    public var other : stdgo.GoUInt8 = 0;
    public var section : stdgo._internal.debug.elf.Elf_sectionindex.SectionIndex = ((0 : stdgo.GoInt) : stdgo._internal.debug.elf.Elf_sectionindex.SectionIndex);
    public var value : stdgo.GoUInt64 = 0;
    public var size : stdgo.GoUInt64 = 0;
    public var version : stdgo.GoString = "";
    public var library : stdgo.GoString = "";
    public function new(?name:stdgo.GoString, ?info:stdgo.GoUInt8, ?other:stdgo.GoUInt8, ?section:stdgo._internal.debug.elf.Elf_sectionindex.SectionIndex, ?value:stdgo.GoUInt64, ?size:stdgo.GoUInt64, ?version:stdgo.GoString, ?library:stdgo.GoString) {
        if (name != null) this.name = name;
        if (info != null) this.info = info;
        if (other != null) this.other = other;
        if (section != null) this.section = section;
        if (value != null) this.value = value;
        if (size != null) this.size = size;
        if (version != null) this.version = version;
        if (library != null) this.library = library;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Symbol(name, info, other, section, value, size, version, library);
    }
}
