package stdgo._internal.mime.multipart;
@:keep @:allow(stdgo._internal.mime.multipart.Multipart.Form_asInterface) class Form_static_extension {
    @:keep
    @:tdfield
    static public function removeAll( _f:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form> = _f;
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L242"
        for (__0 => _fhs in (@:checkr _f ?? throw "null pointer dereference").file) {
            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L243"
            for (__1 => _fh in _fhs) {
                //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L244"
                if ((@:checkr _fh ?? throw "null pointer dereference")._tmpfile != ((stdgo.Go.str() : stdgo.GoString))) {
                    var _e = (stdgo._internal.os.Os_remove.remove((@:checkr _fh ?? throw "null pointer dereference")._tmpfile?.__copy__()) : stdgo.Error);
                    //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L246"
                    if (((_e != null && !stdgo._internal.errors.Errors_is_.is_(_e, stdgo._internal.os.Os_errnotexist.errNotExist) : Bool) && (_err == null) : Bool)) {
                        _err = _e;
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L252"
        return _err;
    }
}
