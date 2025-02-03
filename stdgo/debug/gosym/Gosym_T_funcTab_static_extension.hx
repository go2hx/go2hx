package stdgo.debug.gosym;
class T_funcTab_static_extension {
    static public function _uint(_f:T_funcTab, _b:Array<std.UInt>):haxe.UInt64 {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._uint(_f, _b);
    }
    static public function _funcOff(_f:T_funcTab, _i:StdTypes.Int):haxe.UInt64 {
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._funcOff(_f, _i);
    }
    static public function _pc(_f:T_funcTab, _i:StdTypes.Int):haxe.UInt64 {
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._pc(_f, _i);
    }
    static public function count(_f:T_funcTab):StdTypes.Int {
        return stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension.count(_f);
    }
    public static function _uintptr(__self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, _0:Array<std.UInt>):haxe.UInt64 {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._uintptr(__self__, _0);
    }
    public static function _stringFrom(__self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, _0:Array<std.UInt>, _1:std.UInt):String {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = (_1 : stdgo.GoUInt32);
        return stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._stringFrom(__self__, _0, _1);
    }
    public static function _string(__self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, _0:std.UInt):String {
        final _0 = (_0 : stdgo.GoUInt32);
        return stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._string(__self__, _0);
    }
    public static function _step(__self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, _0:Array<std.UInt>, _1:stdgo.Pointer<haxe.UInt64>, _2:stdgo.Pointer<StdTypes.Int>, _3:Bool):Bool {
        final _0 = (_0 : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>);
        return stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._step(__self__, _0, _1, _2, _3);
    }
    public static function _slice(__self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, _0:haxe.UInt64):LineTable {
        final _0 = (_0 : stdgo.GoUInt64);
        return stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._slice(__self__, _0);
    }
    public static function _readvarint(__self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, _0:Array<std.UInt>):std.UInt {
        final _0 = (_0 : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>);
        return stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._readvarint(__self__, _0);
    }
    public static function _pcvalue(__self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, _0:std.UInt, _1:haxe.UInt64, _2:haxe.UInt64):StdTypes.Int {
        final _0 = (_0 : stdgo.GoUInt32);
        final _1 = (_1 : stdgo.GoUInt64);
        final _2 = (_2 : stdgo.GoUInt64);
        return stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._pcvalue(__self__, _0, _1, _2);
    }
    public static function _parsePclnTab(__self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab):Void {
        stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._parsePclnTab(__self__);
    }
    public static function _parse(__self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, _0:haxe.UInt64, _1:StdTypes.Int):stdgo.Tuple.Tuple3<Array<std.UInt>, haxe.UInt64, StdTypes.Int> {
        final _0 = (_0 : stdgo.GoUInt64);
        final _1 = (_1 : stdgo.GoInt);
        return {
            final obj = stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._parse(__self__, _0, _1);
            { _0 : [for (i in obj._0) i], _1 : obj._1, _2 : obj._2 };
        };
    }
    public static function _isGo12(__self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab):Bool {
        return stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._isGo12(__self__);
    }
    public static function _initFileMap(__self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab):Void {
        stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._initFileMap(__self__);
    }
    public static function _go12PCToLine(__self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, _0:haxe.UInt64):StdTypes.Int {
        final _0 = (_0 : stdgo.GoUInt64);
        return stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._go12PCToLine(__self__, _0);
    }
    public static function _go12PCToFile(__self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, _0:haxe.UInt64):String {
        final _0 = (_0 : stdgo.GoUInt64);
        return stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._go12PCToFile(__self__, _0);
    }
    public static function _go12MapFiles(__self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, _0:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>>, _1:Obj):Void {
        final _0 = (_0 : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>>);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>);
        stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._go12MapFiles(__self__, _0, _1);
    }
    public static function _go12LineToPC(__self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, _0:String, _1:StdTypes.Int):haxe.UInt64 {
        final _0 = (_0 : stdgo.GoString);
        final _1 = (_1 : stdgo.GoInt);
        return stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._go12LineToPC(__self__, _0, _1);
    }
    public static function _go12Funcs(__self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab):Array<Func> {
        return [for (i in stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._go12Funcs(__self__)) i];
    }
    public static function _functabFieldSize(__self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab):StdTypes.Int {
        return stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._functabFieldSize(__self__);
    }
    public static function _funcTab(__self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab):T_funcTab {
        return stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._funcTab(__self__);
    }
    public static function _funcName(__self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, _0:std.UInt):String {
        final _0 = (_0 : stdgo.GoUInt32);
        return stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._funcName(__self__, _0);
    }
    public static function _funcData(__self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, _0:std.UInt):T_funcData {
        final _0 = (_0 : stdgo.GoUInt32);
        return stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._funcData(__self__, _0);
    }
    public static function _findFunc(__self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, _0:haxe.UInt64):T_funcData {
        final _0 = (_0 : stdgo.GoUInt64);
        return stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._findFunc(__self__, _0);
    }
    public static function _findFileLine(__self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, _0:haxe.UInt64, _1:std.UInt, _2:std.UInt, _3:StdTypes.Int, _4:StdTypes.Int, _5:Array<std.UInt>):haxe.UInt64 {
        final _0 = (_0 : stdgo.GoUInt64);
        final _1 = (_1 : stdgo.GoUInt32);
        final _2 = (_2 : stdgo.GoUInt32);
        final _3 = (_3 : stdgo.GoInt32);
        final _4 = (_4 : stdgo.GoInt32);
        final _5 = ([for (i in _5) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension._findFileLine(__self__, _0, _1, _2, _3, _4, _5);
    }
    public static function pCToLine(__self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, _0:haxe.UInt64):StdTypes.Int {
        final _0 = (_0 : stdgo.GoUInt64);
        return stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension.pCToLine(__self__, _0);
    }
    public static function lineToPC(__self__:stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab, _0:StdTypes.Int, _1:haxe.UInt64):haxe.UInt64 {
        final _0 = (_0 : stdgo.GoInt);
        final _1 = (_1 : stdgo.GoUInt64);
        return stdgo._internal.debug.gosym.Gosym_T_funcTab_static_extension.T_funcTab_static_extension.lineToPC(__self__, _0, _1);
    }
}
