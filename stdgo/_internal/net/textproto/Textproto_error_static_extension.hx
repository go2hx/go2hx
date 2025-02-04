package stdgo._internal.net.textproto;
@:keep @:allow(stdgo._internal.net.textproto.Textproto.Error_asInterface) class Error_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.net.textproto.Textproto_error.Error>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.textproto.Textproto_error.Error> = _e;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%03d %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").code), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").msg))?.__copy__();
    }
}
