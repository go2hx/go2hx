package stdgo.net.http;
class Header_static_extension {
    static public function writeSubset(_h:Header, _w:stdgo._internal.io.Io_Writer.Writer, _exclude:stdgo.GoMap<stdgo.GoString, Bool>):stdgo.Error {
        final _exclude = (_exclude : stdgo.GoMap<stdgo.GoString, Bool>);
        return stdgo._internal.net.http.Http_Header_static_extension.Header_static_extension.writeSubset(_h, _w, _exclude);
    }
    static public function clone(_h:Header):Header {
        return stdgo._internal.net.http.Http_Header_static_extension.Header_static_extension.clone(_h);
    }
    static public function write(_h:Header, _w:stdgo._internal.io.Io_Writer.Writer):stdgo.Error {
        return stdgo._internal.net.http.Http_Header_static_extension.Header_static_extension.write(_h, _w);
    }
    static public function del(_h:Header, _key:String):Void {
        final _key = (_key : stdgo.GoString);
        stdgo._internal.net.http.Http_Header_static_extension.Header_static_extension.del(_h, _key);
    }
    static public function values(_h:Header, _key:String):Array<String> {
        final _key = (_key : stdgo.GoString);
        return [for (i in stdgo._internal.net.http.Http_Header_static_extension.Header_static_extension.values(_h, _key)) i];
    }
    static public function get(_h:Header, _key:String):String {
        final _key = (_key : stdgo.GoString);
        return stdgo._internal.net.http.Http_Header_static_extension.Header_static_extension.get(_h, _key);
    }
    static public function set(_h:Header, _key:String, _value:String):Void {
        final _key = (_key : stdgo.GoString);
        final _value = (_value : stdgo.GoString);
        stdgo._internal.net.http.Http_Header_static_extension.Header_static_extension.set(_h, _key, _value);
    }
    static public function add(_h:Header, _key:String, _value:String):Void {
        final _key = (_key : stdgo.GoString);
        final _value = (_value : stdgo.GoString);
        stdgo._internal.net.http.Http_Header_static_extension.Header_static_extension.add(_h, _key, _value);
    }
}
