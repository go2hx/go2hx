package stdgo.debug.dwarf;
@:structInit @:using(stdgo.debug.dwarf.Dwarf.LineReaderPos_static_extension) abstract LineReaderPos(stdgo._internal.debug.dwarf.Dwarf_LineReaderPos.LineReaderPos) from stdgo._internal.debug.dwarf.Dwarf_LineReaderPos.LineReaderPos to stdgo._internal.debug.dwarf.Dwarf_LineReaderPos.LineReaderPos {
    public var _off(get, set) : Offset;
    function get__off():Offset return this._off;
    function set__off(v:Offset):Offset {
        this._off = v;
        return v;
    }
    public var _numFileEntries(get, set) : StdTypes.Int;
    function get__numFileEntries():StdTypes.Int return this._numFileEntries;
    function set__numFileEntries(v:StdTypes.Int):StdTypes.Int {
        this._numFileEntries = (v : stdgo.GoInt);
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
    public function new(?_off:Offset, ?_numFileEntries:StdTypes.Int, ?_state:LineEntry, ?_fileIndex:StdTypes.Int) this = new stdgo._internal.debug.dwarf.Dwarf_LineReaderPos.LineReaderPos(_off, (_numFileEntries : stdgo.GoInt), _state, (_fileIndex : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
