package stdgo._internal.hash.crc64;
function benchmarkCrc64(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L175"
        _b.run(("ISO64KB" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
            //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L176"
            stdgo._internal.hash.crc64.Crc64__bench._bench(_b, (-2882303761517117440i64 : stdgo.GoUInt64), (65536i64 : stdgo.GoInt64));
        });
        //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L178"
        _b.run(("ISO4KB" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
            //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L179"
            stdgo._internal.hash.crc64.Crc64__bench._bench(_b, (-2882303761517117440i64 : stdgo.GoUInt64), (4096i64 : stdgo.GoInt64));
        });
        //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L181"
        _b.run(("ISO1KB" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
            //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L182"
            stdgo._internal.hash.crc64.Crc64__bench._bench(_b, (-2882303761517117440i64 : stdgo.GoUInt64), (1024i64 : stdgo.GoInt64));
        });
        //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L184"
        _b.run(("ECMA64KB" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
            //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L185"
            stdgo._internal.hash.crc64.Crc64__bench._bench(_b, (-3932672073523589310i64 : stdgo.GoUInt64), (65536i64 : stdgo.GoInt64));
        });
        //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L187"
        _b.run(("Random64KB" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
            //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L188"
            stdgo._internal.hash.crc64.Crc64__bench._bench(_b, (1911i64 : stdgo.GoUInt64), (65536i64 : stdgo.GoInt64));
        });
        //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L190"
        _b.run(("Random16KB" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
            //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L191"
            stdgo._internal.hash.crc64.Crc64__bench._bench(_b, (1911i64 : stdgo.GoUInt64), (16384i64 : stdgo.GoInt64));
        });
    }
