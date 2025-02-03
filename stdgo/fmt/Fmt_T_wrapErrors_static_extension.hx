package stdgo.fmt;
class T_wrapErrors_static_extension {
    static public function unwrap(_e:T_wrapErrors):Array<stdgo.Error> {
        final _e = (_e : stdgo.Ref<stdgo._internal.fmt.Fmt_T_wrapErrors.T_wrapErrors>);
        return [for (i in stdgo._internal.fmt.Fmt_T_wrapErrors_static_extension.T_wrapErrors_static_extension.unwrap(_e)) i];
    }
    static public function error(_e:T_wrapErrors):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.fmt.Fmt_T_wrapErrors.T_wrapErrors>);
        return stdgo._internal.fmt.Fmt_T_wrapErrors_static_extension.T_wrapErrors_static_extension.error(_e);
    }
}
