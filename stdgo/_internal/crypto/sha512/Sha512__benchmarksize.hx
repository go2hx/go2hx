package stdgo._internal.crypto.sha512;
function _benchmarkSize(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _size:stdgo.GoInt):Void {
        var _sum = (new stdgo.Slice<stdgo.GoUInt8>((stdgo._internal.crypto.sha512.Sha512__bench._bench.size() : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512_test.go#L917"
        _b.run(("New" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512_test.go#L918"
            _b.reportAllocs();
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512_test.go#L919"
            _b.setBytes((_size : stdgo.GoInt64));
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512_test.go#L920"
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512_test.go#L921"
                    stdgo._internal.crypto.sha512.Sha512__bench._bench.reset();
//"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512_test.go#L922"
                    stdgo._internal.crypto.sha512.Sha512__bench._bench.write((stdgo._internal.crypto.sha512.Sha512__buf._buf.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt8>));
//"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512_test.go#L923"
                    stdgo._internal.crypto.sha512.Sha512__bench._bench.sum((_sum.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _i++;
                };
            };
        });
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512_test.go#L926"
        _b.run(("Sum384" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512_test.go#L927"
            _b.reportAllocs();
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512_test.go#L928"
            _b.setBytes((_size : stdgo.GoInt64));
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512_test.go#L929"
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512_test.go#L930"
                    stdgo._internal.crypto.sha512.Sha512_sum384.sum384((stdgo._internal.crypto.sha512.Sha512__buf._buf.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt8>));
                    _i++;
                };
            };
        });
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512_test.go#L933"
        _b.run(("Sum512" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512_test.go#L934"
            _b.reportAllocs();
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512_test.go#L935"
            _b.setBytes((_size : stdgo.GoInt64));
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512_test.go#L936"
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512_test.go#L937"
                    stdgo._internal.crypto.sha512.Sha512_sum512.sum512((stdgo._internal.crypto.sha512.Sha512__buf._buf.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt8>));
                    _i++;
                };
            };
        });
    }
