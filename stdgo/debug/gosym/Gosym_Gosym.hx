package stdgo.debug.gosym;
/**
    Package gosym implements access to the Go symbol
    and line number tables embedded in Go binaries generated
    by the gc compilers.
**/
class Gosym {
    /**
        NewLineTable returns a new PC/line table
        corresponding to the encoded data.
        Text must be the start address of the
        corresponding text segment.
    **/
    static public inline function newLineTable(_data:Array<std.UInt>, _text:haxe.UInt64):LineTable {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _text = (_text : stdgo.GoUInt64);
        return stdgo._internal.debug.gosym.Gosym_newLineTable.newLineTable(_data, _text);
    }
    /**
        NewTable decodes the Go symbol table (the ".gosymtab" section in ELF),
        returning an in-memory representation.
        Starting with Go 1.3, the Go symbol table no longer includes symbol data.
    **/
    static public inline function newTable(_symtab:Array<std.UInt>, _pcln:LineTable):stdgo.Tuple<Table, stdgo.Error> {
        final _symtab = ([for (i in _symtab) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _pcln = (_pcln : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>);
        return {
            final obj = stdgo._internal.debug.gosym.Gosym_newTable.newTable(_symtab, _pcln);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
