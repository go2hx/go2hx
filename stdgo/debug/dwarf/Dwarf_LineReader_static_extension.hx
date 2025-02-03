package stdgo.debug.dwarf;
class LineReader_static_extension {
    static public function seekPC(_r:LineReader, _pc:haxe.UInt64, _entry:LineEntry):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>);
        final _pc = (_pc : stdgo.GoUInt64);
        final _entry = (_entry : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry>);
        return stdgo._internal.debug.dwarf.Dwarf_LineReader_static_extension.LineReader_static_extension.seekPC(_r, _pc, _entry);
    }
    static public function files(_r:LineReader):Array<LineFile> {
        final _r = (_r : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>);
        return [for (i in stdgo._internal.debug.dwarf.Dwarf_LineReader_static_extension.LineReader_static_extension.files(_r)) i];
    }
    static public function _resetState(_r:LineReader):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>);
        stdgo._internal.debug.dwarf.Dwarf_LineReader_static_extension.LineReader_static_extension._resetState(_r);
    }
    static public function reset(_r:LineReader):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>);
        stdgo._internal.debug.dwarf.Dwarf_LineReader_static_extension.LineReader_static_extension.reset(_r);
    }
    static public function seek(_r:LineReader, _pos:LineReaderPos):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>);
        stdgo._internal.debug.dwarf.Dwarf_LineReader_static_extension.LineReader_static_extension.seek(_r, _pos);
    }
    static public function tell(_r:LineReader):LineReaderPos {
        final _r = (_r : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>);
        return stdgo._internal.debug.dwarf.Dwarf_LineReader_static_extension.LineReader_static_extension.tell(_r);
    }
    static public function _advancePC(_r:LineReader, _opAdvance:StdTypes.Int):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>);
        final _opAdvance = (_opAdvance : stdgo.GoInt);
        stdgo._internal.debug.dwarf.Dwarf_LineReader_static_extension.LineReader_static_extension._advancePC(_r, _opAdvance);
    }
    static public function _step(_r:LineReader, _entry:LineEntry):Bool {
        final _r = (_r : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>);
        final _entry = (_entry : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry>);
        return stdgo._internal.debug.dwarf.Dwarf_LineReader_static_extension.LineReader_static_extension._step(_r, _entry);
    }
    static public function next(_r:LineReader, _entry:LineEntry):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>);
        final _entry = (_entry : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry>);
        return stdgo._internal.debug.dwarf.Dwarf_LineReader_static_extension.LineReader_static_extension.next(_r, _entry);
    }
    static public function _updateFile(_r:LineReader):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>);
        stdgo._internal.debug.dwarf.Dwarf_LineReader_static_extension.LineReader_static_extension._updateFile(_r);
    }
    static public function _readFileEntry(_r:LineReader):stdgo.Tuple<Bool, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>);
        return {
            final obj = stdgo._internal.debug.dwarf.Dwarf_LineReader_static_extension.LineReader_static_extension._readFileEntry(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _readLNCT(_r:LineReader, _s:Array<T_lnctForm>, _dwarf64:Bool):stdgo.Tuple.Tuple4<String, haxe.UInt64, haxe.UInt64, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>);
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_T_lnctForm.T_lnctForm>);
        return {
            final obj = stdgo._internal.debug.dwarf.Dwarf_LineReader_static_extension.LineReader_static_extension._readLNCT(_r, _s, _dwarf64);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    static public function _readLNCTFormat(_r:LineReader):Array<T_lnctForm> {
        final _r = (_r : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>);
        return [for (i in stdgo._internal.debug.dwarf.Dwarf_LineReader_static_extension.LineReader_static_extension._readLNCTFormat(_r)) i];
    }
    static public function _readHeader(_r:LineReader, _compDir:String):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>);
        final _compDir = (_compDir : stdgo.GoString);
        return stdgo._internal.debug.dwarf.Dwarf_LineReader_static_extension.LineReader_static_extension._readHeader(_r, _compDir);
    }
}
