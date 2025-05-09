package stdgo._internal.hash.crc32;
function _benchmark(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _h:stdgo._internal.hash.Hash_hash32.Hash32, _n:stdgo.GoInt64, _alignment:stdgo.GoInt64):Void {
        //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32_test.go#L320"
        _b.setBytes(_n);
        var _data = (new stdgo.Slice<stdgo.GoUInt8>(((_n + _alignment : stdgo.GoInt64) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _data = (_data.__slice__(_alignment) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32_test.go#L323"
        for (_i => _ in _data) {
            _data[(_i : stdgo.GoInt)] = (_i : stdgo.GoUInt8);
        };
        var _in = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), _h.size()).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32_test.go#L329"
        _h.reset();
        //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32_test.go#L330"
        _h.write(_data);
        //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32_test.go#L331"
        _h.sum(_in);
        _in = (_in.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32_test.go#L335"
        _b.resetTimer();
        //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32_test.go#L336"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32_test.go#L337"
                _h.reset();
//"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32_test.go#L338"
                _h.write(_data);
//"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32_test.go#L339"
                _h.sum(_in);
_in = (_in.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                _i++;
            };
        };
    }
