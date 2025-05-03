package stdgo._internal.crypto.sha1;
function _benchmarkSize(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _size:stdgo.GoInt):Void {
        var _sum = (new stdgo.Slice<stdgo.GoUInt8>((stdgo._internal.crypto.sha1.Sha1__bench._bench.size() : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L242"
        _b.run(("New" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L243"
            _b.reportAllocs();
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L244"
            _b.setBytes((_size : stdgo.GoInt64));
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L245"
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L246"
                    stdgo._internal.crypto.sha1.Sha1__bench._bench.reset();
//"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L247"
                    stdgo._internal.crypto.sha1.Sha1__bench._bench.write((stdgo._internal.crypto.sha1.Sha1__buf._buf.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt8>));
//"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L248"
                    stdgo._internal.crypto.sha1.Sha1__bench._bench.sum((_sum.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _i++;
                };
            };
        });
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L251"
        _b.run(("Sum" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L252"
            _b.reportAllocs();
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L253"
            _b.setBytes((_size : stdgo.GoInt64));
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L254"
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L255"
                    stdgo._internal.crypto.sha1.Sha1_sum.sum((stdgo._internal.crypto.sha1.Sha1__buf._buf.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt8>));
                    _i++;
                };
            };
        });
    }
