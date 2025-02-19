package stdgo._internal.crypto.sha256;
function _benchmarkSize(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _size:stdgo.GoInt):Void {
        var _sum = (new stdgo.Slice<stdgo.GoUInt8>((stdgo._internal.crypto.sha256.Sha256__bench._bench.size() : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        @:check2r _b.run(("New" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
            @:check2r _b.reportAllocs();
            @:check2r _b.setBytes((_size : stdgo.GoInt64));
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                    stdgo._internal.crypto.sha256.Sha256__bench._bench.reset();
stdgo._internal.crypto.sha256.Sha256__bench._bench.write((stdgo._internal.crypto.sha256.Sha256__buf._buf.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt8>));
stdgo._internal.crypto.sha256.Sha256__bench._bench.sum((_sum.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _i++;
                };
            };
        });
        @:check2r _b.run(("Sum224" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
            @:check2r _b.reportAllocs();
            @:check2r _b.setBytes((_size : stdgo.GoInt64));
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                    stdgo._internal.crypto.sha256.Sha256_sum224.sum224((stdgo._internal.crypto.sha256.Sha256__buf._buf.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt8>));
                    _i++;
                };
            };
        });
        @:check2r _b.run(("Sum256" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
            @:check2r _b.reportAllocs();
            @:check2r _b.setBytes((_size : stdgo.GoInt64));
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                    stdgo._internal.crypto.sha256.Sha256_sum256.sum256((stdgo._internal.crypto.sha256.Sha256__buf._buf.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt8>));
                    _i++;
                };
            };
        });
    }
