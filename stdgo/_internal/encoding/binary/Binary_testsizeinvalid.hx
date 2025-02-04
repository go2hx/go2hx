package stdgo._internal.encoding.binary;
function testSizeInvalid(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _testcases = (new stdgo.Slice<stdgo.AnyInterface>(10, 10, ...[stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.GoInt))), stdgo.Go.toInterface((null : stdgo.Pointer<stdgo.GoInt>)), stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoUInt>(1, 1, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt>)), stdgo.Go.toInterface((stdgo.Go.setRef(new stdgo.GoArray<stdgo.GoUInt>(1, 1).__setNumber32__()) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt>>)), stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoUInt>(1, 1).__setNumber32__() : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt>>)), stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)), stdgo.Go.toInterface((null : stdgo.Slice<stdgo.GoInt>)), stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.Slice<stdgo.GoInt>)) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>)), stdgo.Go.toInterface((null : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>))]) : stdgo.Slice<stdgo.AnyInterface>);
        for (__8 => _tc in _testcases) {
            {
                var _got = (stdgo._internal.encoding.binary.Binary_size.size(_tc) : stdgo.GoInt);
                if (_got != ((-1 : stdgo.GoInt))) {
                    @:check2r _t.errorf(("Size(%T) = %d, want -1" : stdgo.GoString), _tc, stdgo.Go.toInterface(_got));
                };
            };
        };
    }
