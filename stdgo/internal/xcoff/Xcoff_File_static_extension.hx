package stdgo.internal.xcoff;
class File_static_extension {
    static public function importedLibraries(_f:File):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_File.File>);
        return {
            final obj = stdgo._internal.internal.xcoff.Xcoff_File_static_extension.File_static_extension.importedLibraries(_f);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function importedSymbols(_f:File):stdgo.Tuple<Array<ImportedSymbol>, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_File.File>);
        return {
            final obj = stdgo._internal.internal.xcoff.Xcoff_File_static_extension.File_static_extension.importedSymbols(_f);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _readImportIDs(_f:File, _s:Section):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_File.File>);
        final _s = (_s : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Section.Section>);
        return {
            final obj = stdgo._internal.internal.xcoff.Xcoff_File_static_extension.File_static_extension._readImportIDs(_f, _s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function dWARF(_f:File):stdgo.Tuple<stdgo._internal.debug.dwarf.Dwarf_Data.Data, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_File.File>);
        return {
            final obj = stdgo._internal.internal.xcoff.Xcoff_File_static_extension.File_static_extension.dWARF(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function cSect(_f:File, _name:String):Array<std.UInt> {
        final _f = (_f : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_File.File>);
        final _name = (_name : stdgo.GoString);
        return [for (i in stdgo._internal.internal.xcoff.Xcoff_File_static_extension.File_static_extension.cSect(_f, _name)) i];
    }
    static public function sectionByType(_f:File, _typ:std.UInt):Section {
        final _f = (_f : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_File.File>);
        final _typ = (_typ : stdgo.GoUInt32);
        return stdgo._internal.internal.xcoff.Xcoff_File_static_extension.File_static_extension.sectionByType(_f, _typ);
    }
    static public function section(_f:File, _name:String):Section {
        final _f = (_f : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_File.File>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.internal.xcoff.Xcoff_File_static_extension.File_static_extension.section(_f, _name);
    }
    static public function close(_f:File):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_File.File>);
        return stdgo._internal.internal.xcoff.Xcoff_File_static_extension.File_static_extension.close(_f);
    }
}
