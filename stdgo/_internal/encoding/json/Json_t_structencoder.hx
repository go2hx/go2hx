package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_structencoder_static_extension.T_structEncoder_static_extension) class T_structEncoder {
    public var _fields : stdgo._internal.encoding.json.Json_t_structfields.T_structFields = ({} : stdgo._internal.encoding.json.Json_t_structfields.T_structFields);
    public function new(?_fields:stdgo._internal.encoding.json.Json_t_structfields.T_structFields) {
        if (_fields != null) this._fields = _fields;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_structEncoder(_fields);
    }
}
