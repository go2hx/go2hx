package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
function benchmarkValueRead(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _v:stdgo._internal.sync.atomic_.Atomic__Value.Value = ({} : stdgo._internal.sync.atomic_.Atomic__Value.Value);
        _v.store(stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.GoInt))));
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            while (_pb.next()) {
                var _x = (stdgo.Go.typeAssert((_v.load() : stdgo.Pointer<stdgo.GoInt>)) : stdgo.Pointer<stdgo.GoInt>);
                if (_x.value != ((0 : stdgo.GoInt))) {
                    _b.fatalf(("wrong value: got %v, want 0" : stdgo.GoString), stdgo.Go.toInterface(_x.value));
                };
            };
        });
    }
