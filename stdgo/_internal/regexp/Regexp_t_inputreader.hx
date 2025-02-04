package stdgo._internal.regexp;
@:structInit @:using(stdgo._internal.regexp.Regexp_t_inputreader_static_extension.T_inputReader_static_extension) class T_inputReader {
    public var _r : stdgo._internal.io.Io_runereader.RuneReader = (null : stdgo._internal.io.Io_runereader.RuneReader);
    public var _atEOT : Bool = false;
    public var _pos : stdgo.GoInt = 0;
    public function new(?_r:stdgo._internal.io.Io_runereader.RuneReader, ?_atEOT:Bool, ?_pos:stdgo.GoInt) {
        if (_r != null) this._r = _r;
        if (_atEOT != null) this._atEOT = _atEOT;
        if (_pos != null) this._pos = _pos;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_inputReader(_r, _atEOT, _pos);
    }
}
