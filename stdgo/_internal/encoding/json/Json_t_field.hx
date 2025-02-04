package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_field_static_extension.T_field_static_extension) class T_field {
    public var _name : stdgo.GoString = "";
    public var _nameBytes : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _nameNonEsc : stdgo.GoString = "";
    public var _nameEscHTML : stdgo.GoString = "";
    public var _tag : Bool = false;
    public var _index : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _typ : stdgo._internal.reflect.Reflect_type_.Type_ = (null : stdgo._internal.reflect.Reflect_type_.Type_);
    public var _omitEmpty : Bool = false;
    public var _quoted : Bool = false;
    public var _encoder : stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc = (null : stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc);
    public function new(?_name:stdgo.GoString, ?_nameBytes:stdgo.Slice<stdgo.GoUInt8>, ?_nameNonEsc:stdgo.GoString, ?_nameEscHTML:stdgo.GoString, ?_tag:Bool, ?_index:stdgo.Slice<stdgo.GoInt>, ?_typ:stdgo._internal.reflect.Reflect_type_.Type_, ?_omitEmpty:Bool, ?_quoted:Bool, ?_encoder:stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc) {
        if (_name != null) this._name = _name;
        if (_nameBytes != null) this._nameBytes = _nameBytes;
        if (_nameNonEsc != null) this._nameNonEsc = _nameNonEsc;
        if (_nameEscHTML != null) this._nameEscHTML = _nameEscHTML;
        if (_tag != null) this._tag = _tag;
        if (_index != null) this._index = _index;
        if (_typ != null) this._typ = _typ;
        if (_omitEmpty != null) this._omitEmpty = _omitEmpty;
        if (_quoted != null) this._quoted = _quoted;
        if (_encoder != null) this._encoder = _encoder;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_field(_name, _nameBytes, _nameNonEsc, _nameEscHTML, _tag, _index, _typ, _omitEmpty, _quoted, _encoder);
    }
}
