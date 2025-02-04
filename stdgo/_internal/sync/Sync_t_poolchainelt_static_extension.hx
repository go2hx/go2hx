package stdgo._internal.sync;
@:keep @:allow(stdgo._internal.sync.Sync.T_poolChainElt_asInterface) class T_poolChainElt_static_extension {
    @:embedded
    @:embeddededffieldsffun
    public static function _unpack( __self__:stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt, _0:stdgo.GoUInt64):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; } return @:_5 __self__._unpack(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _pushHead( __self__:stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt, _0:stdgo.AnyInterface):Bool return @:_5 __self__._pushHead(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _popTail( __self__:stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return @:_5 __self__._popTail();
    @:embedded
    @:embeddededffieldsffun
    public static function _popHead( __self__:stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return @:_5 __self__._popHead();
    @:embedded
    @:embeddededffieldsffun
    public static function _pack( __self__:stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt, _0:stdgo.GoUInt32, _1:stdgo.GoUInt32):stdgo.GoUInt64 return @:_5 __self__._pack(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function pushHead( __self__:stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt, _0:stdgo.AnyInterface):Bool return @:_5 __self__.pushHead(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function popTail( __self__:stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return @:_5 __self__.popTail();
    @:embedded
    @:embeddededffieldsffun
    public static function popHead( __self__:stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return @:_5 __self__.popHead();
}
