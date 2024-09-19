package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
@:structInit @:using(_internal.sync_test.Sync_test_T_mapCall_static_extension.T_mapCall_static_extension) class T_mapCall {
    public var _op : _internal.sync_test.Sync_test_T_mapOp.T_mapOp = (("" : stdgo.GoString) : _internal.sync_test.Sync_test_T_mapOp.T_mapOp);
    public var _k : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _v : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?_op:_internal.sync_test.Sync_test_T_mapOp.T_mapOp, ?_k:stdgo.AnyInterface, ?_v:stdgo.AnyInterface) {
        if (_op != null) this._op = _op;
        if (_k != null) this._k = _k;
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_mapCall(_op, _k, _v);
    }
}
