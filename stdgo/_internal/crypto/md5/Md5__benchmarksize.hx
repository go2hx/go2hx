package stdgo._internal.crypto.md5;
function _benchmarkSize(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _size:stdgo.GoInt, _unaligned:Bool):Void {
        //"file:///home/runner/.go/go1.21.3/src/crypto/md5/md5_test.go#L233"
        _b.setBytes((_size : stdgo.GoInt64));
        var _buf = stdgo._internal.crypto.md5.Md5__buf._buf;
        //"file:///home/runner/.go/go1.21.3/src/crypto/md5/md5_test.go#L235"
        if (_unaligned) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/md5/md5_test.go#L236"
            if (((new stdgo.GoUIntptr((stdgo.Go.toInterface(stdgo.Go.pointer(_buf[(0 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer)) : stdgo.GoUIntptr) & (new stdgo.GoUIntptr(3) : stdgo.GoUIntptr) : stdgo.GoUIntptr) == ((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr))) {
                _buf = (_buf.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/md5/md5_test.go#L240"
        _b.resetTimer();
        //"file:///home/runner/.go/go1.21.3/src/crypto/md5/md5_test.go#L241"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/md5/md5_test.go#L242"
                stdgo._internal.crypto.md5.Md5__bench._bench.reset();
//"file:///home/runner/.go/go1.21.3/src/crypto/md5/md5_test.go#L243"
                stdgo._internal.crypto.md5.Md5__bench._bench.write((_buf.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt8>));
//"file:///home/runner/.go/go1.21.3/src/crypto/md5/md5_test.go#L244"
                stdgo._internal.crypto.md5.Md5__bench._bench.sum((stdgo._internal.crypto.md5.Md5__sum._sum.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                _i++;
            };
        };
    }
