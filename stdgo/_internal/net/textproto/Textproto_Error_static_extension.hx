package stdgo._internal.net.textproto;
@:keep @:allow(stdgo._internal.net.textproto.Textproto.Error_asInterface) class Error_static_extension {
    @:keep
    static public function error( _e:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Error.Error>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Error.Error> = _e;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%03d %s" : stdgo.GoString), stdgo.Go.toInterface(_e.code), stdgo.Go.toInterface(_e.msg))?.__copy__();
    }
}
