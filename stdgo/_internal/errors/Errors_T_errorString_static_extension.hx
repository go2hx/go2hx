package stdgo._internal.errors;
import stdgo._internal.internal.reflectlite.Reflectlite;
@:keep @:allow(stdgo._internal.errors.Errors.T_errorString_asInterface) class T_errorString_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.errors.Errors_T_errorString.T_errorString>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.errors.Errors_T_errorString.T_errorString> = _e;
        return (@:checkr _e ?? throw "null pointer dereference")._s?.__copy__();
    }
}
