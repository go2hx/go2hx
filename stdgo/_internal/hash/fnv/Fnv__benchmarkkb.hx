package stdgo._internal.hash.fnv;
function _benchmarkKB(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _h:stdgo._internal.hash.Hash_hash.Hash):Void {
        //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L242"
        _b.setBytes((1024i64 : stdgo.GoInt64));
        var _data = (new stdgo.Slice<stdgo.GoUInt8>((1024 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L244"
        for (_i => _ in _data) {
            _data[(_i : stdgo.GoInt)] = (_i : stdgo.GoUInt8);
        };
        var _in = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), _h.size()).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L249"
        _b.resetTimer();
        //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L250"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L251"
                _h.reset();
//"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L252"
                _h.write(_data);
//"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L253"
                _h.sum(_in);
                _i++;
            };
        };
    }
