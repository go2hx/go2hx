package stdgo._internal.crypto.md5;
function _benchmarkSize(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _size:stdgo.GoInt, _unaligned:Bool):Void {
        @:check2r _b.setBytes((_size : stdgo.GoInt64));
        var _buf = stdgo._internal.crypto.md5.Md5__buf._buf;
        if (_unaligned) {
            if (((new stdgo.GoUIntptr((stdgo.Go.toInterface(stdgo.Go.pointer(_buf[(0 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer)) : stdgo.GoUIntptr) & (new stdgo.GoUIntptr(3) : stdgo.GoUIntptr) : stdgo.GoUIntptr) == ((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr))) {
                _buf = (_buf.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        @:check2r _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                stdgo._internal.crypto.md5.Md5__bench._bench.reset();
stdgo._internal.crypto.md5.Md5__bench._bench.write((_buf.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt8>));
stdgo._internal.crypto.md5.Md5__bench._bench.sum((stdgo._internal.crypto.md5.Md5__sum._sum.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                _i++;
            };
        };
    }
