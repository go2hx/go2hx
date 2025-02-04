package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_jsonerror_static_extension.T_jsonError_static_extension) class T_jsonError {
    @:embedded
    public var _error : stdgo.Error = (null : stdgo.Error);
    public function new(?_error:stdgo.Error) {
        if (_error != null) this._error = _error;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var error(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_error():() -> stdgo.GoString return @:check31 (this._error ?? throw "null pointer dereference").error;
    public function __copy__() {
        return new T_jsonError(_error);
    }
}
