package stdgo.regexp;
@:structInit @:using(stdgo.regexp.Regexp.T_inputs_static_extension) abstract T_inputs(stdgo._internal.regexp.Regexp_T_inputs.T_inputs) from stdgo._internal.regexp.Regexp_T_inputs.T_inputs to stdgo._internal.regexp.Regexp_T_inputs.T_inputs {
    public var _bytes(get, set) : T_inputBytes;
    function get__bytes():T_inputBytes return this._bytes;
    function set__bytes(v:T_inputBytes):T_inputBytes {
        this._bytes = v;
        return v;
    }
    public var _string(get, set) : T_inputString;
    function get__string():T_inputString return this._string;
    function set__string(v:T_inputString):T_inputString {
        this._string = v;
        return v;
    }
    public var _reader(get, set) : T_inputReader;
    function get__reader():T_inputReader return this._reader;
    function set__reader(v:T_inputReader):T_inputReader {
        this._reader = v;
        return v;
    }
    public function new(?_bytes:T_inputBytes, ?_string:T_inputString, ?_reader:T_inputReader) this = new stdgo._internal.regexp.Regexp_T_inputs.T_inputs(_bytes, _string, _reader);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
