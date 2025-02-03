package stdgo.internal.poll;
class XFDMutex_static_extension {
    static public function rWUnlock(_mu:XFDMutex, _read:Bool):Bool {
        final _mu = (_mu : stdgo.Ref<stdgo._internal.internal.poll.Poll_XFDMutex.XFDMutex>);
        return stdgo._internal.internal.poll.Poll_XFDMutex_static_extension.XFDMutex_static_extension.rWUnlock(_mu, _read);
    }
    static public function rWLock(_mu:XFDMutex, _read:Bool):Bool {
        final _mu = (_mu : stdgo.Ref<stdgo._internal.internal.poll.Poll_XFDMutex.XFDMutex>);
        return stdgo._internal.internal.poll.Poll_XFDMutex_static_extension.XFDMutex_static_extension.rWLock(_mu, _read);
    }
    static public function decref(_mu:XFDMutex):Bool {
        final _mu = (_mu : stdgo.Ref<stdgo._internal.internal.poll.Poll_XFDMutex.XFDMutex>);
        return stdgo._internal.internal.poll.Poll_XFDMutex_static_extension.XFDMutex_static_extension.decref(_mu);
    }
    static public function increfAndClose(_mu:XFDMutex):Bool {
        final _mu = (_mu : stdgo.Ref<stdgo._internal.internal.poll.Poll_XFDMutex.XFDMutex>);
        return stdgo._internal.internal.poll.Poll_XFDMutex_static_extension.XFDMutex_static_extension.increfAndClose(_mu);
    }
    static public function incref(_mu:XFDMutex):Bool {
        final _mu = (_mu : stdgo.Ref<stdgo._internal.internal.poll.Poll_XFDMutex.XFDMutex>);
        return stdgo._internal.internal.poll.Poll_XFDMutex_static_extension.XFDMutex_static_extension.incref(_mu);
    }
    public static function _rwunlock(__self__:stdgo._internal.internal.poll.Poll_XFDMutex.XFDMutex, _0:Bool):Bool {
        return stdgo._internal.internal.poll.Poll_XFDMutex_static_extension.XFDMutex_static_extension._rwunlock(__self__, _0);
    }
    public static function _rwlock(__self__:stdgo._internal.internal.poll.Poll_XFDMutex.XFDMutex, _0:Bool):Bool {
        return stdgo._internal.internal.poll.Poll_XFDMutex_static_extension.XFDMutex_static_extension._rwlock(__self__, _0);
    }
    public static function _increfAndClose(__self__:stdgo._internal.internal.poll.Poll_XFDMutex.XFDMutex):Bool {
        return stdgo._internal.internal.poll.Poll_XFDMutex_static_extension.XFDMutex_static_extension._increfAndClose(__self__);
    }
    public static function _incref(__self__:stdgo._internal.internal.poll.Poll_XFDMutex.XFDMutex):Bool {
        return stdgo._internal.internal.poll.Poll_XFDMutex_static_extension.XFDMutex_static_extension._incref(__self__);
    }
    public static function _decref(__self__:stdgo._internal.internal.poll.Poll_XFDMutex.XFDMutex):Bool {
        return stdgo._internal.internal.poll.Poll_XFDMutex_static_extension.XFDMutex_static_extension._decref(__self__);
    }
}
