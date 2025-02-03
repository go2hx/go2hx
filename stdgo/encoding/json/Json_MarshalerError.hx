package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.MarshalerError_static_extension) abstract MarshalerError(stdgo._internal.encoding.json.Json_MarshalerError.MarshalerError) from stdgo._internal.encoding.json.Json_MarshalerError.MarshalerError to stdgo._internal.encoding.json.Json_MarshalerError.MarshalerError {
    public var type(get, set) : stdgo._internal.reflect.Reflect_Type_.Type_;
    function get_type():stdgo._internal.reflect.Reflect_Type_.Type_ return this.type;
    function set_type(v:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo._internal.reflect.Reflect_Type_.Type_ {
        this.type = v;
        return v;
    }
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = (v : stdgo.Error);
        return v;
    }
    public var _sourceFunc(get, set) : String;
    function get__sourceFunc():String return this._sourceFunc;
    function set__sourceFunc(v:String):String {
        this._sourceFunc = (v : stdgo.GoString);
        return v;
    }
    public function new(?type:stdgo._internal.reflect.Reflect_Type_.Type_, ?err:stdgo.Error, ?_sourceFunc:String) this = new stdgo._internal.encoding.json.Json_MarshalerError.MarshalerError(type, (err : stdgo.Error), (_sourceFunc : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
