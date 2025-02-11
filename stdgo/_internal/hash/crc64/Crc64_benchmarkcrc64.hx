package stdgo._internal.hash.crc64;
function benchmarkCrc64(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        @:check2r _b.run(("ISO64KB" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
            stdgo._internal.hash.crc64.Crc64__bench._bench(_b, (-2882303761517117440i64 : stdgo.GoUInt64), (65536i64 : stdgo.GoInt64));
        });
        @:check2r _b.run(("ISO4KB" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
            stdgo._internal.hash.crc64.Crc64__bench._bench(_b, (-2882303761517117440i64 : stdgo.GoUInt64), (4096i64 : stdgo.GoInt64));
        });
        @:check2r _b.run(("ISO1KB" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
            stdgo._internal.hash.crc64.Crc64__bench._bench(_b, (-2882303761517117440i64 : stdgo.GoUInt64), (1024i64 : stdgo.GoInt64));
        });
        @:check2r _b.run(("ECMA64KB" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
            stdgo._internal.hash.crc64.Crc64__bench._bench(_b, (-3932672073523589310i64 : stdgo.GoUInt64), (65536i64 : stdgo.GoInt64));
        });
        @:check2r _b.run(("Random64KB" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
            stdgo._internal.hash.crc64.Crc64__bench._bench(_b, (1911i64 : stdgo.GoUInt64), (65536i64 : stdgo.GoInt64));
        });
        @:check2r _b.run(("Random16KB" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
            stdgo._internal.hash.crc64.Crc64__bench._bench(_b, (1911i64 : stdgo.GoUInt64), (16384i64 : stdgo.GoInt64));
        });
    }
