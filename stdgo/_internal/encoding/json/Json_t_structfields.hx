package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_structfields_static_extension.T_structFields_static_extension) class T_structFields {
    public var _list : stdgo.Slice<stdgo._internal.encoding.json.Json_t_field.T_field> = (null : stdgo.Slice<stdgo._internal.encoding.json.Json_t_field.T_field>);
    public var _byExactName : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>>);
    public var _byFoldedName : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>>);
    public function new(?_list:stdgo.Slice<stdgo._internal.encoding.json.Json_t_field.T_field>, ?_byExactName:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>>, ?_byFoldedName:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>>) {
        if (_list != null) this._list = _list;
        if (_byExactName != null) this._byExactName = _byExactName;
        if (_byFoldedName != null) this._byFoldedName = _byFoldedName;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_structFields(_list, _byExactName, _byFoldedName);
    }
}
