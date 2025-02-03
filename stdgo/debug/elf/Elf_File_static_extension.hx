package stdgo.debug.elf;
class File_static_extension {
    static public function dynValue(_f:File, _tag:DynTag):stdgo.Tuple<Array<haxe.UInt64>, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>);
        return {
            final obj = stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension.dynValue(_f, _tag);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function dynString(_f:File, _tag:DynTag):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>);
        return {
            final obj = stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension.dynString(_f, _tag);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function importedLibraries(_f:File):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>);
        return {
            final obj = stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension.importedLibraries(_f);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _gnuVersion(_f:File, _i:StdTypes.Int):stdgo.Tuple<String, String> {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>);
        final _i = (_i : stdgo.GoInt);
        return {
            final obj = stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension._gnuVersion(_f, _i);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _gnuVersionInit(_f:File, _str:Array<std.UInt>):Bool {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>);
        final _str = ([for (i in _str) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension._gnuVersionInit(_f, _str);
    }
    static public function importedSymbols(_f:File):stdgo.Tuple<Array<ImportedSymbol>, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>);
        return {
            final obj = stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension.importedSymbols(_f);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function dynamicSymbols(_f:File):stdgo.Tuple<Array<Symbol>, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>);
        return {
            final obj = stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension.dynamicSymbols(_f);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function symbols(_f:File):stdgo.Tuple<Array<Symbol>, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>);
        return {
            final obj = stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension.symbols(_f);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function dWARF(_f:File):stdgo.Tuple<stdgo._internal.debug.dwarf.Dwarf_Data.Data, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>);
        return {
            final obj = stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension.dWARF(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _applyRelocationsSPARC64(_f:File, _dst:Array<std.UInt>, _rels:Array<std.UInt>):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _rels = ([for (i in _rels) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension._applyRelocationsSPARC64(_f, _dst, _rels);
    }
    static public function _applyRelocationss390x(_f:File, _dst:Array<std.UInt>, _rels:Array<std.UInt>):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _rels = ([for (i in _rels) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension._applyRelocationss390x(_f, _dst, _rels);
    }
    static public function _applyRelocationsRISCV64(_f:File, _dst:Array<std.UInt>, _rels:Array<std.UInt>):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _rels = ([for (i in _rels) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension._applyRelocationsRISCV64(_f, _dst, _rels);
    }
    static public function _applyRelocationsLOONG64(_f:File, _dst:Array<std.UInt>, _rels:Array<std.UInt>):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _rels = ([for (i in _rels) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension._applyRelocationsLOONG64(_f, _dst, _rels);
    }
    static public function _applyRelocationsMIPS64(_f:File, _dst:Array<std.UInt>, _rels:Array<std.UInt>):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _rels = ([for (i in _rels) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension._applyRelocationsMIPS64(_f, _dst, _rels);
    }
    static public function _applyRelocationsMIPS(_f:File, _dst:Array<std.UInt>, _rels:Array<std.UInt>):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _rels = ([for (i in _rels) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension._applyRelocationsMIPS(_f, _dst, _rels);
    }
    static public function _applyRelocationsPPC64(_f:File, _dst:Array<std.UInt>, _rels:Array<std.UInt>):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _rels = ([for (i in _rels) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension._applyRelocationsPPC64(_f, _dst, _rels);
    }
    static public function _applyRelocationsPPC(_f:File, _dst:Array<std.UInt>, _rels:Array<std.UInt>):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _rels = ([for (i in _rels) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension._applyRelocationsPPC(_f, _dst, _rels);
    }
    static public function _applyRelocationsARM64(_f:File, _dst:Array<std.UInt>, _rels:Array<std.UInt>):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _rels = ([for (i in _rels) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension._applyRelocationsARM64(_f, _dst, _rels);
    }
    static public function _applyRelocationsARM(_f:File, _dst:Array<std.UInt>, _rels:Array<std.UInt>):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _rels = ([for (i in _rels) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension._applyRelocationsARM(_f, _dst, _rels);
    }
    static public function _applyRelocations386(_f:File, _dst:Array<std.UInt>, _rels:Array<std.UInt>):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _rels = ([for (i in _rels) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension._applyRelocations386(_f, _dst, _rels);
    }
    static public function _applyRelocationsAMD64(_f:File, _dst:Array<std.UInt>, _rels:Array<std.UInt>):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _rels = ([for (i in _rels) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension._applyRelocationsAMD64(_f, _dst, _rels);
    }
    static public function _applyRelocations(_f:File, _dst:Array<std.UInt>, _rels:Array<std.UInt>):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _rels = ([for (i in _rels) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension._applyRelocations(_f, _dst, _rels);
    }
    static public function section(_f:File, _name:String):Section {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension.section(_f, _name);
    }
    static public function _getSymbols64(_f:File, _typ:SectionType):stdgo.Tuple.Tuple3<Array<Symbol>, Array<std.UInt>, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>);
        return {
            final obj = stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension._getSymbols64(_f, _typ);
            { _0 : [for (i in obj._0) i], _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
    static public function _getSymbols32(_f:File, _typ:SectionType):stdgo.Tuple.Tuple3<Array<Symbol>, Array<std.UInt>, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>);
        return {
            final obj = stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension._getSymbols32(_f, _typ);
            { _0 : [for (i in obj._0) i], _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
    static public function _getSymbols(_f:File, _typ:SectionType):stdgo.Tuple.Tuple3<Array<Symbol>, Array<std.UInt>, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>);
        return {
            final obj = stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension._getSymbols(_f, _typ);
            { _0 : [for (i in obj._0) i], _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
    static public function sectionByType(_f:File, _typ:SectionType):Section {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>);
        return stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension.sectionByType(_f, _typ);
    }
    static public function close(_f:File):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>);
        return stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension.close(_f);
    }
    static public function _stringTable(_f:File, _link:std.UInt):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>);
        final _link = (_link : stdgo.GoUInt32);
        return {
            final obj = stdgo._internal.debug.elf.Elf_File_static_extension.File_static_extension._stringTable(_f, _link);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
