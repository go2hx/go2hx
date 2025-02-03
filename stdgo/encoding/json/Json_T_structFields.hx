package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_structFields_static_extension) abstract T_structFields(stdgo._internal.encoding.json.Json_T_structFields.T_structFields) from stdgo._internal.encoding.json.Json_T_structFields.T_structFields to stdgo._internal.encoding.json.Json_T_structFields.T_structFields {
    public var _list(get, set) : Array<T_field>;
    function get__list():Array<T_field> return [for (i in this._list) i];
    function set__list(v:Array<T_field>):Array<T_field> {
        this._list = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.json.Json_T_field.T_field>);
        return v;
    }
    public var _byExactName(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>>;
    function get__byExactName():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>> return this._byExactName;
    function set__byExactName(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>> {
        this._byExactName = (v : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>>);
        return v;
    }
    public var _byFoldedName(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>>;
    function get__byFoldedName():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>> return this._byFoldedName;
    function set__byFoldedName(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>> {
        this._byFoldedName = (v : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>>);
        return v;
    }
    public function new(?_list:Array<T_field>, ?_byExactName:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>>, ?_byFoldedName:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>>) this = new stdgo._internal.encoding.json.Json_T_structFields.T_structFields(([for (i in _list) i] : stdgo.Slice<stdgo._internal.encoding.json.Json_T_field.T_field>), (_byExactName : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>>), (_byFoldedName : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
