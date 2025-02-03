package stdgo.internal.poll;
class T_fdMutex_static_extension {
    static public function _rwunlock(_mu:T_fdMutex, _read:Bool):Bool {
        final _mu = (_mu : stdgo.Ref<stdgo._internal.internal.poll.Poll_T_fdMutex.T_fdMutex>);
        return stdgo._internal.internal.poll.Poll_T_fdMutex_static_extension.T_fdMutex_static_extension._rwunlock(_mu, _read);
    }
    static public function _rwlock(_mu:T_fdMutex, _read:Bool):Bool {
        final _mu = (_mu : stdgo.Ref<stdgo._internal.internal.poll.Poll_T_fdMutex.T_fdMutex>);
        return stdgo._internal.internal.poll.Poll_T_fdMutex_static_extension.T_fdMutex_static_extension._rwlock(_mu, _read);
    }
    static public function _decref(_mu:T_fdMutex):Bool {
        final _mu = (_mu : stdgo.Ref<stdgo._internal.internal.poll.Poll_T_fdMutex.T_fdMutex>);
        return stdgo._internal.internal.poll.Poll_T_fdMutex_static_extension.T_fdMutex_static_extension._decref(_mu);
    }
    static public function _increfAndClose(_mu:T_fdMutex):Bool {
        final _mu = (_mu : stdgo.Ref<stdgo._internal.internal.poll.Poll_T_fdMutex.T_fdMutex>);
        return stdgo._internal.internal.poll.Poll_T_fdMutex_static_extension.T_fdMutex_static_extension._increfAndClose(_mu);
    }
    static public function _incref(_mu:T_fdMutex):Bool {
        final _mu = (_mu : stdgo.Ref<stdgo._internal.internal.poll.Poll_T_fdMutex.T_fdMutex>);
        return stdgo._internal.internal.poll.Poll_T_fdMutex_static_extension.T_fdMutex_static_extension._incref(_mu);
    }
}
