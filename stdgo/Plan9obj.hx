package stdgo;
final magic64 : haxe.UInt64 = stdgo._internal.debug.plan9obj.Plan9obj_magic64.magic64;
final magic386 : haxe.UInt64 = stdgo._internal.debug.plan9obj.Plan9obj_magic386.magic386;
final magicAMD64 : haxe.UInt64 = stdgo._internal.debug.plan9obj.Plan9obj_magicamd64.magicAMD64;
final magicARM : haxe.UInt64 = stdgo._internal.debug.plan9obj.Plan9obj_magicarm.magicARM;
var errNoSymbols(get, set) : stdgo.Error;
private function get_errNoSymbols():stdgo.Error return stdgo._internal.debug.plan9obj.Plan9obj_errnosymbols.errNoSymbols;
private function set_errNoSymbols(v:stdgo.Error):stdgo.Error {
        stdgo._internal.debug.plan9obj.Plan9obj_errnosymbols.errNoSymbols = (v : stdgo.Error);
        return v;
    }
@:structInit @:using(stdgo.debug.plan9obj.Plan9obj.FileHeader_static_extension) abstract FileHeader(stdgo._internal.debug.plan9obj.Plan9obj_fileheader.FileHeader) from stdgo._internal.debug.plan9obj.Plan9obj_fileheader.FileHeader to stdgo._internal.debug.plan9obj.Plan9obj_fileheader.FileHeader {
    public var magic(get, set) : std.UInt;
    function get_magic():std.UInt return this.magic;
    function set_magic(v:std.UInt):std.UInt {
        this.magic = (v : stdgo.GoUInt32);
        return v;
    }
    public var bss(get, set) : std.UInt;
    function get_bss():std.UInt return this.bss;
    function set_bss(v:std.UInt):std.UInt {
        this.bss = (v : stdgo.GoUInt32);
        return v;
    }
    public var entry(get, set) : haxe.UInt64;
    function get_entry():haxe.UInt64 return this.entry;
    function set_entry(v:haxe.UInt64):haxe.UInt64 {
        this.entry = (v : stdgo.GoUInt64);
        return v;
    }
    public var ptrSize(get, set) : StdTypes.Int;
    function get_ptrSize():StdTypes.Int return this.ptrSize;
    function set_ptrSize(v:StdTypes.Int):StdTypes.Int {
        this.ptrSize = (v : stdgo.GoInt);
        return v;
    }
    public var loadAddress(get, set) : haxe.UInt64;
    function get_loadAddress():haxe.UInt64 return this.loadAddress;
    function set_loadAddress(v:haxe.UInt64):haxe.UInt64 {
        this.loadAddress = (v : stdgo.GoUInt64);
        return v;
    }
    public var hdrSize(get, set) : haxe.UInt64;
    function get_hdrSize():haxe.UInt64 return this.hdrSize;
    function set_hdrSize(v:haxe.UInt64):haxe.UInt64 {
        this.hdrSize = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?magic:std.UInt, ?bss:std.UInt, ?entry:haxe.UInt64, ?ptrSize:StdTypes.Int, ?loadAddress:haxe.UInt64, ?hdrSize:haxe.UInt64) this = new stdgo._internal.debug.plan9obj.Plan9obj_fileheader.FileHeader((magic : stdgo.GoUInt32), (bss : stdgo.GoUInt32), (entry : stdgo.GoUInt64), (ptrSize : stdgo.GoInt), (loadAddress : stdgo.GoUInt64), (hdrSize : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.plan9obj.Plan9obj.File_static_extension) abstract File(stdgo._internal.debug.plan9obj.Plan9obj_file.File) from stdgo._internal.debug.plan9obj.Plan9obj_file.File to stdgo._internal.debug.plan9obj.Plan9obj_file.File {
    public var fileHeader(get, set) : FileHeader;
    function get_fileHeader():FileHeader return this.fileHeader;
    function set_fileHeader(v:FileHeader):FileHeader {
        this.fileHeader = v;
        return v;
    }
    public var sections(get, set) : Array<Section>;
    function get_sections():Array<Section> return [for (i in this.sections) i];
    function set_sections(v:Array<Section>):Array<Section> {
        this.sections = ([for (i in v) (i : stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_section.Section>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_section.Section>>);
        return v;
    }
    public var _closer(get, set) : stdgo._internal.io.Io_closer.Closer;
    function get__closer():stdgo._internal.io.Io_closer.Closer return this._closer;
    function set__closer(v:stdgo._internal.io.Io_closer.Closer):stdgo._internal.io.Io_closer.Closer {
        this._closer = v;
        return v;
    }
    public function new(?fileHeader:FileHeader, ?sections:Array<Section>, ?_closer:stdgo._internal.io.Io_closer.Closer) this = new stdgo._internal.debug.plan9obj.Plan9obj_file.File(fileHeader, ([for (i in sections) (i : stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_section.Section>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_section.Section>>), _closer);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.plan9obj.Plan9obj.SectionHeader_static_extension) abstract SectionHeader(stdgo._internal.debug.plan9obj.Plan9obj_sectionheader.SectionHeader) from stdgo._internal.debug.plan9obj.Plan9obj_sectionheader.SectionHeader to stdgo._internal.debug.plan9obj.Plan9obj_sectionheader.SectionHeader {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var size(get, set) : std.UInt;
    function get_size():std.UInt return this.size;
    function set_size(v:std.UInt):std.UInt {
        this.size = (v : stdgo.GoUInt32);
        return v;
    }
    public var offset(get, set) : std.UInt;
    function get_offset():std.UInt return this.offset;
    function set_offset(v:std.UInt):std.UInt {
        this.offset = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?name:String, ?size:std.UInt, ?offset:std.UInt) this = new stdgo._internal.debug.plan9obj.Plan9obj_sectionheader.SectionHeader((name : stdgo.GoString), (size : stdgo.GoUInt32), (offset : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.plan9obj.Plan9obj.Section_static_extension) abstract Section(stdgo._internal.debug.plan9obj.Plan9obj_section.Section) from stdgo._internal.debug.plan9obj.Plan9obj_section.Section to stdgo._internal.debug.plan9obj.Plan9obj_section.Section {
    public var sectionHeader(get, set) : SectionHeader;
    function get_sectionHeader():SectionHeader return this.sectionHeader;
    function set_sectionHeader(v:SectionHeader):SectionHeader {
        this.sectionHeader = v;
        return v;
    }
    public var readerAt(get, set) : stdgo._internal.io.Io_readerat.ReaderAt;
    function get_readerAt():stdgo._internal.io.Io_readerat.ReaderAt return this.readerAt;
    function set_readerAt(v:stdgo._internal.io.Io_readerat.ReaderAt):stdgo._internal.io.Io_readerat.ReaderAt {
        this.readerAt = v;
        return v;
    }
    public var _sr(get, set) : stdgo._internal.io.Io_sectionreader.SectionReader;
    function get__sr():stdgo._internal.io.Io_sectionreader.SectionReader return this._sr;
    function set__sr(v:stdgo._internal.io.Io_sectionreader.SectionReader):stdgo._internal.io.Io_sectionreader.SectionReader {
        this._sr = (v : stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader>);
        return v;
    }
    public function new(?sectionHeader:SectionHeader, ?readerAt:stdgo._internal.io.Io_readerat.ReaderAt, ?_sr:stdgo._internal.io.Io_sectionreader.SectionReader) this = new stdgo._internal.debug.plan9obj.Plan9obj_section.Section(sectionHeader, readerAt, (_sr : stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.plan9obj.Plan9obj.Sym_static_extension) abstract Sym(stdgo._internal.debug.plan9obj.Plan9obj_sym.Sym) from stdgo._internal.debug.plan9obj.Plan9obj_sym.Sym to stdgo._internal.debug.plan9obj.Plan9obj_sym.Sym {
    public var value(get, set) : haxe.UInt64;
    function get_value():haxe.UInt64 return this.value;
    function set_value(v:haxe.UInt64):haxe.UInt64 {
        this.value = (v : stdgo.GoUInt64);
        return v;
    }
    public var type(get, set) : StdTypes.Int;
    function get_type():StdTypes.Int return this.type;
    function set_type(v:StdTypes.Int):StdTypes.Int {
        this.type = (v : stdgo.GoInt32);
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public function new(?value:haxe.UInt64, ?type:StdTypes.Int, ?name:String) this = new stdgo._internal.debug.plan9obj.Plan9obj_sym.Sym((value : stdgo.GoUInt64), (type : stdgo.GoInt32), (name : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.plan9obj.Plan9obj.T_formatError_static_extension) @:dox(hide) abstract T_formatError(stdgo._internal.debug.plan9obj.Plan9obj_t_formaterror.T_formatError) from stdgo._internal.debug.plan9obj.Plan9obj_t_formaterror.T_formatError to stdgo._internal.debug.plan9obj.Plan9obj_t_formaterror.T_formatError {
    public var _off(get, set) : StdTypes.Int;
    function get__off():StdTypes.Int return this._off;
    function set__off(v:StdTypes.Int):StdTypes.Int {
        this._off = (v : stdgo.GoInt);
        return v;
    }
    public var _msg(get, set) : String;
    function get__msg():String return this._msg;
    function set__msg(v:String):String {
        this._msg = (v : stdgo.GoString);
        return v;
    }
    public var _val(get, set) : stdgo.AnyInterface;
    function get__val():stdgo.AnyInterface return this._val;
    function set__val(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._val = (v : stdgo.AnyInterface);
        return v;
    }
    public function new(?_off:StdTypes.Int, ?_msg:String, ?_val:stdgo.AnyInterface) this = new stdgo._internal.debug.plan9obj.Plan9obj_t_formaterror.T_formatError((_off : stdgo.GoInt), (_msg : stdgo.GoString), (_val : stdgo.AnyInterface));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.plan9obj.Plan9obj.T_prog_static_extension) @:dox(hide) abstract T_prog(stdgo._internal.debug.plan9obj.Plan9obj_t_prog.T_prog) from stdgo._internal.debug.plan9obj.Plan9obj_t_prog.T_prog to stdgo._internal.debug.plan9obj.Plan9obj_t_prog.T_prog {
    public var magic(get, set) : std.UInt;
    function get_magic():std.UInt return this.magic;
    function set_magic(v:std.UInt):std.UInt {
        this.magic = (v : stdgo.GoUInt32);
        return v;
    }
    public var text(get, set) : std.UInt;
    function get_text():std.UInt return this.text;
    function set_text(v:std.UInt):std.UInt {
        this.text = (v : stdgo.GoUInt32);
        return v;
    }
    public var data(get, set) : std.UInt;
    function get_data():std.UInt return this.data;
    function set_data(v:std.UInt):std.UInt {
        this.data = (v : stdgo.GoUInt32);
        return v;
    }
    public var bss(get, set) : std.UInt;
    function get_bss():std.UInt return this.bss;
    function set_bss(v:std.UInt):std.UInt {
        this.bss = (v : stdgo.GoUInt32);
        return v;
    }
    public var syms(get, set) : std.UInt;
    function get_syms():std.UInt return this.syms;
    function set_syms(v:std.UInt):std.UInt {
        this.syms = (v : stdgo.GoUInt32);
        return v;
    }
    public var entry(get, set) : std.UInt;
    function get_entry():std.UInt return this.entry;
    function set_entry(v:std.UInt):std.UInt {
        this.entry = (v : stdgo.GoUInt32);
        return v;
    }
    public var spsz(get, set) : std.UInt;
    function get_spsz():std.UInt return this.spsz;
    function set_spsz(v:std.UInt):std.UInt {
        this.spsz = (v : stdgo.GoUInt32);
        return v;
    }
    public var pcsz(get, set) : std.UInt;
    function get_pcsz():std.UInt return this.pcsz;
    function set_pcsz(v:std.UInt):std.UInt {
        this.pcsz = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?magic:std.UInt, ?text:std.UInt, ?data:std.UInt, ?bss:std.UInt, ?syms:std.UInt, ?entry:std.UInt, ?spsz:std.UInt, ?pcsz:std.UInt) this = new stdgo._internal.debug.plan9obj.Plan9obj_t_prog.T_prog((magic : stdgo.GoUInt32), (text : stdgo.GoUInt32), (data : stdgo.GoUInt32), (bss : stdgo.GoUInt32), (syms : stdgo.GoUInt32), (entry : stdgo.GoUInt32), (spsz : stdgo.GoUInt32), (pcsz : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.debug.plan9obj.Plan9obj.T_sym_static_extension) @:dox(hide) abstract T_sym(stdgo._internal.debug.plan9obj.Plan9obj_t_sym.T_sym) from stdgo._internal.debug.plan9obj.Plan9obj_t_sym.T_sym to stdgo._internal.debug.plan9obj.Plan9obj_t_sym.T_sym {
    public var _value(get, set) : haxe.UInt64;
    function get__value():haxe.UInt64 return this._value;
    function set__value(v:haxe.UInt64):haxe.UInt64 {
        this._value = (v : stdgo.GoUInt64);
        return v;
    }
    public var _typ(get, set) : std.UInt;
    function get__typ():std.UInt return this._typ;
    function set__typ(v:std.UInt):std.UInt {
        this._typ = (v : stdgo.GoUInt8);
        return v;
    }
    public var _name(get, set) : Array<std.UInt>;
    function get__name():Array<std.UInt> return [for (i in this._name) i];
    function set__name(v:Array<std.UInt>):Array<std.UInt> {
        this._name = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_value:haxe.UInt64, ?_typ:std.UInt, ?_name:Array<std.UInt>) this = new stdgo._internal.debug.plan9obj.Plan9obj_t_sym.T_sym((_value : stdgo.GoUInt64), (_typ : stdgo.GoUInt8), ([for (i in _name) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T__struct_0Pointer = stdgo._internal.debug.plan9obj.Plan9obj_t__struct_0pointer.T__struct_0Pointer;
@:dox(hide) class T__struct_0_static_extension {

}
@:dox(hide) typedef T__struct_0 = stdgo._internal.debug.plan9obj.Plan9obj_t__struct_0.T__struct_0;
typedef FileHeaderPointer = stdgo._internal.debug.plan9obj.Plan9obj_fileheaderpointer.FileHeaderPointer;
class FileHeader_static_extension {

}
typedef FilePointer = stdgo._internal.debug.plan9obj.Plan9obj_filepointer.FilePointer;
class File_static_extension {
    static public function section(_f:File, _name:String):Section {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_file.File>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.debug.plan9obj.Plan9obj_file_static_extension.File_static_extension.section(_f, _name);
    }
    static public function symbols(_f:File):stdgo.Tuple<Array<Sym>, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_file.File>);
        return {
            final obj = stdgo._internal.debug.plan9obj.Plan9obj_file_static_extension.File_static_extension.symbols(_f);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function close(_f:File):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_file.File>);
        return stdgo._internal.debug.plan9obj.Plan9obj_file_static_extension.File_static_extension.close(_f);
    }
}
typedef SectionHeaderPointer = stdgo._internal.debug.plan9obj.Plan9obj_sectionheaderpointer.SectionHeaderPointer;
class SectionHeader_static_extension {

}
typedef SectionPointer = stdgo._internal.debug.plan9obj.Plan9obj_sectionpointer.SectionPointer;
class Section_static_extension {
    static public function open(_s:Section):stdgo._internal.io.Io_readseeker.ReadSeeker {
        final _s = (_s : stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_section.Section>);
        return stdgo._internal.debug.plan9obj.Plan9obj_section_static_extension.Section_static_extension.open(_s);
    }
    static public function data(_s:Section):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _s = (_s : stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_section.Section>);
        return {
            final obj = stdgo._internal.debug.plan9obj.Plan9obj_section_static_extension.Section_static_extension.data(_s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function readAt(__self__:stdgo._internal.debug.plan9obj.Plan9obj_section.Section, _0:Array<std.UInt>, _1:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = (_1 : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.debug.plan9obj.Plan9obj_section_static_extension.Section_static_extension.readAt(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef SymPointer = stdgo._internal.debug.plan9obj.Plan9obj_sympointer.SymPointer;
class Sym_static_extension {

}
@:dox(hide) typedef T_formatErrorPointer = stdgo._internal.debug.plan9obj.Plan9obj_t_formaterrorpointer.T_formatErrorPointer;
@:dox(hide) class T_formatError_static_extension {
    static public function error(_e:T_formatError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_t_formaterror.T_formatError>);
        return stdgo._internal.debug.plan9obj.Plan9obj_t_formaterror_static_extension.T_formatError_static_extension.error(_e);
    }
}
@:dox(hide) typedef T_progPointer = stdgo._internal.debug.plan9obj.Plan9obj_t_progpointer.T_progPointer;
@:dox(hide) class T_prog_static_extension {

}
@:dox(hide) typedef T_symPointer = stdgo._internal.debug.plan9obj.Plan9obj_t_sympointer.T_symPointer;
@:dox(hide) class T_sym_static_extension {

}
@:dox(hide) typedef T__struct_0PointerPointer = stdgo._internal.debug.plan9obj.Plan9obj_t__struct_0pointerpointer.T__struct_0PointerPointer;
@:dox(hide) class T__struct_0Pointer_static_extension {

}
/**
    * 
    * Package plan9obj implements access to Plan 9 a.out object files.
    * 
    * # Security
    * 
    * This package is not designed to be hardened against adversarial inputs, and is
    * outside the scope of https://go.dev/security/policy. In particular, only basic
    * validation is done when parsing object files. As such, care should be taken when
    * parsing untrusted inputs, as parsing malformed files may consume significant
    * resources, or cause panics.
    * 
**/
class Plan9obj {
    /**
        * Open opens the named file using os.Open and prepares it for use as a Plan 9 a.out binary.
    **/
    static public inline function open(_name:String):stdgo.Tuple<File, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.debug.plan9obj.Plan9obj_open.open(_name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * NewFile creates a new File for accessing a Plan 9 binary in an underlying reader.
        * The Plan 9 binary is expected to start at position 0 in the ReaderAt.
    **/
    static public inline function newFile(_r:stdgo._internal.io.Io_readerat.ReaderAt):stdgo.Tuple<File, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.plan9obj.Plan9obj_newfile.newFile(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
