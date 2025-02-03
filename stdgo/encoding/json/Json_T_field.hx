package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_field_static_extension) abstract T_field(stdgo._internal.encoding.json.Json_T_field.T_field) from stdgo._internal.encoding.json.Json_T_field.T_field to stdgo._internal.encoding.json.Json_T_field.T_field {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _nameBytes(get, set) : Array<std.UInt>;
    function get__nameBytes():Array<std.UInt> return [for (i in this._nameBytes) i];
    function set__nameBytes(v:Array<std.UInt>):Array<std.UInt> {
        this._nameBytes = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _nameNonEsc(get, set) : String;
    function get__nameNonEsc():String return this._nameNonEsc;
    function set__nameNonEsc(v:String):String {
        this._nameNonEsc = (v : stdgo.GoString);
        return v;
    }
    public var _nameEscHTML(get, set) : String;
    function get__nameEscHTML():String return this._nameEscHTML;
    function set__nameEscHTML(v:String):String {
        this._nameEscHTML = (v : stdgo.GoString);
        return v;
    }
    public var _tag(get, set) : Bool;
    function get__tag():Bool return this._tag;
    function set__tag(v:Bool):Bool {
        this._tag = v;
        return v;
    }
    public var _index(get, set) : Array<StdTypes.Int>;
    function get__index():Array<StdTypes.Int> return [for (i in this._index) i];
    function set__index(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._index = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var _typ(get, set) : stdgo._internal.reflect.Reflect_Type_.Type_;
    function get__typ():stdgo._internal.reflect.Reflect_Type_.Type_ return this._typ;
    function set__typ(v:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo._internal.reflect.Reflect_Type_.Type_ {
        this._typ = v;
        return v;
    }
    public var _omitEmpty(get, set) : Bool;
    function get__omitEmpty():Bool return this._omitEmpty;
    function set__omitEmpty(v:Bool):Bool {
        this._omitEmpty = v;
        return v;
    }
    public var _quoted(get, set) : Bool;
    function get__quoted():Bool return this._quoted;
    function set__quoted(v:Bool):Bool {
        this._quoted = v;
        return v;
    }
    public var _encoder(get, set) : T_encoderFunc;
    function get__encoder():T_encoderFunc return this._encoder;
    function set__encoder(v:T_encoderFunc):T_encoderFunc {
        this._encoder = v;
        return v;
    }
    public function new(?_name:String, ?_nameBytes:Array<std.UInt>, ?_nameNonEsc:String, ?_nameEscHTML:String, ?_tag:Bool, ?_index:Array<StdTypes.Int>, ?_typ:stdgo._internal.reflect.Reflect_Type_.Type_, ?_omitEmpty:Bool, ?_quoted:Bool, ?_encoder:T_encoderFunc) this = new stdgo._internal.encoding.json.Json_T_field.T_field((_name : stdgo.GoString), ([for (i in _nameBytes) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_nameNonEsc : stdgo.GoString), (_nameEscHTML : stdgo.GoString), _tag, ([for (i in _index) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>), _typ, _omitEmpty, _quoted, _encoder);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
