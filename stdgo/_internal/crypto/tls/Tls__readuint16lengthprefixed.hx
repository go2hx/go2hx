package stdgo._internal.crypto.tls;
function _readUint16LengthPrefixed(_s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _out:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>):Bool {
        return @:check2r _s.readUint16LengthPrefixed((_out : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>));
    }
