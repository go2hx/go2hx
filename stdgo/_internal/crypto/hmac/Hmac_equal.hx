package stdgo._internal.crypto.hmac;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.subtle.Subtle;
function equal(_mac1:stdgo.Slice<stdgo.GoUInt8>, _mac2:stdgo.Slice<stdgo.GoUInt8>):Bool {
        return stdgo._internal.crypto.subtle.Subtle_constantTimeCompare.constantTimeCompare(_mac1, _mac2) == ((1 : stdgo.GoInt));
    }
