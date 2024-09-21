package _internal.vendor.golang_dot_org.x.crypto.chacha20poly1305;
function _writeWithPadding(_p:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_MAC.MAC>, _b:stdgo.Slice<stdgo.GoUInt8>):Void {
        _p.write(_b);
        {
            var _rem = ((_b.length) % (16 : stdgo.GoInt) : stdgo.GoInt);
            if (_rem != ((0 : stdgo.GoInt))) {
                var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[for (i in 0 ... 16) (0 : stdgo.GoUInt8)]);
                var _padLen = ((16 : stdgo.GoInt) - _rem : stdgo.GoInt);
                _p.write((_buf.__slice__(0, _padLen) : stdgo.Slice<stdgo.GoUInt8>));
            };
        };
    }
