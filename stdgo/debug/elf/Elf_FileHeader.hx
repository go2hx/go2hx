package stdgo.debug.elf;
@:structInit @:using(stdgo.debug.elf.Elf.FileHeader_static_extension) abstract FileHeader(stdgo._internal.debug.elf.Elf_FileHeader.FileHeader) from stdgo._internal.debug.elf.Elf_FileHeader.FileHeader to stdgo._internal.debug.elf.Elf_FileHeader.FileHeader {
    public var class_(get, set) : Class_;
    function get_class_():Class_ return this.class_;
    function set_class_(v:Class_):Class_ {
        this.class_ = v;
        return v;
    }
    public var data(get, set) : Data;
    function get_data():Data return this.data;
    function set_data(v:Data):Data {
        this.data = v;
        return v;
    }
    public var version(get, set) : Version;
    function get_version():Version return this.version;
    function set_version(v:Version):Version {
        this.version = v;
        return v;
    }
    public var oSABI(get, set) : OSABI;
    function get_oSABI():OSABI return this.oSABI;
    function set_oSABI(v:OSABI):OSABI {
        this.oSABI = v;
        return v;
    }
    public var aBIVersion(get, set) : std.UInt;
    function get_aBIVersion():std.UInt return this.aBIVersion;
    function set_aBIVersion(v:std.UInt):std.UInt {
        this.aBIVersion = (v : stdgo.GoUInt8);
        return v;
    }
    public var byteOrder(get, set) : stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder;
    function get_byteOrder():stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder return this.byteOrder;
    function set_byteOrder(v:stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder):stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder {
        this.byteOrder = v;
        return v;
    }
    public var type(get, set) : Type_;
    function get_type():Type_ return this.type;
    function set_type(v:Type_):Type_ {
        this.type = v;
        return v;
    }
    public var machine(get, set) : Machine;
    function get_machine():Machine return this.machine;
    function set_machine(v:Machine):Machine {
        this.machine = v;
        return v;
    }
    public var entry(get, set) : haxe.UInt64;
    function get_entry():haxe.UInt64 return this.entry;
    function set_entry(v:haxe.UInt64):haxe.UInt64 {
        this.entry = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?class_:Class_, ?data:Data, ?version:Version, ?oSABI:OSABI, ?aBIVersion:std.UInt, ?byteOrder:stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder, ?type:Type_, ?machine:Machine, ?entry:haxe.UInt64) this = new stdgo._internal.debug.elf.Elf_FileHeader.FileHeader(class_, data, version, oSABI, (aBIVersion : stdgo.GoUInt8), byteOrder, type, machine, (entry : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
