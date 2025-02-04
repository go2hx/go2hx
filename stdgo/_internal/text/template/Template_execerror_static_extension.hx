package stdgo._internal.text.template;
@:keep @:allow(stdgo._internal.text.template.Template.ExecError_asInterface) class ExecError_static_extension {
    @:keep
    @:tdfield
    static public function unwrap( _e:stdgo._internal.text.template.Template_execerror.ExecError):stdgo.Error {
        @:recv var _e:stdgo._internal.text.template.Template_execerror.ExecError = _e?.__copy__();
        return _e.err;
    }
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.text.template.Template_execerror.ExecError):stdgo.GoString {
        @:recv var _e:stdgo._internal.text.template.Template_execerror.ExecError = _e?.__copy__();
        return _e.err.error()?.__copy__();
    }
}
