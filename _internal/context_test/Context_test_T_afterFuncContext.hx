package _internal.context_test;
import stdgo._internal.context.Context;
import stdgo._internal.context.Context;
@:structInit @:using(_internal.context_test.Context_test_T_afterFuncContext_static_extension.T_afterFuncContext_static_extension) class T_afterFuncContext {
    public var _mu : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _afterFuncs : stdgo.GoMap<stdgo.Ref<{ }>, () -> Void> = (null : stdgo.GoMap<stdgo.Ref<{ }>, () -> Void>);
    public var _done : stdgo.Chan<{ }> = (null : stdgo.Chan<{ }>);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_afterFuncs:stdgo.GoMap<stdgo.Ref<{ }>, () -> Void>, ?_done:stdgo.Chan<{ }>, ?_err:stdgo.Error) {
        if (_mu != null) this._mu = _mu;
        if (_afterFuncs != null) this._afterFuncs = _afterFuncs;
        if (_done != null) this._done = _done;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_afterFuncContext(_mu, _afterFuncs, _done, _err);
    }
}
