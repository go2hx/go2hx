package stdgo._internal.sync;
@:keep @:allow(stdgo._internal.sync.Sync.T_poolChainElt_asInterface) class T_poolChainElt_static_extension {
    @:embedded
    public static function _unpack( __self__:stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt, __0:stdgo.GoUInt64):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; } return __self__._unpack(__0);
    @:embedded
    public static function _pushHead( __self__:stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt, _val:stdgo.AnyInterface):Bool return __self__._pushHead(_val);
    @:embedded
    public static function _popTail( __self__:stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return __self__._popTail();
    @:embedded
    public static function _popHead( __self__:stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return __self__._popHead();
    @:embedded
    public static function _pack( __self__:stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt, _head:stdgo.GoUInt32, _tail:stdgo.GoUInt32):stdgo.GoUInt64 return __self__._pack(_head, _tail);
    @:embedded
    public static function pushHead( __self__:stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt, _val:stdgo.AnyInterface):Bool return __self__.pushHead(_val);
    @:embedded
    public static function popTail( __self__:stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return __self__.popTail();
    @:embedded
    public static function popHead( __self__:stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return __self__.popHead();
}
