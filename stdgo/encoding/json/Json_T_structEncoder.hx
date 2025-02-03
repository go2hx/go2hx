package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_structEncoder_static_extension) abstract T_structEncoder(stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder) from stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder to stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder {
    public var _fields(get, set) : T_structFields;
    function get__fields():T_structFields return this._fields;
    function set__fields(v:T_structFields):T_structFields {
        this._fields = v;
        return v;
    }
    public function new(?_fields:T_structFields) this = new stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder(_fields);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
