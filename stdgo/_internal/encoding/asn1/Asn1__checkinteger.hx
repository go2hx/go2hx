package stdgo._internal.encoding.asn1;
function _checkInteger(_bytes:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L80"
        if ((_bytes.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L81"
            return stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError(("empty integer" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L83"
        if ((_bytes.length) == ((1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L84"
            return (null : stdgo.Error);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L86"
        if (((((_bytes[(0 : stdgo.GoInt)] == (0 : stdgo.GoUInt8)) && ((_bytes[(1 : stdgo.GoInt)] & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == (0 : stdgo.GoUInt8)) : Bool)) || (((_bytes[(0 : stdgo.GoInt)] == (255 : stdgo.GoUInt8)) && ((_bytes[(1 : stdgo.GoInt)] & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == (128 : stdgo.GoUInt8)) : Bool)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L87"
            return stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError(("integer not minimally-encoded" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L89"
        return (null : stdgo.Error);
    }
