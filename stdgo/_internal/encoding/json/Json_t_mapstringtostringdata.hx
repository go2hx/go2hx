package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_mapstringtostringdata_static_extension.T_mapStringToStringData_static_extension) class T_mapStringToStringData {
    @:tag("`json:\"data\"`")
    public var data : stdgo.GoMap<stdgo.GoString, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
    public function new(?data:stdgo.GoMap<stdgo.GoString, stdgo.GoString>) {
        if (data != null) this.data = data;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_mapStringToStringData(data);
    }
}
