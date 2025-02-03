package stdgo.debug.dwarf;
@:structInit @:using(stdgo.debug.dwarf.Dwarf.LineReader_static_extension) abstract LineReader(stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader) from stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader to stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader {
    public var _buf(get, set) : T_buf;
    function get__buf():T_buf return this._buf;
    function set__buf(v:T_buf):T_buf {
        this._buf = v;
        return v;
    }
    public var _section(get, set) : Array<std.UInt>;
    function get__section():Array<std.UInt> return [for (i in this._section) i];
    function set__section(v:Array<std.UInt>):Array<std.UInt> {
        this._section = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _str(get, set) : Array<std.UInt>;
    function get__str():Array<std.UInt> return [for (i in this._str) i];
    function set__str(v:Array<std.UInt>):Array<std.UInt> {
        this._str = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _lineStr(get, set) : Array<std.UInt>;
    function get__lineStr():Array<std.UInt> return [for (i in this._lineStr) i];
    function set__lineStr(v:Array<std.UInt>):Array<std.UInt> {
        this._lineStr = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _version(get, set) : std.UInt;
    function get__version():std.UInt return this._version;
    function set__version(v:std.UInt):std.UInt {
        this._version = (v : stdgo.GoUInt16);
        return v;
    }
    public var _addrsize(get, set) : StdTypes.Int;
    function get__addrsize():StdTypes.Int return this._addrsize;
    function set__addrsize(v:StdTypes.Int):StdTypes.Int {
        this._addrsize = (v : stdgo.GoInt);
        return v;
    }
    public var _segmentSelectorSize(get, set) : StdTypes.Int;
    function get__segmentSelectorSize():StdTypes.Int return this._segmentSelectorSize;
    function set__segmentSelectorSize(v:StdTypes.Int):StdTypes.Int {
        this._segmentSelectorSize = (v : stdgo.GoInt);
        return v;
    }
    public var _minInstructionLength(get, set) : StdTypes.Int;
    function get__minInstructionLength():StdTypes.Int return this._minInstructionLength;
    function set__minInstructionLength(v:StdTypes.Int):StdTypes.Int {
        this._minInstructionLength = (v : stdgo.GoInt);
        return v;
    }
    public var _maxOpsPerInstruction(get, set) : StdTypes.Int;
    function get__maxOpsPerInstruction():StdTypes.Int return this._maxOpsPerInstruction;
    function set__maxOpsPerInstruction(v:StdTypes.Int):StdTypes.Int {
        this._maxOpsPerInstruction = (v : stdgo.GoInt);
        return v;
    }
    public var _defaultIsStmt(get, set) : Bool;
    function get__defaultIsStmt():Bool return this._defaultIsStmt;
    function set__defaultIsStmt(v:Bool):Bool {
        this._defaultIsStmt = v;
        return v;
    }
    public var _lineBase(get, set) : StdTypes.Int;
    function get__lineBase():StdTypes.Int return this._lineBase;
    function set__lineBase(v:StdTypes.Int):StdTypes.Int {
        this._lineBase = (v : stdgo.GoInt);
        return v;
    }
    public var _lineRange(get, set) : StdTypes.Int;
    function get__lineRange():StdTypes.Int return this._lineRange;
    function set__lineRange(v:StdTypes.Int):StdTypes.Int {
        this._lineRange = (v : stdgo.GoInt);
        return v;
    }
    public var _opcodeBase(get, set) : StdTypes.Int;
    function get__opcodeBase():StdTypes.Int return this._opcodeBase;
    function set__opcodeBase(v:StdTypes.Int):StdTypes.Int {
        this._opcodeBase = (v : stdgo.GoInt);
        return v;
    }
    public var _opcodeLengths(get, set) : Array<StdTypes.Int>;
    function get__opcodeLengths():Array<StdTypes.Int> return [for (i in this._opcodeLengths) i];
    function set__opcodeLengths(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._opcodeLengths = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var _directories(get, set) : Array<String>;
    function get__directories():Array<String> return [for (i in this._directories) i];
    function set__directories(v:Array<String>):Array<String> {
        this._directories = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _fileEntries(get, set) : Array<LineFile>;
    function get__fileEntries():Array<LineFile> return [for (i in this._fileEntries) i];
    function set__fileEntries(v:Array<LineFile>):Array<LineFile> {
        this._fileEntries = ([for (i in v) (i : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineFile.LineFile>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineFile.LineFile>>);
        return v;
    }
    public var _programOffset(get, set) : Offset;
    function get__programOffset():Offset return this._programOffset;
    function set__programOffset(v:Offset):Offset {
        this._programOffset = v;
        return v;
    }
    public var _endOffset(get, set) : Offset;
    function get__endOffset():Offset return this._endOffset;
    function set__endOffset(v:Offset):Offset {
        this._endOffset = v;
        return v;
    }
    public var _initialFileEntries(get, set) : StdTypes.Int;
    function get__initialFileEntries():StdTypes.Int return this._initialFileEntries;
    function set__initialFileEntries(v:StdTypes.Int):StdTypes.Int {
        this._initialFileEntries = (v : stdgo.GoInt);
        return v;
    }
    public var _state(get, set) : LineEntry;
    function get__state():LineEntry return this._state;
    function set__state(v:LineEntry):LineEntry {
        this._state = v;
        return v;
    }
    public var _fileIndex(get, set) : StdTypes.Int;
    function get__fileIndex():StdTypes.Int return this._fileIndex;
    function set__fileIndex(v:StdTypes.Int):StdTypes.Int {
        this._fileIndex = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_buf:T_buf, ?_section:Array<std.UInt>, ?_str:Array<std.UInt>, ?_lineStr:Array<std.UInt>, ?_version:std.UInt, ?_addrsize:StdTypes.Int, ?_segmentSelectorSize:StdTypes.Int, ?_minInstructionLength:StdTypes.Int, ?_maxOpsPerInstruction:StdTypes.Int, ?_defaultIsStmt:Bool, ?_lineBase:StdTypes.Int, ?_lineRange:StdTypes.Int, ?_opcodeBase:StdTypes.Int, ?_opcodeLengths:Array<StdTypes.Int>, ?_directories:Array<String>, ?_fileEntries:Array<LineFile>, ?_programOffset:Offset, ?_endOffset:Offset, ?_initialFileEntries:StdTypes.Int, ?_state:LineEntry, ?_fileIndex:StdTypes.Int) this = new stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader(
_buf,
([for (i in _section) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _str) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _lineStr) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
(_version : stdgo.GoUInt16),
(_addrsize : stdgo.GoInt),
(_segmentSelectorSize : stdgo.GoInt),
(_minInstructionLength : stdgo.GoInt),
(_maxOpsPerInstruction : stdgo.GoInt),
_defaultIsStmt,
(_lineBase : stdgo.GoInt),
(_lineRange : stdgo.GoInt),
(_opcodeBase : stdgo.GoInt),
([for (i in _opcodeLengths) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>),
([for (i in _directories) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in _fileEntries) (i : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineFile.LineFile>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineFile.LineFile>>),
_programOffset,
_endOffset,
(_initialFileEntries : stdgo.GoInt),
_state,
(_fileIndex : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
