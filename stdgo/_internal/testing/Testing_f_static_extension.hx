package stdgo._internal.testing;
@:keep @:allow(stdgo._internal.testing.Testing.F_asInterface) class F_static_extension {
    @:keep
    @:tdfield
    static public function _report( _f:stdgo.Ref<stdgo._internal.testing.Testing_f.F>):Void throw "F:testing._report is not yet implemented";
    @:keep
    @:tdfield
    static public function fuzz( _f:stdgo.Ref<stdgo._internal.testing.Testing_f.F>, _ff:stdgo.AnyInterface):Void throw "F:testing.fuzz is not yet implemented";
    @:keep
    @:tdfield
    static public function add( _f:stdgo.Ref<stdgo._internal.testing.Testing_f.F>, _args:haxe.Rest<stdgo.AnyInterface>):Void throw "F:testing.add is not yet implemented";
    @:keep
    @:tdfield
    static public function skipped( _f:stdgo.Ref<stdgo._internal.testing.Testing_f.F>):Bool throw "F:testing.skipped is not yet implemented";
    @:keep
    @:tdfield
    static public function fail( _f:stdgo.Ref<stdgo._internal.testing.Testing_f.F>):Void throw "F:testing.fail is not yet implemented";
    @:keep
    @:tdfield
    static public function helper( _f:stdgo.Ref<stdgo._internal.testing.Testing_f.F>):Void throw "F:testing.helper is not yet implemented";
    @:embedded
    @:embeddededffieldsffun
    public static function _setRan( __self__:stdgo._internal.testing.Testing_f.F):Void return @:_5 __self__._setRan();
    @:embedded
    @:embeddededffieldsffun
    public static function _runCleanup( __self__:stdgo._internal.testing.Testing_f.F, _0:stdgo._internal.testing.Testing_t_panichandling.T_panicHandling):stdgo.AnyInterface return @:_5 __self__._runCleanup(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _private( __self__:stdgo._internal.testing.Testing_f.F):Void return @:_5 __self__._private();
    @:embedded
    @:embeddededffieldsffun
    public static function _logDepth( __self__:stdgo._internal.testing.Testing_f.F, _0:stdgo.GoString, _1:stdgo.GoInt):Void return @:_5 __self__._logDepth(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _log( __self__:stdgo._internal.testing.Testing_f.F, _0:stdgo.GoString):Void return @:_5 __self__._log(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _frameSkip( __self__:stdgo._internal.testing.Testing_f.F, _0:stdgo.GoInt):stdgo._internal.runtime.Runtime_frame.Frame return @:_5 __self__._frameSkip(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _flushToParent( __self__:stdgo._internal.testing.Testing_f.F, _0:stdgo.GoString, _1:stdgo.GoString, _2:haxe.Rest<stdgo.AnyInterface>):Void return @:_5 __self__._flushToParent(_0, _1, ...[for (i in _2) i]);
    @:embedded
    @:embeddededffieldsffun
    public static function _decorate( __self__:stdgo._internal.testing.Testing_f.F, _0:stdgo.GoString, _1:stdgo.GoInt):stdgo.GoString return @:_5 __self__._decorate(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _checkFuzzFn( __self__:stdgo._internal.testing.Testing_f.F, _0:stdgo.GoString):Void return @:_5 __self__._checkFuzzFn(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function tempDir( __self__:stdgo._internal.testing.Testing_f.F):stdgo.GoString return @:_5 __self__.tempDir();
    @:embedded
    @:embeddededffieldsffun
    public static function skipf( __self__:stdgo._internal.testing.Testing_f.F, _0:stdgo.GoString, _1:haxe.Rest<stdgo.AnyInterface>):Void return @:_5 __self__.skipf(_0, ...[for (i in _1) i]);
    @:embedded
    @:embeddededffieldsffun
    public static function skipNow( __self__:stdgo._internal.testing.Testing_f.F):Void return @:_5 __self__.skipNow();
    @:embedded
    @:embeddededffieldsffun
    public static function skip( __self__:stdgo._internal.testing.Testing_f.F, _0:haxe.Rest<stdgo.AnyInterface>):Void return @:_5 __self__.skip(...[for (i in _0) i]);
    @:embedded
    @:embeddededffieldsffun
    public static function setenv( __self__:stdgo._internal.testing.Testing_f.F, _0:stdgo.GoString, _1:stdgo.GoString):Void return @:_5 __self__.setenv(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function name( __self__:stdgo._internal.testing.Testing_f.F):stdgo.GoString return @:_5 __self__.name();
    @:embedded
    @:embeddededffieldsffun
    public static function logf( __self__:stdgo._internal.testing.Testing_f.F, _0:stdgo.GoString, _1:haxe.Rest<stdgo.AnyInterface>):Void return @:_5 __self__.logf(_0, ...[for (i in _1) i]);
    @:embedded
    @:embeddededffieldsffun
    public static function log( __self__:stdgo._internal.testing.Testing_f.F, _0:haxe.Rest<stdgo.AnyInterface>):Void return @:_5 __self__.log(...[for (i in _0) i]);
    @:embedded
    @:embeddededffieldsffun
    public static function fatalf( __self__:stdgo._internal.testing.Testing_f.F, _0:stdgo.GoString, _1:haxe.Rest<stdgo.AnyInterface>):Void return @:_5 __self__.fatalf(_0, ...[for (i in _1) i]);
    @:embedded
    @:embeddededffieldsffun
    public static function fatal( __self__:stdgo._internal.testing.Testing_f.F, _0:haxe.Rest<stdgo.AnyInterface>):Void return @:_5 __self__.fatal(...[for (i in _0) i]);
    @:embedded
    @:embeddededffieldsffun
    public static function failed( __self__:stdgo._internal.testing.Testing_f.F):Bool return @:_5 __self__.failed();
    @:embedded
    @:embeddededffieldsffun
    public static function failNow( __self__:stdgo._internal.testing.Testing_f.F):Void return @:_5 __self__.failNow();
    @:embedded
    @:embeddededffieldsffun
    public static function errorf( __self__:stdgo._internal.testing.Testing_f.F, _0:stdgo.GoString, _1:haxe.Rest<stdgo.AnyInterface>):Void return @:_5 __self__.errorf(_0, ...[for (i in _1) i]);
    @:embedded
    @:embeddededffieldsffun
    public static function error( __self__:stdgo._internal.testing.Testing_f.F, _0:haxe.Rest<stdgo.AnyInterface>):Void return @:_5 __self__.error(...[for (i in _0) i]);
    @:embedded
    @:embeddededffieldsffun
    public static function cleanup( __self__:stdgo._internal.testing.Testing_f.F, _0:() -> Void):Void return @:_5 __self__.cleanup(_0);
}
