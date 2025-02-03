package stdgo.errors;
class T_joinError_static_extension {
    static public function unwrap(_e:T_joinError):Array<stdgo.Error> {
        final _e = (_e : stdgo.Ref<stdgo._internal.errors.Errors_T_joinError.T_joinError>);
        return [for (i in stdgo._internal.errors.Errors_T_joinError_static_extension.T_joinError_static_extension.unwrap(_e)) i];
    }
    static public function error(_e:T_joinError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.errors.Errors_T_joinError.T_joinError>);
        return stdgo._internal.errors.Errors_T_joinError_static_extension.T_joinError_static_extension.error(_e);
    }
}
