package stdgo._internal.regexp;
@:structInit @:using(stdgo._internal.regexp.Regexp_T_inputs_static_extension.T_inputs_static_extension) class T_inputs {
    public var _bytes : stdgo._internal.regexp.Regexp_T_inputBytes.T_inputBytes = ({} : stdgo._internal.regexp.Regexp_T_inputBytes.T_inputBytes);
    public var _string : stdgo._internal.regexp.Regexp_T_inputString.T_inputString = ({} : stdgo._internal.regexp.Regexp_T_inputString.T_inputString);
    public var _reader : stdgo._internal.regexp.Regexp_T_inputReader.T_inputReader = ({} : stdgo._internal.regexp.Regexp_T_inputReader.T_inputReader);
    public function new(?_bytes:stdgo._internal.regexp.Regexp_T_inputBytes.T_inputBytes, ?_string:stdgo._internal.regexp.Regexp_T_inputString.T_inputString, ?_reader:stdgo._internal.regexp.Regexp_T_inputReader.T_inputReader) {
        if (_bytes != null) this._bytes = _bytes;
        if (_string != null) this._string = _string;
        if (_reader != null) this._reader = _reader;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_inputs(_bytes, _string, _reader);
    }
}