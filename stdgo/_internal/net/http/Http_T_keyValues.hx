package stdgo._internal.net.http;
@:structInit class T_keyValues {
    public var _key : stdgo.GoString = "";
    public var _values : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?_key:stdgo.GoString, ?_values:stdgo.Slice<stdgo.GoString>) {
        if (_key != null) this._key = _key;
        if (_values != null) this._values = _values;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_keyValues(_key, _values);
    }
}
