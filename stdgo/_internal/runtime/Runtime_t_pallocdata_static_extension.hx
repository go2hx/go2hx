package stdgo._internal.runtime;
@:keep @:allow(stdgo._internal.runtime.Runtime.T_pallocData_asInterface) class T_pallocData_static_extension {
    @:embedded
    @:embeddededffieldsffun
    public static function _summarize( __self__:stdgo._internal.runtime.Runtime_t_pallocdata.T_pallocData):stdgo._internal.runtime.Runtime_t_pallocsum.T_pallocSum return @:_5 __self__._summarize();
    @:embedded
    @:embeddededffieldsffun
    public static function _pages64( __self__:stdgo._internal.runtime.Runtime_t_pallocdata.T_pallocData, _0:stdgo.GoUInt):stdgo.GoUInt64 return @:_5 __self__._pages64(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _freeAll( __self__:stdgo._internal.runtime.Runtime_t_pallocdata.T_pallocData):Void return @:_5 __self__._freeAll();
    @:embedded
    @:embeddededffieldsffun
    public static function _free1( __self__:stdgo._internal.runtime.Runtime_t_pallocdata.T_pallocData, _0:stdgo.GoUInt):Void return @:_5 __self__._free1(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _free( __self__:stdgo._internal.runtime.Runtime_t_pallocdata.T_pallocData, _0:stdgo.GoUInt, _1:stdgo.GoUInt):Void return @:_5 __self__._free(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _findSmallN( __self__:stdgo._internal.runtime.Runtime_t_pallocdata.T_pallocData, _0:stdgo.GoUIntptr, _1:stdgo.GoUInt):{ var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; } return @:_5 __self__._findSmallN(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _findLargeN( __self__:stdgo._internal.runtime.Runtime_t_pallocdata.T_pallocData, _0:stdgo.GoUIntptr, _1:stdgo.GoUInt):{ var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; } return @:_5 __self__._findLargeN(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _find1( __self__:stdgo._internal.runtime.Runtime_t_pallocdata.T_pallocData, _0:stdgo.GoUInt):stdgo.GoUInt return @:_5 __self__._find1(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _find( __self__:stdgo._internal.runtime.Runtime_t_pallocdata.T_pallocData, _0:stdgo.GoUIntptr, _1:stdgo.GoUInt):{ var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; } return @:_5 __self__._find(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _allocPages64( __self__:stdgo._internal.runtime.Runtime_t_pallocdata.T_pallocData, _0:stdgo.GoUInt, _1:stdgo.GoUInt64):Void return @:_5 __self__._allocPages64(_0, _1);
}
