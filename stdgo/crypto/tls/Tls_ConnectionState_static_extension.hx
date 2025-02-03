package stdgo.crypto.tls;
class ConnectionState_static_extension {
    static public function exportKeyingMaterial(_cs:ConnectionState, _label:String, _context:Array<std.UInt>, _length:StdTypes.Int):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _cs = (_cs : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState>);
        final _label = (_label : stdgo.GoString);
        final _context = ([for (i in _context) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _length = (_length : stdgo.GoInt);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_ConnectionState_static_extension.ConnectionState_static_extension.exportKeyingMaterial(_cs, _label, _context, _length);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
