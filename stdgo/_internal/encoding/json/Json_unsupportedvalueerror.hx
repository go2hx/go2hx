package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_unsupportedvalueerror_static_extension.UnsupportedValueError_static_extension) class UnsupportedValueError {
    public var value : stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
    public var str : stdgo.GoString = "";
    public function new(?value:stdgo._internal.reflect.Reflect_value.Value, ?str:stdgo.GoString) {
        if (value != null) this.value = value;
        if (str != null) this.str = str;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new UnsupportedValueError(value, str);
    }
}
