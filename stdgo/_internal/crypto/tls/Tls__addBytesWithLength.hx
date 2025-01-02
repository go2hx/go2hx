package stdgo._internal.crypto.tls;
function _addBytesWithLength(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>, _v:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):Void {
        @:check2r _b.addValue(stdgo.Go.asInterface((function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):stdgo.Error {
            if ((_v.length) != (_n)) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("invalid value length: expected %d, got %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_v.length)));
            };
            @:check2r _b.addBytes(_v);
            return (null : stdgo.Error);
        } : stdgo._internal.crypto.tls.Tls_T_marshalingFunction.T_marshalingFunction)));
    }
