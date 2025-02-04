package stdgo._internal.internal.poll;
@:keep @:allow(stdgo._internal.internal.poll.Poll.XFDMutex_asInterface) class XFDMutex_static_extension {
    @:keep
    @:tdfield
    static public function rWUnlock( _mu:stdgo.Ref<stdgo._internal.internal.poll.Poll_xfdmutex.XFDMutex>, _read:Bool):Bool throw "XFDMutex:internal.poll.rWUnlock is not yet implemented";
    @:keep
    @:tdfield
    static public function rWLock( _mu:stdgo.Ref<stdgo._internal.internal.poll.Poll_xfdmutex.XFDMutex>, _read:Bool):Bool throw "XFDMutex:internal.poll.rWLock is not yet implemented";
    @:keep
    @:tdfield
    static public function decref( _mu:stdgo.Ref<stdgo._internal.internal.poll.Poll_xfdmutex.XFDMutex>):Bool throw "XFDMutex:internal.poll.decref is not yet implemented";
    @:keep
    @:tdfield
    static public function increfAndClose( _mu:stdgo.Ref<stdgo._internal.internal.poll.Poll_xfdmutex.XFDMutex>):Bool throw "XFDMutex:internal.poll.increfAndClose is not yet implemented";
    @:keep
    @:tdfield
    static public function incref( _mu:stdgo.Ref<stdgo._internal.internal.poll.Poll_xfdmutex.XFDMutex>):Bool throw "XFDMutex:internal.poll.incref is not yet implemented";
    @:embedded
    @:embeddededffieldsffun
    public static function _rwunlock( __self__:stdgo._internal.internal.poll.Poll_xfdmutex.XFDMutex, _0:Bool):Bool return @:_5 __self__._rwunlock(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _rwlock( __self__:stdgo._internal.internal.poll.Poll_xfdmutex.XFDMutex, _0:Bool):Bool return @:_5 __self__._rwlock(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _increfAndClose( __self__:stdgo._internal.internal.poll.Poll_xfdmutex.XFDMutex):Bool return @:_5 __self__._increfAndClose();
    @:embedded
    @:embeddededffieldsffun
    public static function _incref( __self__:stdgo._internal.internal.poll.Poll_xfdmutex.XFDMutex):Bool return @:_5 __self__._incref();
    @:embedded
    @:embeddededffieldsffun
    public static function _decref( __self__:stdgo._internal.internal.poll.Poll_xfdmutex.XFDMutex):Bool return @:_5 __self__._decref();
}
