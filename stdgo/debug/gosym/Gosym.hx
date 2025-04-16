package stdgo.debug.gosym;
typedef LineTable = stdgo._internal.debug.gosym.Gosym_linetable.LineTable;
typedef Sym = stdgo._internal.debug.gosym.Gosym_sym.Sym;
typedef Func = stdgo._internal.debug.gosym.Gosym_func.Func;
typedef Obj = stdgo._internal.debug.gosym.Gosym_obj.Obj;
typedef Table = stdgo._internal.debug.gosym.Gosym_table.Table;
typedef UnknownLineError = stdgo._internal.debug.gosym.Gosym_unknownlineerror.UnknownLineError;
typedef DecodingError = stdgo._internal.debug.gosym.Gosym_decodingerror.DecodingError;
typedef UnknownFileError = stdgo._internal.debug.gosym.Gosym_unknownfileerror.UnknownFileError;
typedef LineTablePointer = stdgo._internal.debug.gosym.Gosym_linetablepointer.LineTablePointer;
typedef SymPointer = stdgo._internal.debug.gosym.Gosym_sympointer.SymPointer;
typedef FuncPointer = stdgo._internal.debug.gosym.Gosym_funcpointer.FuncPointer;
typedef ObjPointer = stdgo._internal.debug.gosym.Gosym_objpointer.ObjPointer;
typedef TablePointer = stdgo._internal.debug.gosym.Gosym_tablepointer.TablePointer;
typedef UnknownLineErrorPointer = stdgo._internal.debug.gosym.Gosym_unknownlineerrorpointer.UnknownLineErrorPointer;
typedef DecodingErrorPointer = stdgo._internal.debug.gosym.Gosym_decodingerrorpointer.DecodingErrorPointer;
typedef UnknownFileErrorPointer = stdgo._internal.debug.gosym.Gosym_unknownfileerrorpointer.UnknownFileErrorPointer;
/**
    * Package gosym implements access to the Go symbol
    * and line number tables embedded in Go binaries generated
    * by the gc compilers.
**/
class Gosym {
    /**
        * NewLineTable returns a new PC/line table
        * corresponding to the encoded data.
        * Text must be the start address of the
        * corresponding text segment.
    **/
    static public inline function newLineTable(_data:stdgo.Slice<stdgo.GoUInt8>, _text:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable> return stdgo._internal.debug.gosym.Gosym_newlinetable.newLineTable(_data, _text);
    /**
        * NewTable decodes the Go symbol table (the ".gosymtab" section in ELF),
        * returning an in-memory representation.
        * Starting with Go 1.3, the Go symbol table no longer includes symbol data.
    **/
    static public inline function newTable(_symtab:stdgo.Slice<stdgo.GoUInt8>, _pcln:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>):{ var _0 : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_table.Table>; var _1 : stdgo.Error; } return stdgo._internal.debug.gosym.Gosym_newtable.newTable(_symtab, _pcln);
}
