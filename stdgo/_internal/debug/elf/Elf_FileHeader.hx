package stdgo._internal.debug.elf;
@:structInit @:using(stdgo._internal.debug.elf.Elf_FileHeader_static_extension.FileHeader_static_extension) class FileHeader {
    public var class_ : stdgo._internal.debug.elf.Elf_Class_.Class_ = ((0 : stdgo.GoUInt8) : stdgo._internal.debug.elf.Elf_Class_.Class_);
    public var data : stdgo._internal.debug.elf.Elf_Data.Data = ((0 : stdgo.GoUInt8) : stdgo._internal.debug.elf.Elf_Data.Data);
    public var version : stdgo._internal.debug.elf.Elf_Version.Version = ((0 : stdgo.GoUInt8) : stdgo._internal.debug.elf.Elf_Version.Version);
    public var oSABI : stdgo._internal.debug.elf.Elf_OSABI.OSABI = ((0 : stdgo.GoUInt8) : stdgo._internal.debug.elf.Elf_OSABI.OSABI);
    public var aBIVersion : stdgo.GoUInt8 = 0;
    public var byteOrder : stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder = (null : stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder);
    public var type : stdgo._internal.debug.elf.Elf_Type_.Type_ = ((0 : stdgo.GoUInt16) : stdgo._internal.debug.elf.Elf_Type_.Type_);
    public var machine : stdgo._internal.debug.elf.Elf_Machine.Machine = ((0 : stdgo.GoUInt16) : stdgo._internal.debug.elf.Elf_Machine.Machine);
    public var entry : stdgo.GoUInt64 = 0;
    public function new(?class_:stdgo._internal.debug.elf.Elf_Class_.Class_, ?data:stdgo._internal.debug.elf.Elf_Data.Data, ?version:stdgo._internal.debug.elf.Elf_Version.Version, ?oSABI:stdgo._internal.debug.elf.Elf_OSABI.OSABI, ?aBIVersion:stdgo.GoUInt8, ?byteOrder:stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder, ?type:stdgo._internal.debug.elf.Elf_Type_.Type_, ?machine:stdgo._internal.debug.elf.Elf_Machine.Machine, ?entry:stdgo.GoUInt64) {
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
