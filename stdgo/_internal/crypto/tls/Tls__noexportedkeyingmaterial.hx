package stdgo._internal.crypto.tls;
function _noExportedKeyingMaterial(_label:stdgo.GoString, _context:stdgo.Slice<stdgo.GoUInt8>, _length:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("crypto/tls: ExportKeyingMaterial is unavailable when renegotiation is enabled" : stdgo.GoString)) };
    }
