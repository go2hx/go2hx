package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.QUICEncryptionLevel_asInterface) class QUICEncryptionLevel_static_extension {
    @:keep
    @:tdfield
    static public function string( _l:stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel):stdgo.GoString {
        @:recv var _l:stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel = _l;
        {
            final __value__ = _l;
            if (__value__ == ((0 : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel))) {
                return ("Initial" : stdgo.GoString);
            } else if (__value__ == ((1 : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel))) {
                return ("Early" : stdgo.GoString);
            } else if (__value__ == ((2 : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel))) {
                return ("Handshake" : stdgo.GoString);
            } else if (__value__ == ((3 : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel))) {
                return ("Application" : stdgo.GoString);
            } else {
                return stdgo._internal.fmt.Fmt_sprintf.sprintf(("QUICEncryptionLevel(%v)" : stdgo.GoString), stdgo.Go.toInterface((_l : stdgo.GoInt)))?.__copy__();
            };
        };
    }
}
