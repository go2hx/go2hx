package _internal.vendor.golang_dot_org.x.crypto.chacha20poly1305;
function _writeUint64(_p:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_MAC.MAC>, _n:stdgo.GoInt):Void {
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(8, 8, ...[for (i in 0 ... 8) (0 : stdgo.GoUInt8)]);
        stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.putUint64((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_n : stdgo.GoUInt64));
        _p.write((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
    }
