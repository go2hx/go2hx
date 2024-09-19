package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function _benchMap(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _bench:_internal.sync_test.Sync_test_T_bench.T_bench):Void {
        for (__4 => _m in (new stdgo.GoArray<_internal.sync_test.Sync_test_T_mapInterface.T_mapInterface>(3, 3, ...[stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.sync_test.Sync_test_DeepCopyMap.DeepCopyMap() : _internal.sync_test.Sync_test_DeepCopyMap.DeepCopyMap)) : stdgo.Ref<_internal.sync_test.Sync_test_DeepCopyMap.DeepCopyMap>)), stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.sync_test.Sync_test_RWMutexMap.RWMutexMap() : _internal.sync_test.Sync_test_RWMutexMap.RWMutexMap)) : stdgo.Ref<_internal.sync_test.Sync_test_RWMutexMap.RWMutexMap>)), stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.sync.Sync_Map_.Map_() : stdgo._internal.sync.Sync_Map_.Map_)) : stdgo.Ref<stdgo._internal.sync.Sync_Map_.Map_>))]) : stdgo.GoArray<_internal.sync_test.Sync_test_T_mapInterface.T_mapInterface>)) {
            _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%T" : stdgo.GoString), stdgo.Go.toInterface(_m))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                _m = (stdgo.Go.typeAssert((stdgo._internal.reflect.Reflect_new_.new_(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(_m)).elem()).interface_() : _internal.sync_test.Sync_test_T_mapInterface.T_mapInterface)) : _internal.sync_test.Sync_test_T_mapInterface.T_mapInterface);
                if (_bench._setup != null) {
                    _bench._setup(_b, _m);
                };
                _b.resetTimer();
                var _i:stdgo.GoInt64 = (0 : stdgo.GoInt64);
                _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
                    var _id = ((stdgo._internal.sync.atomic_.Atomic__addInt64.addInt64(stdgo.Go.pointer(_i), (1i64 : stdgo.GoInt64)) - (1i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt);
                    _bench._perG(_b, _pb, (_id * _b.n : stdgo.GoInt), _m);
                });
            });
        };
    }
