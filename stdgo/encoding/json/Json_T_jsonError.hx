package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_jsonError_static_extension) abstract T_jsonError(stdgo._internal.encoding.json.Json_T_jsonError.T_jsonError) from stdgo._internal.encoding.json.Json_T_jsonError.T_jsonError to stdgo._internal.encoding.json.Json_T_jsonError.T_jsonError {
    public var _error(get, set) : stdgo.Error;
    function get__error():stdgo.Error return this._error;
    function set__error(v:stdgo.Error):stdgo.Error {
        this._error = (v : stdgo.Error);
        return v;
    }
    public function new(?_error:stdgo.Error) this = new stdgo._internal.encoding.json.Json_T_jsonError.T_jsonError((_error : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
