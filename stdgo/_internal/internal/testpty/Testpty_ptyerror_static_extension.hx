package stdgo._internal.internal.testpty;
@:keep @:allow(stdgo._internal.internal.testpty.Testpty.PtyError_asInterface) class PtyError_static_extension {
    @:keep
    @:tdfield
    static public function unwrap( _e:stdgo.Ref<stdgo._internal.internal.testpty.Testpty_ptyerror.PtyError>):stdgo.Error {
        @:recv var _e:stdgo.Ref<stdgo._internal.internal.testpty.Testpty_ptyerror.PtyError> = _e;
        return (@:checkr _e ?? throw "null pointer dereference").errno;
    }
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.internal.testpty.Testpty_ptyerror.PtyError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.internal.testpty.Testpty_ptyerror.PtyError> = _e;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s: %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").funcName), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").errorString))?.__copy__();
    }
}
