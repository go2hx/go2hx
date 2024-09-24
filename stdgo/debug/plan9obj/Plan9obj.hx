package stdgo.debug.plan9obj;
final magic64 : haxe.UInt64 = stdgo._internal.debug.plan9obj.Plan9obj_magic64.magic64;
final magic386 : haxe.UInt64 = stdgo._internal.debug.plan9obj.Plan9obj_magic386.magic386;
final magicAMD64 : haxe.UInt64 = stdgo._internal.debug.plan9obj.Plan9obj_magicAMD64.magicAMD64;
final magicARM : haxe.UInt64 = stdgo._internal.debug.plan9obj.Plan9obj_magicARM.magicARM;
var errNoSymbols(get, set) : stdgo.Error;
private function get_errNoSymbols():stdgo.Error return stdgo._internal.debug.plan9obj.Plan9obj_errNoSymbols.errNoSymbols;
private function set_errNoSymbols(v:stdgo.Error):stdgo.Error {
        stdgo._internal.debug.plan9obj.Plan9obj_errNoSymbols.errNoSymbols = v;
        return v;
    }
@:structInit abstract FileHeader(stdgo._internal.debug.plan9obj.Plan9obj_FileHeader.FileHeader) from stdgo._internal.debug.plan9obj.Plan9obj_FileHeader.FileHeader to stdgo._internal.debug.plan9obj.Plan9obj_FileHeader.FileHeader {
    public var magic(get, set) : std.UInt;
    function get_magic():std.UInt return this.magic;
    function set_magic(v:std.UInt):std.UInt {
        this.magic = v;
        return v;
    }
    public var bss(get, set) : std.UInt;
    function get_bss():std.UInt return this.bss;
    function set_bss(v:std.UInt):std.UInt {
        this.bss = v;
        return v;
    }
    public var entry(get, set) : haxe.UInt64;
    function get_entry():haxe.UInt64 return this.entry;
    function set_entry(v:haxe.UInt64):haxe.UInt64 {
        this.entry = v;
        return v;
    }
    public var ptrSize(get, set) : StdTypes.Int;
    function get_ptrSize():StdTypes.Int return this.ptrSize;
    function set_ptrSize(v:StdTypes.Int):StdTypes.Int {
        this.ptrSize = v;
        return v;
    }
    public var loadAddress(get, set) : haxe.UInt64;
    function get_loadAddress():haxe.UInt64 return this.loadAddress;
    function set_loadAddress(v:haxe.UInt64):haxe.UInt64 {
        this.loadAddress = v;
        return v;
    }
    public var hdrSize(get, set) : haxe.UInt64;
    function get_hdrSize():haxe.UInt64 return this.hdrSize;
    function set_hdrSize(v:haxe.UInt64):haxe.UInt64 {
        this.hdrSize = v;
        return v;
    }
    public function new(?magic:std.UInt, ?bss:std.UInt, ?entry:haxe.UInt64, ?ptrSize:StdTypes.Int, ?loadAddress:haxe.UInt64, ?hdrSize:haxe.UInt64) this = new stdgo._internal.debug.plan9obj.Plan9obj_FileHeader.FileHeader(magic, bss, entry, ptrSize, loadAddress, hdrSize);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.plan9obj.Plan9obj.File_static_extension) abstract File(stdgo._internal.debug.plan9obj.Plan9obj_File.File) from stdgo._internal.debug.plan9obj.Plan9obj_File.File to stdgo._internal.debug.plan9obj.Plan9obj_File.File {
    public var fileHeader(get, set) : FileHeader;
    function get_fileHeader():FileHeader return this.fileHeader;
    function set_fileHeader(v:FileHeader):FileHeader {
        this.fileHeader = v;
        return v;
    }
    public var sections(get, set) : Array<Section>;
    function get_sections():Array<Section> return [for (i in this.sections) i];
    function set_sections(v:Array<Section>):Array<Section> {
        this.sections = ([for (i in v) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_Section.Section>>);
        return v;
    }
    public var _closer(get, set) : stdgo._internal.io.Io_Closer.Closer;
    function get__closer():stdgo._internal.io.Io_Closer.Closer return this._closer;
    function set__closer(v:stdgo._internal.io.Io_Closer.Closer):stdgo._internal.io.Io_Closer.Closer {
        this._closer = v;
        return v;
    }
    public function new(?fileHeader:FileHeader, ?sections:Array<Section>, ?_closer:stdgo._internal.io.Io_Closer.Closer) this = new stdgo._internal.debug.plan9obj.Plan9obj_File.File(fileHeader, ([for (i in sections) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_Section.Section>>), _closer);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract SectionHeader(stdgo._internal.debug.plan9obj.Plan9obj_SectionHeader.SectionHeader) from stdgo._internal.debug.plan9obj.Plan9obj_SectionHeader.SectionHeader to stdgo._internal.debug.plan9obj.Plan9obj_SectionHeader.SectionHeader {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var size(get, set) : std.UInt;
    function get_size():std.UInt return this.size;
    function set_size(v:std.UInt):std.UInt {
        this.size = v;
        return v;
    }
    public var offset(get, set) : std.UInt;
    function get_offset():std.UInt return this.offset;
    function set_offset(v:std.UInt):std.UInt {
        this.offset = v;
        return v;
    }
    public function new(?name:String, ?size:std.UInt, ?offset:std.UInt) this = new stdgo._internal.debug.plan9obj.Plan9obj_SectionHeader.SectionHeader(name, size, offset);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.plan9obj.Plan9obj.Section_static_extension) abstract Section(stdgo._internal.debug.plan9obj.Plan9obj_Section.Section) from stdgo._internal.debug.plan9obj.Plan9obj_Section.Section to stdgo._internal.debug.plan9obj.Plan9obj_Section.Section {
    public var sectionHeader(get, set) : SectionHeader;
    function get_sectionHeader():SectionHeader return this.sectionHeader;
    function set_sectionHeader(v:SectionHeader):SectionHeader {
        this.sectionHeader = v;
        return v;
    }
    public var readerAt(get, set) : stdgo._internal.io.Io_ReaderAt.ReaderAt;
    function get_readerAt():stdgo._internal.io.Io_ReaderAt.ReaderAt return this.readerAt;
    function set_readerAt(v:stdgo._internal.io.Io_ReaderAt.ReaderAt):stdgo._internal.io.Io_ReaderAt.ReaderAt {
        this.readerAt = v;
        return v;
    }
    public var _sr(get, set) : stdgo._internal.io.Io_SectionReader.SectionReader;
    function get__sr():stdgo._internal.io.Io_SectionReader.SectionReader return this._sr;
    function set__sr(v:stdgo._internal.io.Io_SectionReader.SectionReader):stdgo._internal.io.Io_SectionReader.SectionReader {
        this._sr = v;
        return v;
    }
    public function new(?sectionHeader:SectionHeader, ?readerAt:stdgo._internal.io.Io_ReaderAt.ReaderAt, ?_sr:stdgo._internal.io.Io_SectionReader.SectionReader) this = new stdgo._internal.debug.plan9obj.Plan9obj_Section.Section(sectionHeader, readerAt, _sr);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Sym(stdgo._internal.debug.plan9obj.Plan9obj_Sym.Sym) from stdgo._internal.debug.plan9obj.Plan9obj_Sym.Sym to stdgo._internal.debug.plan9obj.Plan9obj_Sym.Sym {
    public var value(get, set) : haxe.UInt64;
    function get_value():haxe.UInt64 return this.value;
    function set_value(v:haxe.UInt64):haxe.UInt64 {
        this.value = v;
        return v;
    }
    public var type(get, set) : StdTypes.Int;
    function get_type():StdTypes.Int return this.type;
    function set_type(v:StdTypes.Int):StdTypes.Int {
        this.type = v;
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public function new(?value:haxe.UInt64, ?type:StdTypes.Int, ?name:String) this = new stdgo._internal.debug.plan9obj.Plan9obj_Sym.Sym(value, type, name);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.plan9obj.Plan9obj.T_formatError_static_extension) abstract T_formatError(stdgo._internal.debug.plan9obj.Plan9obj_T_formatError.T_formatError) from stdgo._internal.debug.plan9obj.Plan9obj_T_formatError.T_formatError to stdgo._internal.debug.plan9obj.Plan9obj_T_formatError.T_formatError {
    public var _off(get, set) : StdTypes.Int;
    function get__off():StdTypes.Int return this._off;
    function set__off(v:StdTypes.Int):StdTypes.Int {
        this._off = v;
        return v;
    }
    public var _msg(get, set) : String;
    function get__msg():String return this._msg;
    function set__msg(v:String):String {
        this._msg = v;
        return v;
    }
    public var _val(get, set) : stdgo.AnyInterface;
    function get__val():stdgo.AnyInterface return this._val;
    function set__val(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._val = v;
        return v;
    }
    public function new(?_off:StdTypes.Int, ?_msg:String, ?_val:stdgo.AnyInterface) this = new stdgo._internal.debug.plan9obj.Plan9obj_T_formatError.T_formatError(_off, _msg, _val);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_prog(stdgo._internal.debug.plan9obj.Plan9obj_T_prog.T_prog) from stdgo._internal.debug.plan9obj.Plan9obj_T_prog.T_prog to stdgo._internal.debug.plan9obj.Plan9obj_T_prog.T_prog {
    public var magic(get, set) : std.UInt;
    function get_magic():std.UInt return this.magic;
    function set_magic(v:std.UInt):std.UInt {
        this.magic = v;
        return v;
    }
    public var text(get, set) : std.UInt;
    function get_text():std.UInt return this.text;
    function set_text(v:std.UInt):std.UInt {
        this.text = v;
        return v;
    }
    public var data(get, set) : std.UInt;
    function get_data():std.UInt return this.data;
    function set_data(v:std.UInt):std.UInt {
        this.data = v;
        return v;
    }
    public var bss(get, set) : std.UInt;
    function get_bss():std.UInt return this.bss;
    function set_bss(v:std.UInt):std.UInt {
        this.bss = v;
        return v;
    }
    public var syms(get, set) : std.UInt;
    function get_syms():std.UInt return this.syms;
    function set_syms(v:std.UInt):std.UInt {
        this.syms = v;
        return v;
    }
    public var entry(get, set) : std.UInt;
    function get_entry():std.UInt return this.entry;
    function set_entry(v:std.UInt):std.UInt {
        this.entry = v;
        return v;
    }
    public var spsz(get, set) : std.UInt;
    function get_spsz():std.UInt return this.spsz;
    function set_spsz(v:std.UInt):std.UInt {
        this.spsz = v;
        return v;
    }
    public var pcsz(get, set) : std.UInt;
    function get_pcsz():std.UInt return this.pcsz;
    function set_pcsz(v:std.UInt):std.UInt {
        this.pcsz = v;
        return v;
    }
    public function new(?magic:std.UInt, ?text:std.UInt, ?data:std.UInt, ?bss:std.UInt, ?syms:std.UInt, ?entry:std.UInt, ?spsz:std.UInt, ?pcsz:std.UInt) this = new stdgo._internal.debug.plan9obj.Plan9obj_T_prog.T_prog(magic, text, data, bss, syms, entry, spsz, pcsz);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_sym(stdgo._internal.debug.plan9obj.Plan9obj_T_sym.T_sym) from stdgo._internal.debug.plan9obj.Plan9obj_T_sym.T_sym to stdgo._internal.debug.plan9obj.Plan9obj_T_sym.T_sym {
    public var _value(get, set) : haxe.UInt64;
    function get__value():haxe.UInt64 return this._value;
    function set__value(v:haxe.UInt64):haxe.UInt64 {
        this._value = v;
        return v;
    }
    public var _typ(get, set) : std.UInt;
    function get__typ():std.UInt return this._typ;
    function set__typ(v:std.UInt):std.UInt {
        this._typ = v;
        return v;
    }
    public var _name(get, set) : Array<std.UInt>;
    function get__name():Array<std.UInt> return [for (i in this._name) i];
    function set__name(v:Array<std.UInt>):Array<std.UInt> {
        this._name = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_value:haxe.UInt64, ?_typ:std.UInt, ?_name:Array<std.UInt>) this = new stdgo._internal.debug.plan9obj.Plan9obj_T_sym.T_sym(_value, _typ, ([for (i in _name) i] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.debug.plan9obj.Plan9obj_T__struct_0.T__struct_0;
class File_static_extension {
    static public function section(_f:File, _name:String):Section {
        return stdgo._internal.debug.plan9obj.Plan9obj_File_static_extension.File_static_extension.section(_f, _name);
    }
    static public function symbols(_f:File):stdgo.Tuple<Array<Sym>, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.plan9obj.Plan9obj_File_static_extension.File_static_extension.symbols(_f);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function close(_f:File):stdgo.Error {
        return stdgo._internal.debug.plan9obj.Plan9obj_File_static_extension.File_static_extension.close(_f);
    }
}
class Section_static_extension {
    static public function open(_s:Section):stdgo._internal.io.Io_ReadSeeker.ReadSeeker {
        return stdgo._internal.debug.plan9obj.Plan9obj_Section_static_extension.Section_static_extension.open(_s);
    }
    static public function data(_s:Section):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.plan9obj.Plan9obj_Section_static_extension.Section_static_extension.data(_s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function readAt(__self__:stdgo._internal.debug.plan9obj.Plan9obj_Section.Section, _p:Array<std.UInt>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.debug.plan9obj.Plan9obj_Section_static_extension.Section_static_extension.readAt(__self__, _p, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_formatError_static_extension {
    static public function error(_e:T_formatError):String {
        return stdgo._internal.debug.plan9obj.Plan9obj_T_formatError_static_extension.T_formatError_static_extension.error(_e);
    }
}
/**
    /|*
    Package plan9obj implements access to Plan 9 a.out object files.
    
    # Security
    
    This package is not designed to be hardened against adversarial inputs, and is
    outside the scope of https://go.dev/security/policy. In particular, only basic
    validation is done when parsing object files. As such, care should be taken when
    parsing untrusted inputs, as parsing malformed files may consume significant
    resources, or cause panics.
    *|/
**/
class Plan9obj {
    /**
        Open opens the named file using os.Open and prepares it for use as a Plan 9 a.out binary.
    **/
    static public function open(_name:String):stdgo.Tuple<File, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.plan9obj.Plan9obj_open.open(_name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        NewFile creates a new File for accessing a Plan 9 binary in an underlying reader.
        The Plan 9 binary is expected to start at position 0 in the ReaderAt.
    **/
    static public function newFile(_r:stdgo._internal.io.Io_ReaderAt.ReaderAt):stdgo.Tuple<File, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.plan9obj.Plan9obj_newFile.newFile(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
