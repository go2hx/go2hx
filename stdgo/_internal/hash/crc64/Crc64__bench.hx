package stdgo._internal.hash.crc64;
function _bench(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _poly:stdgo.GoUInt64, _size:stdgo.GoInt64):Void {
        //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L158"
        _b.setBytes(_size);
        var _data = (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L160"
        for (_i => _ in _data) {
            _data[(_i : stdgo.GoInt)] = (_i : stdgo.GoUInt8);
        };
        var _h = (stdgo._internal.hash.crc64.Crc64_new_.new_(stdgo._internal.hash.crc64.Crc64_maketable.makeTable(_poly)) : stdgo._internal.hash.Hash_hash64.Hash64);
        var _in = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), _h.size()).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L166"
        _b.resetTimer();
        //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L167"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L168"
                _h.reset();
//"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L169"
                _h.write(_data);
//"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L170"
                _h.sum(_in);
                _i++;
            };
        };
    }
