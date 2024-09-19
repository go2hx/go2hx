package _internal.vendor.golang_dot_org.x.crypto.internal.poly1305;
function _initialize(_key:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>, _m:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_macState.T_macState>):Void {
        _m._r[(0 : stdgo.GoInt)] = (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint64((_key.__slice__((0 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) & (1152921487695413247i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _m._r[(1 : stdgo.GoInt)] = (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint64((_key.__slice__((8 : stdgo.GoInt), (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) & (1152921487695413244i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _m._s[(0 : stdgo.GoInt)] = stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint64((_key.__slice__((16 : stdgo.GoInt), (24 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        _m._s[(1 : stdgo.GoInt)] = stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint64((_key.__slice__((24 : stdgo.GoInt), (32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
    }
