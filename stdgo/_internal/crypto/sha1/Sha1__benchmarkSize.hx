package stdgo._internal.crypto.sha1;
function _benchmarkSize(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _size:stdgo.GoInt):Void {
        var _sum = (new stdgo.Slice<stdgo.GoUInt8>((stdgo._internal.crypto.sha1.Sha1__bench._bench.size() : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _b.run(("New" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            _b.reportAllocs();
            _b.setBytes((_size : stdgo.GoInt64));
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < _b.n : Bool)) {
                    stdgo._internal.crypto.sha1.Sha1__bench._bench.reset();
stdgo._internal.crypto.sha1.Sha1__bench._bench.write((stdgo._internal.crypto.sha1.Sha1__buf._buf.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt8>));
stdgo._internal.crypto.sha1.Sha1__bench._bench.sum((_sum.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _i++;
                };
            };
        });
        _b.run(("Sum" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            _b.reportAllocs();
            _b.setBytes((_size : stdgo.GoInt64));
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < _b.n : Bool)) {
                    stdgo._internal.crypto.sha1.Sha1_sum.sum((stdgo._internal.crypto.sha1.Sha1__buf._buf.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt8>));
                    _i++;
                };
            };
        });
    }
