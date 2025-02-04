package stdgo._internal.debug.elf;
@:structInit @:using(stdgo._internal.debug.elf.Elf_fileheader_static_extension.FileHeader_static_extension) class FileHeader {
    public var class_ : stdgo._internal.debug.elf.Elf_class_.Class_ = ((0 : stdgo.GoUInt8) : stdgo._internal.debug.elf.Elf_class_.Class_);
    public var data : stdgo._internal.debug.elf.Elf_data.Data = ((0 : stdgo.GoUInt8) : stdgo._internal.debug.elf.Elf_data.Data);
    public var version : stdgo._internal.debug.elf.Elf_version.Version = ((0 : stdgo.GoUInt8) : stdgo._internal.debug.elf.Elf_version.Version);
    public var oSABI : stdgo._internal.debug.elf.Elf_osabi.OSABI = ((0 : stdgo.GoUInt8) : stdgo._internal.debug.elf.Elf_osabi.OSABI);
    public var aBIVersion : stdgo.GoUInt8 = 0;
    public var byteOrder : stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder = (null : stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder);
    public var type : stdgo._internal.debug.elf.Elf_type_.Type_ = ((0 : stdgo.GoUInt16) : stdgo._internal.debug.elf.Elf_type_.Type_);
    public var machine : stdgo._internal.debug.elf.Elf_machine.Machine = ((0 : stdgo.GoUInt16) : stdgo._internal.debug.elf.Elf_machine.Machine);
    public var entry : stdgo.GoUInt64 = 0;
    public function new(?class_:stdgo._internal.debug.elf.Elf_class_.Class_, ?data:stdgo._internal.debug.elf.Elf_data.Data, ?version:stdgo._internal.debug.elf.Elf_version.Version, ?oSABI:stdgo._internal.debug.elf.Elf_osabi.OSABI, ?aBIVersion:stdgo.GoUInt8, ?byteOrder:stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder, ?type:stdgo._internal.debug.elf.Elf_type_.Type_, ?machine:stdgo._internal.debug.elf.Elf_machine.Machine, ?entry:stdgo.GoUInt64) {
        if (class_ != null) this.class_ = class_;
        if (data != null) this.data = data;
        if (version != null) this.version = version;
        if (oSABI != null) this.oSABI = oSABI;
        if (aBIVersion != null) this.aBIVersion = aBIVersion;
        if (byteOrder != null) this.byteOrder = byteOrder;
        if (type != null) this.type = type;
        if (machine != null) this.machine = machine;
        if (entry != null) this.entry = entry;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new FileHeader(class_, data, version, oSABI, aBIVersion, byteOrder, type, machine, entry);
    }
}
