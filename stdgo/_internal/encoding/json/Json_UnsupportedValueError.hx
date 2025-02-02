package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_UnsupportedValueError_static_extension.UnsupportedValueError_static_extension) class UnsupportedValueError {
    public var value : stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
    public var str : stdgo.GoString = "";
    public function new(?value:stdgo._internal.reflect.Reflect_Value.Value, ?str:stdgo.GoString) {
        if (value != null) this.value = value;
        if (str != null) this.str = str;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new UnsupportedValueError(value, str);
    }
}
