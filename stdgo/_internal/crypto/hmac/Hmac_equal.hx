package stdgo._internal.crypto.hmac;
function equal(_mac1:stdgo.Slice<stdgo.GoUInt8>, _mac2:stdgo.Slice<stdgo.GoUInt8>):Bool {
        return stdgo._internal.crypto.subtle.Subtle_constanttimecompare.constantTimeCompare(_mac1, _mac2) == ((1 : stdgo.GoInt));
    }
