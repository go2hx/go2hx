package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
@:keep @:allow(_internal.sync_test.Sync_test.T_mapCall_asInterface) class T_mapCall_static_extension {
    @:keep
    static public function generate( _:_internal.sync_test.Sync_test_T_mapCall.T_mapCall, _r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>, _size:stdgo.GoInt):stdgo._internal.reflect.Reflect_Value.Value {
        @:recv var _:_internal.sync_test.Sync_test_T_mapCall.T_mapCall = _?.__copy__();
        var _c = ({ _op : _internal.sync_test.Sync_test__mapOps._mapOps[(stdgo._internal.math.rand.Rand_intn.intn((_internal.sync_test.Sync_test__mapOps._mapOps.length)) : stdgo.GoInt)], _k : _internal.sync_test.Sync_test__randValue._randValue(_r) } : _internal.sync_test.Sync_test_T_mapCall.T_mapCall);
        {
            final __value__ = _c._op;
            if (__value__ == ((("Store" : stdgo.GoString) : _internal.sync_test.Sync_test_T_mapOp.T_mapOp)) || __value__ == ((("LoadOrStore" : stdgo.GoString) : _internal.sync_test.Sync_test_T_mapOp.T_mapOp))) {
                _c._v = _internal.sync_test.Sync_test__randValue._randValue(_r);
            };
        };
        return stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_c)))?.__copy__();
    }
    @:keep
    static public function _apply( _c:_internal.sync_test.Sync_test_T_mapCall.T_mapCall, _m:_internal.sync_test.Sync_test_T_mapInterface.T_mapInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _c:_internal.sync_test.Sync_test_T_mapCall.T_mapCall = _c?.__copy__();
        {
            final __value__ = _c._op;
            if (__value__ == ((("Load" : stdgo.GoString) : _internal.sync_test.Sync_test_T_mapOp.T_mapOp))) {
                return _m.load(_c._k);
            } else if (__value__ == ((("Store" : stdgo.GoString) : _internal.sync_test.Sync_test_T_mapOp.T_mapOp))) {
                _m.store(_c._k, _c._v);
                return { _0 : (null : stdgo.AnyInterface), _1 : false };
            } else if (__value__ == ((("LoadOrStore" : stdgo.GoString) : _internal.sync_test.Sync_test_T_mapOp.T_mapOp))) {
                return _m.loadOrStore(_c._k, _c._v);
            } else if (__value__ == ((("LoadAndDelete" : stdgo.GoString) : _internal.sync_test.Sync_test_T_mapOp.T_mapOp))) {
                return _m.loadAndDelete(_c._k);
            } else if (__value__ == ((("Delete" : stdgo.GoString) : _internal.sync_test.Sync_test_T_mapOp.T_mapOp))) {
                _m.delete(_c._k);
                return { _0 : (null : stdgo.AnyInterface), _1 : false };
            } else if (__value__ == ((("Swap" : stdgo.GoString) : _internal.sync_test.Sync_test_T_mapOp.T_mapOp))) {
                return _m.swap(_c._k, _c._v);
            } else if (__value__ == ((("CompareAndSwap" : stdgo.GoString) : _internal.sync_test.Sync_test_T_mapOp.T_mapOp))) {
                if (_m.compareAndSwap(_c._k, _c._v, stdgo.Go.toInterface(stdgo._internal.math.rand.Rand_int_.int_()))) {
                    _m.delete(_c._k);
                    return { _0 : _c._v, _1 : true };
                };
                return { _0 : (null : stdgo.AnyInterface), _1 : false };
            } else if (__value__ == ((("CompareAndDelete" : stdgo.GoString) : _internal.sync_test.Sync_test_T_mapOp.T_mapOp))) {
                if (_m.compareAndDelete(_c._k, _c._v)) {
                    {
                        var __tmp__ = _m.load(_c._k), __2:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (!_ok) {
                            return { _0 : (null : stdgo.AnyInterface), _1 : true };
                        };
                    };
                };
                return { _0 : (null : stdgo.AnyInterface), _1 : false };
            } else {
                throw stdgo.Go.toInterface(("invalid mapOp" : stdgo.GoString));
            };
        };
    }
}
