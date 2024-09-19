package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_headerSorter_static_extension.T_headerSorter_static_extension) class T_headerSorter {
    public var _kvs : stdgo.Slice<stdgo._internal.net.http.Http_T_keyValues.T_keyValues> = (null : stdgo.Slice<stdgo._internal.net.http.Http_T_keyValues.T_keyValues>);
    public function new(?_kvs:stdgo.Slice<stdgo._internal.net.http.Http_T_keyValues.T_keyValues>) {
        if (_kvs != null) this._kvs = _kvs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_headerSorter(_kvs);
    }
}
