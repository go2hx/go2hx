package stdgo._internal.internal.poll;
@:keep @:allow(stdgo._internal.internal.poll.Poll.XFDMutex_asInterface) class XFDMutex_static_extension {
    @:keep
    static public function rwunlock( _mu:stdgo.Ref<stdgo._internal.internal.poll.Poll_XFDMutex.XFDMutex>, _read:Bool):Bool throw "XFDMutex:internal.poll.rwunlock is not yet implemented";
    @:keep
    static public function rwlock( _mu:stdgo.Ref<stdgo._internal.internal.poll.Poll_XFDMutex.XFDMutex>, _read:Bool):Bool throw "XFDMutex:internal.poll.rwlock is not yet implemented";
    @:keep
    static public function decref( _mu:stdgo.Ref<stdgo._internal.internal.poll.Poll_XFDMutex.XFDMutex>):Bool throw "XFDMutex:internal.poll.decref is not yet implemented";
    @:keep
    static public function increfAndClose( _mu:stdgo.Ref<stdgo._internal.internal.poll.Poll_XFDMutex.XFDMutex>):Bool throw "XFDMutex:internal.poll.increfAndClose is not yet implemented";
    @:keep
    static public function incref( _mu:stdgo.Ref<stdgo._internal.internal.poll.Poll_XFDMutex.XFDMutex>):Bool throw "XFDMutex:internal.poll.incref is not yet implemented";
    @:embedded
    public static function _rwunlock( __self__:stdgo._internal.internal.poll.Poll_XFDMutex.XFDMutex, __0:Bool):Bool return __self__._rwunlock(__0);
    @:embedded
    public static function _rwlock( __self__:stdgo._internal.internal.poll.Poll_XFDMutex.XFDMutex, __0:Bool):Bool return __self__._rwlock(__0);
    @:embedded
    public static function _increfAndClose( __self__:stdgo._internal.internal.poll.Poll_XFDMutex.XFDMutex):Bool return __self__._increfAndClose();
    @:embedded
    public static function _incref( __self__:stdgo._internal.internal.poll.Poll_XFDMutex.XFDMutex):Bool return __self__._incref();
    @:embedded
    public static function _decref( __self__:stdgo._internal.internal.poll.Poll_XFDMutex.XFDMutex):Bool return __self__._decref();
}
