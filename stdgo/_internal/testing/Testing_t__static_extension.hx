package stdgo._internal.testing;
@:keep @:allow(stdgo._internal.testing.Testing.T__asInterface) class T__static_extension {
    @:keep
    @:tdfield
    static public function _report( _t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void throw "T_:testing._report is not yet implemented";
    @:keep
    @:tdfield
    static public function deadline( _t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; } throw "T_:testing.deadline is not yet implemented";
    @:keep
    @:tdfield
    static public function run( _t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _name:stdgo.GoString, _f:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_> -> Void):Bool return true;
    @:keep
    @:tdfield
    static public function setenv( _t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _key:stdgo.GoString, _value:stdgo.GoString):Void throw "T_:testing.setenv is not yet implemented";
    @:keep
    @:tdfield
    static public function parallel( _t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void throw "T_:testing.parallel is not yet implemented";
    @:embedded
    @:embeddededffieldsffun
    public static function _setRan( __self__:stdgo._internal.testing.Testing_t_.T_):Void return @:_5 __self__._setRan();
    @:embedded
    @:embeddededffieldsffun
    public static function _runCleanup( __self__:stdgo._internal.testing.Testing_t_.T_, _0:stdgo._internal.testing.Testing_t_panichandling.T_panicHandling):stdgo.AnyInterface return @:_5 __self__._runCleanup(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _private( __self__:stdgo._internal.testing.Testing_t_.T_):Void return @:_5 __self__._private();
    @:embedded
    @:embeddededffieldsffun
    public static function _logDepth( __self__:stdgo._internal.testing.Testing_t_.T_, _0:stdgo.GoString, _1:stdgo.GoInt):Void return @:_5 __self__._logDepth(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _log( __self__:stdgo._internal.testing.Testing_t_.T_, _0:stdgo.GoString):Void return @:_5 __self__._log(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _frameSkip( __self__:stdgo._internal.testing.Testing_t_.T_, _0:stdgo.GoInt):stdgo._internal.runtime.Runtime_frame.Frame return @:_5 __self__._frameSkip(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _flushToParent( __self__:stdgo._internal.testing.Testing_t_.T_, _0:stdgo.GoString, _1:stdgo.GoString, _2:haxe.Rest<stdgo.AnyInterface>):Void return @:_5 __self__._flushToParent(_0, _1, ...[for (i in _2) i]);
    @:embedded
    @:embeddededffieldsffun
    public static function _decorate( __self__:stdgo._internal.testing.Testing_t_.T_, _0:stdgo.GoString, _1:stdgo.GoInt):stdgo.GoString return @:_5 __self__._decorate(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _checkFuzzFn( __self__:stdgo._internal.testing.Testing_t_.T_, _0:stdgo.GoString):Void return @:_5 __self__._checkFuzzFn(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function tempDir( __self__:stdgo._internal.testing.Testing_t_.T_):stdgo.GoString return @:_5 __self__.tempDir();
    @:embedded
    @:embeddededffieldsffun
    public static function skipped( __self__:stdgo._internal.testing.Testing_t_.T_):Bool return @:_5 __self__.skipped();
    @:embedded
    @:embeddededffieldsffun
    public static function skipf( __self__:stdgo._internal.testing.Testing_t_.T_, _0:stdgo.GoString, _1:haxe.Rest<stdgo.AnyInterface>):Void return @:_5 __self__.skipf(_0, ...[for (i in _1) i]);
    @:embedded
    @:embeddededffieldsffun
    public static function skipNow( __self__:stdgo._internal.testing.Testing_t_.T_):Void return @:_5 __self__.skipNow();
    @:embedded
    @:embeddededffieldsffun
    public static function skip( __self__:stdgo._internal.testing.Testing_t_.T_, _0:haxe.Rest<stdgo.AnyInterface>):Void return @:_5 __self__.skip(...[for (i in _0) i]);
    @:embedded
    @:embeddededffieldsffun
    public static function name( __self__:stdgo._internal.testing.Testing_t_.T_):stdgo.GoString return @:_5 __self__.name();
    @:embedded
    @:embeddededffieldsffun
    public static function logf( __self__:stdgo._internal.testing.Testing_t_.T_, _0:stdgo.GoString, _1:haxe.Rest<stdgo.AnyInterface>):Void return @:_5 __self__.logf(_0, ...[for (i in _1) i]);
    @:embedded
    @:embeddededffieldsffun
    public static function log( __self__:stdgo._internal.testing.Testing_t_.T_, _0:haxe.Rest<stdgo.AnyInterface>):Void return @:_5 __self__.log(...[for (i in _0) i]);
    @:embedded
    @:embeddededffieldsffun
    public static function helper( __self__:stdgo._internal.testing.Testing_t_.T_):Void return @:_5 __self__.helper();
    @:embedded
    @:embeddededffieldsffun
    public static function fatalf( __self__:stdgo._internal.testing.Testing_t_.T_, _0:stdgo.GoString, _1:haxe.Rest<stdgo.AnyInterface>):Void return @:_5 __self__.fatalf(_0, ...[for (i in _1) i]);
    @:embedded
    @:embeddededffieldsffun
    public static function fatal( __self__:stdgo._internal.testing.Testing_t_.T_, _0:haxe.Rest<stdgo.AnyInterface>):Void return @:_5 __self__.fatal(...[for (i in _0) i]);
    @:embedded
    @:embeddededffieldsffun
    public static function failed( __self__:stdgo._internal.testing.Testing_t_.T_):Bool return @:_5 __self__.failed();
    @:embedded
    @:embeddededffieldsffun
    public static function failNow( __self__:stdgo._internal.testing.Testing_t_.T_):Void return @:_5 __self__.failNow();
    @:embedded
    @:embeddededffieldsffun
    public static function fail( __self__:stdgo._internal.testing.Testing_t_.T_):Void return @:_5 __self__.fail();
    @:embedded
    @:embeddededffieldsffun
    public static function errorf( __self__:stdgo._internal.testing.Testing_t_.T_, _0:stdgo.GoString, _1:haxe.Rest<stdgo.AnyInterface>):Void return @:_5 __self__.errorf(_0, ...[for (i in _1) i]);
    @:embedded
    @:embeddededffieldsffun
    public static function error( __self__:stdgo._internal.testing.Testing_t_.T_, _0:haxe.Rest<stdgo.AnyInterface>):Void return @:_5 __self__.error(...[for (i in _0) i]);
    @:embedded
    @:embeddededffieldsffun
    public static function cleanup( __self__:stdgo._internal.testing.Testing_t_.T_, _0:() -> Void):Void return @:_5 __self__.cleanup(_0);
}
