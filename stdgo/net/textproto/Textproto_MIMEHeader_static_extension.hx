package stdgo.net.textproto;
class MIMEHeader_static_extension {
    static public function del(_h:MIMEHeader, _key:String):Void {
        final _key = (_key : stdgo.GoString);
        stdgo._internal.net.textproto.Textproto_MIMEHeader_static_extension.MIMEHeader_static_extension.del(_h, _key);
    }
    static public function values(_h:MIMEHeader, _key:String):Array<String> {
        final _key = (_key : stdgo.GoString);
        return [for (i in stdgo._internal.net.textproto.Textproto_MIMEHeader_static_extension.MIMEHeader_static_extension.values(_h, _key)) i];
    }
    static public function get(_h:MIMEHeader, _key:String):String {
        final _key = (_key : stdgo.GoString);
        return stdgo._internal.net.textproto.Textproto_MIMEHeader_static_extension.MIMEHeader_static_extension.get(_h, _key);
    }
    static public function set(_h:MIMEHeader, _key:String, _value:String):Void {
        final _key = (_key : stdgo.GoString);
        final _value = (_value : stdgo.GoString);
        stdgo._internal.net.textproto.Textproto_MIMEHeader_static_extension.MIMEHeader_static_extension.set(_h, _key, _value);
    }
    static public function add(_h:MIMEHeader, _key:String, _value:String):Void {
        final _key = (_key : stdgo.GoString);
        final _value = (_value : stdgo.GoString);
        stdgo._internal.net.textproto.Textproto_MIMEHeader_static_extension.MIMEHeader_static_extension.add(_h, _key, _value);
    }
}
