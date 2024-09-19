package stdgo._internal.net.rpc;
@:keep @:allow(stdgo._internal.net.rpc.Rpc.T_methodType_asInterface) class T_methodType_static_extension {
    @:keep
    static public function numCalls( _m:stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>):stdgo.GoUInt {
        @:recv var _m:stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType> = _m;
        var _n = (0 : stdgo.GoUInt);
        _m.lock();
        _n = _m._numCalls;
        _m.unlock();
        return _n;
    }
    @:embedded
    public static function _unlockSlow( __self__:stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType, _new:stdgo.GoInt32) __self__._unlockSlow(_new);
    @:embedded
    public static function _lockSlow( __self__:stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType) __self__._lockSlow();
    @:embedded
    public static function unlock( __self__:stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType) __self__.unlock();
    @:embedded
    public static function tryLock( __self__:stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType):Bool return __self__.tryLock();
    @:embedded
    public static function lock( __self__:stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType) __self__.lock();
}
