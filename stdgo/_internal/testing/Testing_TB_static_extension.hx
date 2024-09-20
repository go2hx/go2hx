package stdgo._internal.testing;
@:keep class TB_static_extension {
    static public function _private(t:stdgo._internal.testing.Testing_TB.TB):Void t._private();
    static public function tempDir(t:stdgo._internal.testing.Testing_TB.TB):stdgo.GoString return t.tempDir();
    static public function skipped(t:stdgo._internal.testing.Testing_TB.TB):Bool return t.skipped();
    static public function skipf(t:stdgo._internal.testing.Testing_TB.TB, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void t.skipf(_format, ..._args);
    static public function skipNow(t:stdgo._internal.testing.Testing_TB.TB):Void t.skipNow();
    static public function skip(t:stdgo._internal.testing.Testing_TB.TB, _args:haxe.Rest<stdgo.AnyInterface>):Void t.skip(..._args);
    static public function setenv(t:stdgo._internal.testing.Testing_TB.TB, _key:stdgo.GoString, _value:stdgo.GoString):Void t.setenv(_key, _value);
    static public function name(t:stdgo._internal.testing.Testing_TB.TB):stdgo.GoString return t.name();
    static public function logf(t:stdgo._internal.testing.Testing_TB.TB, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void t.logf(_format, ..._args);
    static public function log(t:stdgo._internal.testing.Testing_TB.TB, _args:haxe.Rest<stdgo.AnyInterface>):Void t.log(..._args);
    static public function helper(t:stdgo._internal.testing.Testing_TB.TB):Void t.helper();
    static public function fatalf(t:stdgo._internal.testing.Testing_TB.TB, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void t.fatalf(_format, ..._args);
    static public function fatal(t:stdgo._internal.testing.Testing_TB.TB, _args:haxe.Rest<stdgo.AnyInterface>):Void t.fatal(..._args);
    static public function failed(t:stdgo._internal.testing.Testing_TB.TB):Bool return t.failed();
    static public function failNow(t:stdgo._internal.testing.Testing_TB.TB):Void t.failNow();
    static public function fail(t:stdgo._internal.testing.Testing_TB.TB):Void t.fail();
    static public function errorf(t:stdgo._internal.testing.Testing_TB.TB, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void t.errorf(_format, ..._args);
    static public function error(t:stdgo._internal.testing.Testing_TB.TB, _args:haxe.Rest<stdgo.AnyInterface>):Void t.error(..._args);
    static public function cleanup(t:stdgo._internal.testing.Testing_TB.TB, _0:() -> Void):Void t.cleanup(_0);
}
