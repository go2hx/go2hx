package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
@:keep class T_mapInterface_static_extension {
    static public function range(t:_internal.sync_test.Sync_test_T_mapInterface.T_mapInterface, _0:(stdgo.AnyInterface, stdgo.AnyInterface) -> Bool):Void t.range(_0);
    static public function compareAndDelete(t:_internal.sync_test.Sync_test_T_mapInterface.T_mapInterface, _key:stdgo.AnyInterface, _old:stdgo.AnyInterface):Bool return t.compareAndDelete(_key, _old);
    static public function compareAndSwap(t:_internal.sync_test.Sync_test_T_mapInterface.T_mapInterface, _key:stdgo.AnyInterface, _old:stdgo.AnyInterface, _new:stdgo.AnyInterface):Bool return t.compareAndSwap(_key, _old, _new);
    static public function swap(t:_internal.sync_test.Sync_test_T_mapInterface.T_mapInterface, _key:stdgo.AnyInterface, _value:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return t.swap(_key, _value);
    static public function delete(t:_internal.sync_test.Sync_test_T_mapInterface.T_mapInterface, _0:stdgo.AnyInterface):Void t.delete(_0);
    static public function loadAndDelete(t:_internal.sync_test.Sync_test_T_mapInterface.T_mapInterface, _key:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return t.loadAndDelete(_key);
    static public function loadOrStore(t:_internal.sync_test.Sync_test_T_mapInterface.T_mapInterface, _key:stdgo.AnyInterface, _value:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return t.loadOrStore(_key, _value);
    static public function store(t:_internal.sync_test.Sync_test_T_mapInterface.T_mapInterface, _key:stdgo.AnyInterface, _value:stdgo.AnyInterface):Void t.store(_key, _value);
    static public function load(t:_internal.sync_test.Sync_test_T_mapInterface.T_mapInterface, _0:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return t.load(_0);
}
