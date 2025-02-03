package stdgo.debug.macho;
class File_static_extension {
    static public function importedLibraries(_f:File):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.macho.Macho_File.File>);
        return {
            final obj = stdgo._internal.debug.macho.Macho_File_static_extension.File_static_extension.importedLibraries(_f);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function importedSymbols(_f:File):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.macho.Macho_File.File>);
        return {
            final obj = stdgo._internal.debug.macho.Macho_File_static_extension.File_static_extension.importedSymbols(_f);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function dWARF(_f:File):stdgo.Tuple<stdgo._internal.debug.dwarf.Dwarf_Data.Data, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.macho.Macho_File.File>);
        return {
            final obj = stdgo._internal.debug.macho.Macho_File_static_extension.File_static_extension.dWARF(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function section(_f:File, _name:String):Section {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.macho.Macho_File.File>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.debug.macho.Macho_File_static_extension.File_static_extension.section(_f, _name);
    }
    static public function segment(_f:File, _name:String):Segment {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.macho.Macho_File.File>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.debug.macho.Macho_File_static_extension.File_static_extension.segment(_f, _name);
    }
    static public function _pushSection(_f:File, _sh:Section, _r:stdgo._internal.io.Io_ReaderAt.ReaderAt):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.macho.Macho_File.File>);
        final _sh = (_sh : stdgo.Ref<stdgo._internal.debug.macho.Macho_Section.Section>);
        return stdgo._internal.debug.macho.Macho_File_static_extension.File_static_extension._pushSection(_f, _sh, _r);
    }
    static public function _parseSymtab(_f:File, _symdat:Array<std.UInt>, _strtab:Array<std.UInt>, _cmddat:Array<std.UInt>, _hdr:SymtabCmd, _offset:haxe.Int64):stdgo.Tuple<Symtab, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.macho.Macho_File.File>);
        final _symdat = ([for (i in _symdat) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _strtab = ([for (i in _strtab) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _cmddat = ([for (i in _cmddat) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _hdr = (_hdr : stdgo.Ref<stdgo._internal.debug.macho.Macho_SymtabCmd.SymtabCmd>);
        final _offset = (_offset : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.debug.macho.Macho_File_static_extension.File_static_extension._parseSymtab(_f, _symdat, _strtab, _cmddat, _hdr, _offset);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(_f:File):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.debug.macho.Macho_File.File>);
        return stdgo._internal.debug.macho.Macho_File_static_extension.File_static_extension.close(_f);
    }
}
