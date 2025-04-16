package stdgo.debug.plan9obj;
var magic64 : stdgo.GoUInt64 = 32768i32;
var magic386 : stdgo.GoUInt64 = 491i32;
var magicAMD64 : stdgo.GoUInt64 = 35479i32;
var magicARM : stdgo.GoUInt64 = 1607i32;
var errNoSymbols(get, set) : stdgo.Error;
private function get_errNoSymbols():stdgo.Error return stdgo._internal.debug.plan9obj.Plan9obj_errnosymbols.errNoSymbols;
private function set_errNoSymbols(v:stdgo.Error):stdgo.Error {
        stdgo._internal.debug.plan9obj.Plan9obj_errnosymbols.errNoSymbols = v;
        return v;
    }
typedef FileHeader = stdgo._internal.debug.plan9obj.Plan9obj_fileheader.FileHeader;
typedef File = stdgo._internal.debug.plan9obj.Plan9obj_file.File;
typedef SectionHeader = stdgo._internal.debug.plan9obj.Plan9obj_sectionheader.SectionHeader;
typedef Section = stdgo._internal.debug.plan9obj.Plan9obj_section.Section;
typedef Sym = stdgo._internal.debug.plan9obj.Plan9obj_sym.Sym;
typedef FileHeaderPointer = stdgo._internal.debug.plan9obj.Plan9obj_fileheaderpointer.FileHeaderPointer;
typedef FilePointer = stdgo._internal.debug.plan9obj.Plan9obj_filepointer.FilePointer;
typedef SectionHeaderPointer = stdgo._internal.debug.plan9obj.Plan9obj_sectionheaderpointer.SectionHeaderPointer;
typedef SectionPointer = stdgo._internal.debug.plan9obj.Plan9obj_sectionpointer.SectionPointer;
typedef SymPointer = stdgo._internal.debug.plan9obj.Plan9obj_sympointer.SymPointer;
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
    static public inline function open(_name:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_file.File>; var _1 : stdgo.Error; } return stdgo._internal.debug.plan9obj.Plan9obj_open.open(_name);
    /**
        * NewFile creates a new File for accessing a Plan 9 binary in an underlying reader.
        * The Plan 9 binary is expected to start at position 0 in the ReaderAt.
    **/
    static public inline function newFile(_r:stdgo._internal.io.Io_readerat.ReaderAt):{ var _0 : stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_file.File>; var _1 : stdgo.Error; } return stdgo._internal.debug.plan9obj.Plan9obj_newfile.newFile(_r);
}
