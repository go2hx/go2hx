package stdgo._internal.text.template;
@:keep @:allow(stdgo._internal.text.template.Template.ExecError_asInterface) class ExecError_static_extension {
    @:keep
    static public function unwrap( _e:stdgo._internal.text.template.Template_ExecError.ExecError):stdgo.Error {
        @:recv var _e:stdgo._internal.text.template.Template_ExecError.ExecError = _e?.__copy__();
        return _e.err;
    }
    @:keep
    static public function error( _e:stdgo._internal.text.template.Template_ExecError.ExecError):stdgo.GoString {
        @:recv var _e:stdgo._internal.text.template.Template_ExecError.ExecError = _e?.__copy__();
        return _e.err.error()?.__copy__();
    }
}