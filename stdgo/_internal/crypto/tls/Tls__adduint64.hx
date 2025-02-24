package stdgo._internal.crypto.tls;
function _addUint64(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>, _v:stdgo.GoUInt64):Void {
        @:check2r _b.addUint32(((_v >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32));
        @:check2r _b.addUint32((_v : stdgo.GoUInt32));
    }
