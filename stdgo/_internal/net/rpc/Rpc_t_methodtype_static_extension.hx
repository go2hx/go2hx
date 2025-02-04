package stdgo._internal.net.rpc;
@:keep @:allow(stdgo._internal.net.rpc.Rpc.T_methodType_asInterface) class T_methodType_static_extension {
    @:keep
    @:tdfield
    static public function numCalls( _m:stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_methodtype.T_methodType>):stdgo.GoUInt {
        @:recv var _m:stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_methodtype.T_methodType> = _m;
        var _n = (0 : stdgo.GoUInt);
        @:check2r _m.lock();
        _n = (@:checkr _m ?? throw "null pointer dereference")._numCalls;
        @:check2r _m.unlock();
        return _n;
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _unlockSlow( __self__:stdgo._internal.net.rpc.Rpc_t_methodtype.T_methodType, _0:stdgo.GoInt32):Void return @:_5 __self__._unlockSlow(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _lockSlow( __self__:stdgo._internal.net.rpc.Rpc_t_methodtype.T_methodType):Void return @:_5 __self__._lockSlow();
    @:embedded
    @:embeddededffieldsffun
    public static function unlock( __self__:stdgo._internal.net.rpc.Rpc_t_methodtype.T_methodType):Void return @:_5 __self__.unlock();
    @:embedded
    @:embeddededffieldsffun
    public static function tryLock( __self__:stdgo._internal.net.rpc.Rpc_t_methodtype.T_methodType):Bool return @:_5 __self__.tryLock();
    @:embedded
    @:embeddededffieldsffun
    public static function lock( __self__:stdgo._internal.net.rpc.Rpc_t_methodtype.T_methodType):Void return @:_5 __self__.lock();
}
