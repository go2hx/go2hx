package stdgo.debug.pe;
class File_static_extension {
    static public function cOFFSymbolReadSectionDefAux(_f:File, _idx:StdTypes.Int):stdgo.Tuple<COFFSymbolAuxFormat5, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.pe.Pe_File.File>);
        final _idx = (_idx : stdgo.GoInt);
        return {
            final obj = stdgo._internal.debug.pe.Pe_File_static_extension.File_static_extension.cOFFSymbolReadSectionDefAux(_f, _idx);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function importedLibraries(_f:File):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.pe.Pe_File.File>);
        return {
            final obj = stdgo._internal.debug.pe.Pe_File_static_extension.File_static_extension.importedLibraries(_f);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function importedSymbols(_f:File):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.pe.Pe_File.File>);
        return {
            final obj = stdgo._internal.debug.pe.Pe_File_static_extension.File_static_extension.importedSymbols(_f);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function dWARF(_f:File):stdgo.Tuple<stdgo._internal.debug.dwarf.Dwarf_Data.Data, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.pe.Pe_File.File>);
        return {
            final obj = stdgo._internal.debug.pe.Pe_File_static_extension.File_static_extension.dWARF(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function section(_f:File, _name:String):Section {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.pe.Pe_File.File>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.debug.pe.Pe_File_static_extension.File_static_extension.section(_f, _name);
    }
    static public function close(_f:File):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.pe.Pe_File.File>);
        return stdgo._internal.debug.pe.Pe_File_static_extension.File_static_extension.close(_f);
    }
}
