package stdgo._internal.syscall.js;
@:keep @:allow(stdgo._internal.syscall.js.Js.Error_asInterface) class Error_static_extension {
    @:keep
    static public function error( _e:stdgo._internal.syscall.js.Js_Error.Error):stdgo.GoString throw "Error:syscall.js.error is not yet implemented";
    @:embedded
    public static function _isNumber( __self__:stdgo._internal.syscall.js.Js_Error.Error):Bool return __self__._isNumber();
    @:embedded
    public static function _float( __self__:stdgo._internal.syscall.js.Js_Error.Error, _p:stdgo.GoString):stdgo.GoFloat64 return __self__._float(_p);
    @:embedded
    public static function type( __self__:stdgo._internal.syscall.js.Js_Error.Error):stdgo._internal.syscall.js.Js_Type_.Type_ return __self__.type();
    @:embedded
    public static function truthy( __self__:stdgo._internal.syscall.js.Js_Error.Error):Bool return __self__.truthy();
    @:embedded
    public static function string( __self__:stdgo._internal.syscall.js.Js_Error.Error):stdgo.GoString return __self__.string();
    @:embedded
    public static function setIndex( __self__:stdgo._internal.syscall.js.Js_Error.Error, _i:stdgo.GoInt, _x:stdgo.AnyInterface) __self__.setIndex(_i, _x);
    @:embedded
    public static function set( __self__:stdgo._internal.syscall.js.Js_Error.Error, _p:stdgo.GoString, _x:stdgo.AnyInterface) __self__.set(_p, _x);
    @:embedded
    public static function new_( __self__:stdgo._internal.syscall.js.Js_Error.Error, _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Js_Value.Value return __self__.new_(...[for (i in _args) i]);
    @:embedded
    public static function length_( __self__:stdgo._internal.syscall.js.Js_Error.Error):stdgo.GoInt return __self__.length_();
    @:embedded
    public static function isUndefined( __self__:stdgo._internal.syscall.js.Js_Error.Error):Bool return __self__.isUndefined();
    @:embedded
    public static function isNull( __self__:stdgo._internal.syscall.js.Js_Error.Error):Bool return __self__.isNull();
    @:embedded
    public static function isNaN( __self__:stdgo._internal.syscall.js.Js_Error.Error):Bool return __self__.isNaN();
    @:embedded
    public static function invoke( __self__:stdgo._internal.syscall.js.Js_Error.Error, _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Js_Value.Value return __self__.invoke(...[for (i in _args) i]);
    @:embedded
    public static function int_( __self__:stdgo._internal.syscall.js.Js_Error.Error):stdgo.GoInt return __self__.int_();
    @:embedded
    public static function instanceOf( __self__:stdgo._internal.syscall.js.Js_Error.Error, __0:stdgo._internal.syscall.js.Js_Value.Value):Bool return __self__.instanceOf(__0);
    @:embedded
    public static function index( __self__:stdgo._internal.syscall.js.Js_Error.Error, _i:stdgo.GoInt):stdgo._internal.syscall.js.Js_Value.Value return __self__.index(_i);
    @:embedded
    public static function get( __self__:stdgo._internal.syscall.js.Js_Error.Error, _p:stdgo.GoString):stdgo._internal.syscall.js.Js_Value.Value return __self__.get(_p);
    @:embedded
    public static function float_( __self__:stdgo._internal.syscall.js.Js_Error.Error):stdgo.GoFloat64 return __self__.float_();
    @:embedded
    public static function equal( __self__:stdgo._internal.syscall.js.Js_Error.Error, __0:stdgo._internal.syscall.js.Js_Value.Value):Bool return __self__.equal(__0);
    @:embedded
    public static function delete( __self__:stdgo._internal.syscall.js.Js_Error.Error, _p:stdgo.GoString) __self__.delete(_p);
    @:embedded
    public static function call( __self__:stdgo._internal.syscall.js.Js_Error.Error, _m:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.syscall.js.Js_Value.Value return __self__.call(_m, ...[for (i in _args) i]);
    @:embedded
    public static function bool_( __self__:stdgo._internal.syscall.js.Js_Error.Error):Bool return __self__.bool_();
}
