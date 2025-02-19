package stdgo._internal.hash.fnv;
function _testGolden(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _hash:stdgo._internal.hash.Hash_hash.Hash, _gold:stdgo.Slice<stdgo._internal.hash.fnv.Fnv_t_golden.T_golden>):Void {
        for (__0 => _g in _gold) {
            _hash.reset();
            var __tmp__ = _hash.write((_g._in : stdgo.Slice<stdgo.GoUInt8>)), _done:stdgo.GoInt = __tmp__._0, _error:stdgo.Error = __tmp__._1;
            if (_error != null) {
                @:check2r _t.fatalf(("write error: %s" : stdgo.GoString), stdgo.Go.toInterface(_error));
            };
            if (_done != ((_g._in.length))) {
                @:check2r _t.fatalf(("wrote only %d out of %d bytes" : stdgo.GoString), stdgo.Go.toInterface(_done), stdgo.Go.toInterface((_g._in.length)));
            };
            {
                var _actual = _hash.sum((null : stdgo.Slice<stdgo.GoUInt8>));
                if (!stdgo._internal.bytes.Bytes_equal.equal(_g._out, _actual)) {
                    @:check2r _t.errorf(("hash(%q) = 0x%x want 0x%x" : stdgo.GoString), stdgo.Go.toInterface(_g._in), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_g._out));
                };
            };
        };
    }
