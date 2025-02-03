package stdgo.debug.dwarf;
class Reader_static_extension {
    static public function seekPC(_r:Reader, _pc:haxe.UInt64):stdgo.Tuple<Entry, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Reader.Reader>);
        final _pc = (_pc : stdgo.GoUInt64);
        return {
            final obj = stdgo._internal.debug.dwarf.Dwarf_Reader_static_extension.Reader_static_extension.seekPC(_r, _pc);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _offset(_r:Reader):Offset {
        final _r = (_r : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Reader.Reader>);
        return stdgo._internal.debug.dwarf.Dwarf_Reader_static_extension.Reader_static_extension._offset(_r);
    }
    static public function _clone(_r:Reader):T_typeReader {
        final _r = (_r : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Reader.Reader>);
        return stdgo._internal.debug.dwarf.Dwarf_Reader_static_extension.Reader_static_extension._clone(_r);
    }
    static public function skipChildren(_r:Reader):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Reader.Reader>);
        stdgo._internal.debug.dwarf.Dwarf_Reader_static_extension.Reader_static_extension.skipChildren(_r);
    }
    static public function next(_r:Reader):stdgo.Tuple<Entry, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Reader.Reader>);
        return {
            final obj = stdgo._internal.debug.dwarf.Dwarf_Reader_static_extension.Reader_static_extension.next(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _nextUnit(_r:Reader):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Reader.Reader>);
        stdgo._internal.debug.dwarf.Dwarf_Reader_static_extension.Reader_static_extension._nextUnit(_r);
    }
    static public function _maybeNextUnit(_r:Reader):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Reader.Reader>);
        stdgo._internal.debug.dwarf.Dwarf_Reader_static_extension.Reader_static_extension._maybeNextUnit(_r);
    }
    static public function seek(_r:Reader, _off:Offset):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Reader.Reader>);
        stdgo._internal.debug.dwarf.Dwarf_Reader_static_extension.Reader_static_extension.seek(_r, _off);
    }
    static public function byteOrder(_r:Reader):stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder {
        final _r = (_r : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Reader.Reader>);
        return stdgo._internal.debug.dwarf.Dwarf_Reader_static_extension.Reader_static_extension.byteOrder(_r);
    }
    static public function addressSize(_r:Reader):StdTypes.Int {
        final _r = (_r : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Reader.Reader>);
        return stdgo._internal.debug.dwarf.Dwarf_Reader_static_extension.Reader_static_extension.addressSize(_r);
    }
}
