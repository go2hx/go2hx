package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.RecordHeaderError_asInterface) class RecordHeaderError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.crypto.tls.Tls_recordheadererror.RecordHeaderError):stdgo.GoString {
        @:recv var _e:stdgo._internal.crypto.tls.Tls_recordheadererror.RecordHeaderError = _e?.__copy__();
        return (("tls: " : stdgo.GoString) + _e.msg?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
