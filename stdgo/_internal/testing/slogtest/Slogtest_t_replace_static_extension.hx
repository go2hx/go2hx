package stdgo._internal.testing.slogtest;
@:keep @:allow(stdgo._internal.testing.slogtest.Slogtest.T_replace_asInterface) class T_replace_static_extension {
    @:keep
    @:tdfield
    static public function string( _r:stdgo.Ref<stdgo._internal.testing.slogtest.Slogtest_t_replace.T_replace>):stdgo.GoString {
        @:recv var _r:stdgo.Ref<stdgo._internal.testing.slogtest.Slogtest_t_replace.T_replace> = _r;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("<replace(%v)>" : stdgo.GoString), (@:checkr _r ?? throw "null pointer dereference")._v)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function logValue( _r:stdgo.Ref<stdgo._internal.testing.slogtest.Slogtest_t_replace.T_replace>):stdgo._internal.log.slog.Slog_value.Value {
        @:recv var _r:stdgo.Ref<stdgo._internal.testing.slogtest.Slogtest_t_replace.T_replace> = _r;
        return stdgo._internal.log.slog.Slog_anyvalue.anyValue((@:checkr _r ?? throw "null pointer dereference")._v)?.__copy__();
    }
}
