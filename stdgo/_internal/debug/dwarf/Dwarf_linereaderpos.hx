package stdgo._internal.debug.dwarf;
@:structInit @:using(stdgo._internal.debug.dwarf.Dwarf_linereaderpos_static_extension.LineReaderPos_static_extension) class LineReaderPos {
    public var _off : stdgo._internal.debug.dwarf.Dwarf_offset.Offset = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
    public var _numFileEntries : stdgo.GoInt = 0;
    public var _state : stdgo._internal.debug.dwarf.Dwarf_lineentry.LineEntry = ({} : stdgo._internal.debug.dwarf.Dwarf_lineentry.LineEntry);
    public var _fileIndex : stdgo.GoInt = 0;
    public function new(?_off:stdgo._internal.debug.dwarf.Dwarf_offset.Offset, ?_numFileEntries:stdgo.GoInt, ?_state:stdgo._internal.debug.dwarf.Dwarf_lineentry.LineEntry, ?_fileIndex:stdgo.GoInt) {
        if (_off != null) this._off = _off;
        if (_numFileEntries != null) this._numFileEntries = _numFileEntries;
        if (_state != null) this._state = _state;
        if (_fileIndex != null) this._fileIndex = _fileIndex;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new LineReaderPos(_off, _numFileEntries, _state, _fileIndex);
    }
}
