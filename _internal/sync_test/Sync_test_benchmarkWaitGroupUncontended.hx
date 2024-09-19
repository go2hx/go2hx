package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function benchmarkWaitGroupUncontended(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {};
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            var _wg:_internal.sync_test.Sync_test_T_benchmarkWaitGroupUncontended___localname___PaddedWaitGroup_1834.T_benchmarkWaitGroupUncontended___localname___PaddedWaitGroup_1834 = ({} : _internal.sync_test.Sync_test_T_benchmarkWaitGroupUncontended___localname___PaddedWaitGroup_1834.T_benchmarkWaitGroupUncontended___localname___PaddedWaitGroup_1834);
            while (_pb.next()) {
                _wg.add((1 : stdgo.GoInt));
                _wg.done();
                _wg.wait_();
            };
        });
    }
