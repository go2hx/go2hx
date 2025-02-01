package stdgo._internal.testing.slogtest;
import stdgo._internal.log.slog.Slog;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.runtime.Runtime;
@:keep @:allow(stdgo._internal.testing.slogtest.Slogtest.T_replace_asInterface) class T_replace_static_extension {
    @:keep
    @:tdfield
    static public function string( _r:stdgo.Ref<stdgo._internal.testing.slogtest.Slogtest_T_replace.T_replace>):stdgo.GoString {
        @:recv var _r:stdgo.Ref<stdgo._internal.testing.slogtest.Slogtest_T_replace.T_replace> = _r;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("<replace(%v)>" : stdgo.GoString), (@:checkr _r ?? throw "null pointer dereference")._v)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function logValue( _r:stdgo.Ref<stdgo._internal.testing.slogtest.Slogtest_T_replace.T_replace>):stdgo._internal.log.slog.Slog_Value.Value {
        @:recv var _r:stdgo.Ref<stdgo._internal.testing.slogtest.Slogtest_T_replace.T_replace> = _r;
        return stdgo._internal.log.slog.Slog_anyValue.anyValue((@:checkr _r ?? throw "null pointer dereference")._v)?.__copy__();
    }
}
