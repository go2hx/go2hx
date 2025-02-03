package stdgo.regexp;
@:structInit @:using(stdgo.regexp.Regexp.T_inputReader_static_extension) abstract T_inputReader(stdgo._internal.regexp.Regexp_T_inputReader.T_inputReader) from stdgo._internal.regexp.Regexp_T_inputReader.T_inputReader to stdgo._internal.regexp.Regexp_T_inputReader.T_inputReader {
    public var _r(get, set) : stdgo._internal.io.Io_RuneReader.RuneReader;
    function get__r():stdgo._internal.io.Io_RuneReader.RuneReader return this._r;
    function set__r(v:stdgo._internal.io.Io_RuneReader.RuneReader):stdgo._internal.io.Io_RuneReader.RuneReader {
        this._r = v;
        return v;
    }
    public var _atEOT(get, set) : Bool;
    function get__atEOT():Bool return this._atEOT;
    function set__atEOT(v:Bool):Bool {
        this._atEOT = v;
        return v;
    }
    public var _pos(get, set) : StdTypes.Int;
    function get__pos():StdTypes.Int return this._pos;
    function set__pos(v:StdTypes.Int):StdTypes.Int {
        this._pos = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_r:stdgo._internal.io.Io_RuneReader.RuneReader, ?_atEOT:Bool, ?_pos:StdTypes.Int) this = new stdgo._internal.regexp.Regexp_T_inputReader.T_inputReader(_r, _atEOT, (_pos : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
