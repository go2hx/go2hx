package stdgo._internal.debug.dwarf;
import stdgo._internal.errors.Errors;
import stdgo._internal.path.Path;
import stdgo._internal.strings.Strings;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.sort.Sort;
@:structInit @:using(stdgo._internal.debug.dwarf.Dwarf_LineReaderPos_static_extension.LineReaderPos_static_extension) class LineReaderPos {
    public var _off : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset);
    public var _numFileEntries : stdgo.GoInt = 0;
    public var _state : stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry = ({} : stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry);
    public var _fileIndex : stdgo.GoInt = 0;
    public function new(?_off:stdgo._internal.debug.dwarf.Dwarf_Offset.Offset, ?_numFileEntries:stdgo.GoInt, ?_state:stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry, ?_fileIndex:stdgo.GoInt) {
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
