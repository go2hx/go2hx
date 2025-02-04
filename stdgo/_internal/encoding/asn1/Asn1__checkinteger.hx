package stdgo._internal.encoding.asn1;
function _checkInteger(_bytes:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        if ((_bytes.length) == ((0 : stdgo.GoInt))) {
            return stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError(("empty integer" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError));
        };
        if ((_bytes.length) == ((1 : stdgo.GoInt))) {
            return (null : stdgo.Error);
        };
        if (((((_bytes[(0 : stdgo.GoInt)] == (0 : stdgo.GoUInt8)) && ((_bytes[(1 : stdgo.GoInt)] & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == (0 : stdgo.GoUInt8)) : Bool)) || (((_bytes[(0 : stdgo.GoInt)] == (255 : stdgo.GoUInt8)) && ((_bytes[(1 : stdgo.GoInt)] & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == (128 : stdgo.GoUInt8)) : Bool)) : Bool)) {
            return stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError(("integer not minimally-encoded" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError));
        };
        return (null : stdgo.Error);
    }
