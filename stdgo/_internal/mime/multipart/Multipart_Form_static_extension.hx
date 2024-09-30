package stdgo._internal.mime.multipart;
@:keep @:allow(stdgo._internal.mime.multipart.Multipart.Form_asInterface) class Form_static_extension {
    @:keep
    static public function removeAll( _f:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Form.Form>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Form.Form> = _f;
        var _err:stdgo.Error = (null : stdgo.Error);
        for (__0 => _fhs in _f.file) {
            for (__1 => _fh in _fhs) {
                if (_fh._tmpfile != (stdgo.Go.str())) {
                    var _e = (stdgo._internal.os.Os_remove.remove(_fh._tmpfile?.__copy__()) : stdgo.Error);
                    if (((_e != null && !stdgo._internal.errors.Errors_is_.is_(_e, stdgo._internal.os.Os_errNotExist.errNotExist) : Bool) && (_err == null) : Bool)) {
                        _err = _e;
                    };
                };
            };
        };
        return _err;
    }
}
