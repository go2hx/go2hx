package stdgo._internal.hash.fnv;
function _testIntegrity(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _h:stdgo._internal.hash.Hash_hash.Hash):Void {
        var _data = (new stdgo.Slice<stdgo.GoUInt8>(5, 5, ...[(49 : stdgo.GoUInt8), (50 : stdgo.GoUInt8), (3 : stdgo.GoUInt8), (4 : stdgo.GoUInt8), (5 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L177"
        _h.write(_data);
        var _sum = _h.sum((null : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L180"
        {
            var _size = (_h.size() : stdgo.GoInt);
            if (_size != ((_sum.length))) {
                //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L181"
                _t.fatalf(("Size()=%d but len(Sum())=%d" : stdgo.GoString), stdgo.Go.toInterface(_size), stdgo.Go.toInterface((_sum.length)));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L184"
        {
            var _a = _h.sum((null : stdgo.Slice<stdgo.GoUInt8>));
            if (!stdgo._internal.bytes.Bytes_equal.equal(_sum, _a)) {
                //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L185"
                _t.fatalf(("first Sum()=0x%x, second Sum()=0x%x" : stdgo.GoString), stdgo.Go.toInterface(_sum), stdgo.Go.toInterface(_a));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L188"
        _h.reset();
        //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L189"
        _h.write(_data);
        //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L190"
        {
            var _a = _h.sum((null : stdgo.Slice<stdgo.GoUInt8>));
            if (!stdgo._internal.bytes.Bytes_equal.equal(_sum, _a)) {
                //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L191"
                _t.fatalf(("Sum()=0x%x, but after Reset() Sum()=0x%x" : stdgo.GoString), stdgo.Go.toInterface(_sum), stdgo.Go.toInterface(_a));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L194"
        _h.reset();
        //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L195"
        _h.write((_data.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L196"
        _h.write((_data.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L197"
        {
            var _a = _h.sum((null : stdgo.Slice<stdgo.GoUInt8>));
            if (!stdgo._internal.bytes.Bytes_equal.equal(_sum, _a)) {
                //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L198"
                _t.fatalf(("Sum()=0x%x, but with partial writes, Sum()=0x%x" : stdgo.GoString), stdgo.Go.toInterface(_sum), stdgo.Go.toInterface(_a));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L201"
        {
            final __value__ = _h.size();
            if (__value__ == ((4 : stdgo.GoInt))) {
                var _sum32 = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(_h) : stdgo._internal.hash.Hash_hash32.Hash32)) : stdgo._internal.hash.Hash_hash32.Hash32).sum32() : stdgo.GoUInt32);
                //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L204"
                if (_sum32 != (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32(_sum))) {
                    //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L205"
                    _t.fatalf(("Sum()=0x%x, but Sum32()=0x%x" : stdgo.GoString), stdgo.Go.toInterface(_sum), stdgo.Go.toInterface(_sum32));
                };
            } else if (__value__ == ((8 : stdgo.GoInt))) {
                var _sum64 = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(_h) : stdgo._internal.hash.Hash_hash64.Hash64)) : stdgo._internal.hash.Hash_hash64.Hash64).sum64() : stdgo.GoUInt64);
                //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L209"
                if (_sum64 != (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint64(_sum))) {
                    //"file:///home/runner/.go/go1.21.3/src/hash/fnv/fnv_test.go#L210"
                    _t.fatalf(("Sum()=0x%x, but Sum64()=0x%x" : stdgo.GoString), stdgo.Go.toInterface(_sum), stdgo.Go.toInterface(_sum64));
                };
            } else if (__value__ == ((16 : stdgo.GoInt))) {};
        };
    }
