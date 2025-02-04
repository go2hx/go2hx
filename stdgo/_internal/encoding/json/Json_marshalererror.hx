package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_marshalererror_static_extension.MarshalerError_static_extension) class MarshalerError {
    public var type : stdgo._internal.reflect.Reflect_type_.Type_ = (null : stdgo._internal.reflect.Reflect_type_.Type_);
    public var err : stdgo.Error = (null : stdgo.Error);
    public var _sourceFunc : stdgo.GoString = "";
    public function new(?type:stdgo._internal.reflect.Reflect_type_.Type_, ?err:stdgo.Error, ?_sourceFunc:stdgo.GoString) {
        if (type != null) this.type = type;
        if (err != null) this.err = err;
        if (_sourceFunc != null) this._sourceFunc = _sourceFunc;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new MarshalerError(type, err, _sourceFunc);
    }
}
