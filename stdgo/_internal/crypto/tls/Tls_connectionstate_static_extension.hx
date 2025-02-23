package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.ConnectionState_asInterface) class ConnectionState_static_extension {
    @:keep
    @:tdfield
    static public function exportKeyingMaterial( _cs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState>, _label:stdgo.GoString, _context:stdgo.Slice<stdgo.GoUInt8>, _length:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _cs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState> = _cs;
        return (@:checkr _cs ?? throw "null pointer dereference")._ekm(_label?.__copy__(), _context, _length);
    }
}
