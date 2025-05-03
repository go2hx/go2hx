package stdgo._internal.crypto.sha256;
function _benchmarkSize(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _size:stdgo.GoInt):Void {
        var _sum = (new stdgo.Slice<stdgo.GoUInt8>((stdgo._internal.crypto.sha256.Sha256__bench._bench.size() : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L333"
        _b.run(("New" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L334"
            _b.reportAllocs();
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L335"
            _b.setBytes((_size : stdgo.GoInt64));
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L336"
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L337"
                    stdgo._internal.crypto.sha256.Sha256__bench._bench.reset();
//"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L338"
                    stdgo._internal.crypto.sha256.Sha256__bench._bench.write((stdgo._internal.crypto.sha256.Sha256__buf._buf.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt8>));
//"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L339"
                    stdgo._internal.crypto.sha256.Sha256__bench._bench.sum((_sum.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _i++;
                };
            };
        });
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L342"
        _b.run(("Sum224" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L343"
            _b.reportAllocs();
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L344"
            _b.setBytes((_size : stdgo.GoInt64));
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L345"
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L346"
                    stdgo._internal.crypto.sha256.Sha256_sum224.sum224((stdgo._internal.crypto.sha256.Sha256__buf._buf.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt8>));
                    _i++;
                };
            };
        });
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L349"
        _b.run(("Sum256" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L350"
            _b.reportAllocs();
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L351"
            _b.setBytes((_size : stdgo.GoInt64));
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L352"
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L353"
                    stdgo._internal.crypto.sha256.Sha256_sum256.sum256((stdgo._internal.crypto.sha256.Sha256__buf._buf.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt8>));
                    _i++;
                };
            };
        });
    }
