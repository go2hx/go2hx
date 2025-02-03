package stdgo.debug.macho;
class FatArch_static_extension {
    public static function _pushSection(__self__:stdgo._internal.debug.macho.Macho_FatArch.FatArch, _0:Section, _1:stdgo._internal.io.Io_ReaderAt.ReaderAt):stdgo.Error {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.debug.macho.Macho_Section.Section>);
        return stdgo._internal.debug.macho.Macho_FatArch_static_extension.FatArch_static_extension._pushSection(__self__, _0, _1);
    }
    public static function _parseSymtab(__self__:stdgo._internal.debug.macho.Macho_FatArch.FatArch, _0:Array<std.UInt>, _1:Array<std.UInt>, _2:Array<std.UInt>, _3:SymtabCmd, _4:haxe.Int64):stdgo.Tuple<Symtab, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = ([for (i in _1) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _2 = ([for (i in _2) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _3 = (_3 : stdgo.Ref<stdgo._internal.debug.macho.Macho_SymtabCmd.SymtabCmd>);
        final _4 = (_4 : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.debug.macho.Macho_FatArch_static_extension.FatArch_static_extension._parseSymtab(__self__, _0, _1, _2, _3, _4);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function segment(__self__:stdgo._internal.debug.macho.Macho_FatArch.FatArch, _0:String):Segment {
        final _0 = (_0 : stdgo.GoString);
        return stdgo._internal.debug.macho.Macho_FatArch_static_extension.FatArch_static_extension.segment(__self__, _0);
    }
    public static function section(__self__:stdgo._internal.debug.macho.Macho_FatArch.FatArch, _0:String):Section {
        final _0 = (_0 : stdgo.GoString);
        return stdgo._internal.debug.macho.Macho_FatArch_static_extension.FatArch_static_extension.section(__self__, _0);
    }
    public static function importedSymbols(__self__:stdgo._internal.debug.macho.Macho_FatArch.FatArch):stdgo.Tuple<Array<String>, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.macho.Macho_FatArch_static_extension.FatArch_static_extension.importedSymbols(__self__);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function importedLibraries(__self__:stdgo._internal.debug.macho.Macho_FatArch.FatArch):stdgo.Tuple<Array<String>, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.macho.Macho_FatArch_static_extension.FatArch_static_extension.importedLibraries(__self__);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function dWARF(__self__:stdgo._internal.debug.macho.Macho_FatArch.FatArch):stdgo.Tuple<stdgo._internal.debug.dwarf.Dwarf_Data.Data, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.macho.Macho_FatArch_static_extension.FatArch_static_extension.dWARF(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function close(__self__:stdgo._internal.debug.macho.Macho_FatArch.FatArch):stdgo.Error {
        return stdgo._internal.debug.macho.Macho_FatArch_static_extension.FatArch_static_extension.close(__self__);
    }
}
