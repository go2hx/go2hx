package stdgo.runtime;
class T_pallocData_static_extension {
    public static function _summarize(__self__:stdgo._internal.runtime.Runtime_T_pallocData.T_pallocData):T_pallocSum {
        return stdgo._internal.runtime.Runtime_T_pallocData_static_extension.T_pallocData_static_extension._summarize(__self__);
    }
    public static function _pages64(__self__:stdgo._internal.runtime.Runtime_T_pallocData.T_pallocData, _0:std.UInt):haxe.UInt64 {
        final _0 = (_0 : stdgo.GoUInt);
        return stdgo._internal.runtime.Runtime_T_pallocData_static_extension.T_pallocData_static_extension._pages64(__self__, _0);
    }
    public static function _freeAll(__self__:stdgo._internal.runtime.Runtime_T_pallocData.T_pallocData):Void {
        stdgo._internal.runtime.Runtime_T_pallocData_static_extension.T_pallocData_static_extension._freeAll(__self__);
    }
    public static function _free1(__self__:stdgo._internal.runtime.Runtime_T_pallocData.T_pallocData, _0:std.UInt):Void {
        final _0 = (_0 : stdgo.GoUInt);
        stdgo._internal.runtime.Runtime_T_pallocData_static_extension.T_pallocData_static_extension._free1(__self__, _0);
    }
    public static function _free(__self__:stdgo._internal.runtime.Runtime_T_pallocData.T_pallocData, _0:std.UInt, _1:std.UInt):Void {
        final _0 = (_0 : stdgo.GoUInt);
        final _1 = (_1 : stdgo.GoUInt);
        stdgo._internal.runtime.Runtime_T_pallocData_static_extension.T_pallocData_static_extension._free(__self__, _0, _1);
    }
    public static function _findSmallN(__self__:stdgo._internal.runtime.Runtime_T_pallocData.T_pallocData, _0:stdgo.GoUIntptr, _1:std.UInt):stdgo.Tuple<std.UInt, std.UInt> {
        final _0 = (_0 : stdgo.GoUIntptr);
        final _1 = (_1 : stdgo.GoUInt);
        return {
            final obj = stdgo._internal.runtime.Runtime_T_pallocData_static_extension.T_pallocData_static_extension._findSmallN(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _findLargeN(__self__:stdgo._internal.runtime.Runtime_T_pallocData.T_pallocData, _0:stdgo.GoUIntptr, _1:std.UInt):stdgo.Tuple<std.UInt, std.UInt> {
        final _0 = (_0 : stdgo.GoUIntptr);
        final _1 = (_1 : stdgo.GoUInt);
        return {
            final obj = stdgo._internal.runtime.Runtime_T_pallocData_static_extension.T_pallocData_static_extension._findLargeN(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _find1(__self__:stdgo._internal.runtime.Runtime_T_pallocData.T_pallocData, _0:std.UInt):std.UInt {
        final _0 = (_0 : stdgo.GoUInt);
        return stdgo._internal.runtime.Runtime_T_pallocData_static_extension.T_pallocData_static_extension._find1(__self__, _0);
    }
    public static function _find(__self__:stdgo._internal.runtime.Runtime_T_pallocData.T_pallocData, _0:stdgo.GoUIntptr, _1:std.UInt):stdgo.Tuple<std.UInt, std.UInt> {
        final _0 = (_0 : stdgo.GoUIntptr);
        final _1 = (_1 : stdgo.GoUInt);
        return {
            final obj = stdgo._internal.runtime.Runtime_T_pallocData_static_extension.T_pallocData_static_extension._find(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _allocPages64(__self__:stdgo._internal.runtime.Runtime_T_pallocData.T_pallocData, _0:std.UInt, _1:haxe.UInt64):Void {
        final _0 = (_0 : stdgo.GoUInt);
        final _1 = (_1 : stdgo.GoUInt64);
        stdgo._internal.runtime.Runtime_T_pallocData_static_extension.T_pallocData_static_extension._allocPages64(__self__, _0, _1);
    }
}
