package stdgo._internal.go.internal.gccgoimporter;
@:keep @:allow(stdgo._internal.go.internal.gccgoimporter.Gccgoimporter.T_importError_asInterface) class T_importError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_importerror.T_importError):stdgo.GoString {
        @:recv var _e:stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_importerror.T_importError = _e?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L79"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("import error %s (byte offset = %d): %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_e._pos)), stdgo.Go.toInterface(_e._pos.offset), stdgo.Go.toInterface(_e._err))?.__copy__();
    }
}
