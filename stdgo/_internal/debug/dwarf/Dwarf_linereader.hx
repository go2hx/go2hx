package stdgo._internal.debug.dwarf;
@:structInit @:using(stdgo._internal.debug.dwarf.Dwarf_linereader_static_extension.LineReader_static_extension) class LineReader {
    public var _buf : stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf = ({} : stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf);
    public var _section : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _str : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _lineStr : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _version : stdgo.GoUInt16 = 0;
    public var _addrsize : stdgo.GoInt = 0;
    public var _segmentSelectorSize : stdgo.GoInt = 0;
    public var _minInstructionLength : stdgo.GoInt = 0;
    public var _maxOpsPerInstruction : stdgo.GoInt = 0;
    public var _defaultIsStmt : Bool = false;
    public var _lineBase : stdgo.GoInt = 0;
    public var _lineRange : stdgo.GoInt = 0;
    public var _opcodeBase : stdgo.GoInt = 0;
    public var _opcodeLengths : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _directories : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _fileEntries : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linefile.LineFile>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linefile.LineFile>>);
    public var _programOffset : stdgo._internal.debug.dwarf.Dwarf_offset.Offset = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
    public var _endOffset : stdgo._internal.debug.dwarf.Dwarf_offset.Offset = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
    public var _initialFileEntries : stdgo.GoInt = 0;
    public var _state : stdgo._internal.debug.dwarf.Dwarf_lineentry.LineEntry = ({} : stdgo._internal.debug.dwarf.Dwarf_lineentry.LineEntry);
    public var _fileIndex : stdgo.GoInt = 0;
    public function new(?_buf:stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf, ?_section:stdgo.Slice<stdgo.GoUInt8>, ?_str:stdgo.Slice<stdgo.GoUInt8>, ?_lineStr:stdgo.Slice<stdgo.GoUInt8>, ?_version:stdgo.GoUInt16, ?_addrsize:stdgo.GoInt, ?_segmentSelectorSize:stdgo.GoInt, ?_minInstructionLength:stdgo.GoInt, ?_maxOpsPerInstruction:stdgo.GoInt, ?_defaultIsStmt:Bool, ?_lineBase:stdgo.GoInt, ?_lineRange:stdgo.GoInt, ?_opcodeBase:stdgo.GoInt, ?_opcodeLengths:stdgo.Slice<stdgo.GoInt>, ?_directories:stdgo.Slice<stdgo.GoString>, ?_fileEntries:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linefile.LineFile>>, ?_programOffset:stdgo._internal.debug.dwarf.Dwarf_offset.Offset, ?_endOffset:stdgo._internal.debug.dwarf.Dwarf_offset.Offset, ?_initialFileEntries:stdgo.GoInt, ?_state:stdgo._internal.debug.dwarf.Dwarf_lineentry.LineEntry, ?_fileIndex:stdgo.GoInt) {
        if (_buf != null) this._buf = _buf;
        if (_section != null) this._section = _section;
        if (_str != null) this._str = _str;
        if (_lineStr != null) this._lineStr = _lineStr;
        if (_version != null) this._version = _version;
        if (_addrsize != null) this._addrsize = _addrsize;
        if (_segmentSelectorSize != null) this._segmentSelectorSize = _segmentSelectorSize;
        if (_minInstructionLength != null) this._minInstructionLength = _minInstructionLength;
        if (_maxOpsPerInstruction != null) this._maxOpsPerInstruction = _maxOpsPerInstruction;
        if (_defaultIsStmt != null) this._defaultIsStmt = _defaultIsStmt;
        if (_lineBase != null) this._lineBase = _lineBase;
        if (_lineRange != null) this._lineRange = _lineRange;
        if (_opcodeBase != null) this._opcodeBase = _opcodeBase;
        if (_opcodeLengths != null) this._opcodeLengths = _opcodeLengths;
        if (_directories != null) this._directories = _directories;
        if (_fileEntries != null) this._fileEntries = _fileEntries;
        if (_programOffset != null) this._programOffset = _programOffset;
        if (_endOffset != null) this._endOffset = _endOffset;
        if (_initialFileEntries != null) this._initialFileEntries = _initialFileEntries;
        if (_state != null) this._state = _state;
        if (_fileIndex != null) this._fileIndex = _fileIndex;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new LineReader(
_buf,
_section,
_str,
_lineStr,
_version,
_addrsize,
_segmentSelectorSize,
_minInstructionLength,
_maxOpsPerInstruction,
_defaultIsStmt,
_lineBase,
_lineRange,
_opcodeBase,
_opcodeLengths,
_directories,
_fileEntries,
_programOffset,
_endOffset,
_initialFileEntries,
_state,
_fileIndex);
    }
}
