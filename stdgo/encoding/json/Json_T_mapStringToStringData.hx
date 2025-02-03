package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_mapStringToStringData_static_extension) abstract T_mapStringToStringData(stdgo._internal.encoding.json.Json_T_mapStringToStringData.T_mapStringToStringData) from stdgo._internal.encoding.json.Json_T_mapStringToStringData.T_mapStringToStringData to stdgo._internal.encoding.json.Json_T_mapStringToStringData.T_mapStringToStringData {
    public var data(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>;
    function get_data():stdgo.GoMap<stdgo.GoString, stdgo.GoString> return this.data;
    function set_data(v:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):stdgo.GoMap<stdgo.GoString, stdgo.GoString> {
        this.data = (v : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        return v;
    }
    public function new(?data:stdgo.GoMap<stdgo.GoString, stdgo.GoString>) this = new stdgo._internal.encoding.json.Json_T_mapStringToStringData.T_mapStringToStringData((data : stdgo.GoMap<stdgo.GoString, stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
