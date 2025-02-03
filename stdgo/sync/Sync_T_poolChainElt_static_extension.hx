package stdgo.sync;
class T_poolChainElt_static_extension {
    public static function _unpack(__self__:stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt, _0:haxe.UInt64):stdgo.Tuple<std.UInt, std.UInt> {
        final _0 = (_0 : stdgo.GoUInt64);
        return {
            final obj = stdgo._internal.sync.Sync_T_poolChainElt_static_extension.T_poolChainElt_static_extension._unpack(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _pushHead(__self__:stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt, _0:stdgo.AnyInterface):Bool {
        final _0 = (_0 : stdgo.AnyInterface);
        return stdgo._internal.sync.Sync_T_poolChainElt_static_extension.T_poolChainElt_static_extension._pushHead(__self__, _0);
    }
    public static function _popTail(__self__:stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync_T_poolChainElt_static_extension.T_poolChainElt_static_extension._popTail(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _popHead(__self__:stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync_T_poolChainElt_static_extension.T_poolChainElt_static_extension._popHead(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _pack(__self__:stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt, _0:std.UInt, _1:std.UInt):haxe.UInt64 {
        final _0 = (_0 : stdgo.GoUInt32);
        final _1 = (_1 : stdgo.GoUInt32);
        return stdgo._internal.sync.Sync_T_poolChainElt_static_extension.T_poolChainElt_static_extension._pack(__self__, _0, _1);
    }
    public static function pushHead(__self__:stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt, _0:stdgo.AnyInterface):Bool {
        final _0 = (_0 : stdgo.AnyInterface);
        return stdgo._internal.sync.Sync_T_poolChainElt_static_extension.T_poolChainElt_static_extension.pushHead(__self__, _0);
    }
    public static function popTail(__self__:stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync_T_poolChainElt_static_extension.T_poolChainElt_static_extension.popTail(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function popHead(__self__:stdgo._internal.sync.Sync_T_poolChainElt.T_poolChainElt):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync_T_poolChainElt_static_extension.T_poolChainElt_static_extension.popHead(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
