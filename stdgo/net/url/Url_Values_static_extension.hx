package stdgo.net.url;
class Values_static_extension {
    static public function encode(_v:Values):String {
        return stdgo._internal.net.url.Url_Values_static_extension.Values_static_extension.encode(_v);
    }
    static public function has(_v:Values, _key:String):Bool {
        final _key = (_key : stdgo.GoString);
        return stdgo._internal.net.url.Url_Values_static_extension.Values_static_extension.has(_v, _key);
    }
    static public function del(_v:Values, _key:String):Void {
        final _key = (_key : stdgo.GoString);
        stdgo._internal.net.url.Url_Values_static_extension.Values_static_extension.del(_v, _key);
    }
    static public function add(_v:Values, _key:String, _value:String):Void {
        final _key = (_key : stdgo.GoString);
        final _value = (_value : stdgo.GoString);
        stdgo._internal.net.url.Url_Values_static_extension.Values_static_extension.add(_v, _key, _value);
    }
    static public function set(_v:Values, _key:String, _value:String):Void {
        final _key = (_key : stdgo.GoString);
        final _value = (_value : stdgo.GoString);
        stdgo._internal.net.url.Url_Values_static_extension.Values_static_extension.set(_v, _key, _value);
    }
    static public function get(_v:Values, _key:String):String {
        final _key = (_key : stdgo.GoString);
        return stdgo._internal.net.url.Url_Values_static_extension.Values_static_extension.get(_v, _key);
    }
}
