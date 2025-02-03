package stdgo.debug.dwarf;
class Data_static_extension {
    static public function _offsetToUnit(_d:Data, _off:Offset):StdTypes.Int {
        final _d = (_d : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>);
        return stdgo._internal.debug.dwarf.Dwarf_Data_static_extension.Data_static_extension._offsetToUnit(_d, _off);
    }
    static public function _parseUnits(_d:Data):stdgo.Tuple<Array<T_unit>, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>);
        return {
            final obj = stdgo._internal.debug.dwarf.Dwarf_Data_static_extension.Data_static_extension._parseUnits(_d);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _sigToType(_d:Data, _sig:haxe.UInt64):stdgo.Tuple<Type_, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>);
        final _sig = (_sig : stdgo.GoUInt64);
        return {
            final obj = stdgo._internal.debug.dwarf.Dwarf_Data_static_extension.Data_static_extension._sigToType(_d, _sig);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _parseTypes(_d:Data, _name:String, _types:Array<std.UInt>):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>);
        final _name = (_name : stdgo.GoString);
        final _types = ([for (i in _types) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.dwarf.Dwarf_Data_static_extension.Data_static_extension._parseTypes(_d, _name, _types);
    }
    static public function _readType(_d:Data, _name:String, _r:T_typeReader, _off:Offset, _typeCache:stdgo.GoMap<stdgo._internal.debug.dwarf.Dwarf_Offset.Offset, stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>, _fixups:T_typeFixer):stdgo.Tuple<Type_, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>);
        final _name = (_name : stdgo.GoString);
        final _typeCache = (_typeCache : stdgo.GoMap<stdgo._internal.debug.dwarf.Dwarf_Offset.Offset, stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>);
        final _fixups = (_fixups : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeFixer.T_typeFixer>);
        return {
            final obj = stdgo._internal.debug.dwarf.Dwarf_Data_static_extension.Data_static_extension._readType(_d, _name, _r, _off, _typeCache, _fixups);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function type(_d:Data, _off:Offset):stdgo.Tuple<Type_, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>);
        return {
            final obj = stdgo._internal.debug.dwarf.Dwarf_Data_static_extension.Data_static_extension.type(_d, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function addSection(_d:Data, _name:String, _contents:Array<std.UInt>):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>);
        final _name = (_name : stdgo.GoString);
        final _contents = ([for (i in _contents) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.dwarf.Dwarf_Data_static_extension.Data_static_extension.addSection(_d, _name, _contents);
    }
    static public function addTypes(_d:Data, _name:String, _types:Array<std.UInt>):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>);
        final _name = (_name : stdgo.GoString);
        final _types = ([for (i in _types) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.dwarf.Dwarf_Data_static_extension.Data_static_extension.addTypes(_d, _name, _types);
    }
    static public function lineReader(_d:Data, _cu:Entry):stdgo.Tuple<LineReader, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>);
        final _cu = (_cu : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>);
        return {
            final obj = stdgo._internal.debug.dwarf.Dwarf_Data_static_extension.Data_static_extension.lineReader(_d, _cu);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _debugAddr(_d:Data, _format:T_dataFormat, _addrBase:haxe.UInt64, _idx:haxe.UInt64):stdgo.Tuple<haxe.UInt64, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>);
        final _addrBase = (_addrBase : stdgo.GoUInt64);
        final _idx = (_idx : stdgo.GoUInt64);
        return {
            final obj = stdgo._internal.debug.dwarf.Dwarf_Data_static_extension.Data_static_extension._debugAddr(_d, _format, _addrBase, _idx);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _dwarf5Ranges(_d:Data, _u:T_unit, _cu:Entry, _base:haxe.UInt64, _ranges:haxe.Int64, _ret:Array<haxe.ds.Vector<haxe.UInt64>>):stdgo.Tuple<Array<haxe.ds.Vector<haxe.UInt64>>, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>);
        final _u = (_u : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>);
        final _cu = (_cu : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>);
        final _base = (_base : stdgo.GoUInt64);
        final _ranges = (_ranges : stdgo.GoInt64);
        final _ret = ([for (i in _ret) ([for (i in i) (i : stdgo.GoUInt64)] : stdgo.GoArray<stdgo.GoUInt64>)] : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>);
        return {
            final obj = stdgo._internal.debug.dwarf.Dwarf_Data_static_extension.Data_static_extension._dwarf5Ranges(_d, _u, _cu, _base, _ranges, _ret);
            { _0 : [for (i in obj._0) haxe.ds.Vector.fromArrayCopy([for (i in i) i])], _1 : obj._1 };
        };
    }
    static public function _dwarf2Ranges(_d:Data, _u:T_unit, _base:haxe.UInt64, _ranges:haxe.Int64, _ret:Array<haxe.ds.Vector<haxe.UInt64>>):stdgo.Tuple<Array<haxe.ds.Vector<haxe.UInt64>>, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>);
        final _u = (_u : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>);
        final _base = (_base : stdgo.GoUInt64);
        final _ranges = (_ranges : stdgo.GoInt64);
        final _ret = ([for (i in _ret) ([for (i in i) (i : stdgo.GoUInt64)] : stdgo.GoArray<stdgo.GoUInt64>)] : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>);
        return {
            final obj = stdgo._internal.debug.dwarf.Dwarf_Data_static_extension.Data_static_extension._dwarf2Ranges(_d, _u, _base, _ranges, _ret);
            { _0 : [for (i in obj._0) haxe.ds.Vector.fromArrayCopy([for (i in i) i])], _1 : obj._1 };
        };
    }
    static public function _baseAddressForEntry(_d:Data, _e:Entry):stdgo.Tuple.Tuple3<Entry, haxe.UInt64, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>);
        final _e = (_e : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>);
        return {
            final obj = stdgo._internal.debug.dwarf.Dwarf_Data_static_extension.Data_static_extension._baseAddressForEntry(_d, _e);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function ranges(_d:Data, _e:Entry):stdgo.Tuple<Array<haxe.ds.Vector<haxe.UInt64>>, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>);
        final _e = (_e : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>);
        return {
            final obj = stdgo._internal.debug.dwarf.Dwarf_Data_static_extension.Data_static_extension.ranges(_d, _e);
            { _0 : [for (i in obj._0) haxe.ds.Vector.fromArrayCopy([for (i in i) i])], _1 : obj._1 };
        };
    }
    static public function reader(_d:Data):Reader {
        final _d = (_d : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>);
        return stdgo._internal.debug.dwarf.Dwarf_Data_static_extension.Data_static_extension.reader(_d);
    }
    static public function _parseAbbrev(_d:Data, _off:haxe.UInt64, _vers:StdTypes.Int):stdgo.Tuple<T_abbrevTable, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>);
        final _off = (_off : stdgo.GoUInt64);
        final _vers = (_vers : stdgo.GoInt);
        return {
            final obj = stdgo._internal.debug.dwarf.Dwarf_Data_static_extension.Data_static_extension._parseAbbrev(_d, _off, _vers);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
