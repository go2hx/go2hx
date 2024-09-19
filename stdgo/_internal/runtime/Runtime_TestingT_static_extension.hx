package stdgo._internal.runtime;
@:keep class TestingT_static_extension {
    static public function tempDir(t:TestingT):stdgo.GoString return t.tempDir();
    static public function skipped(t:TestingT):Bool return t.skipped();
    static public function skipf(t:TestingT, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void t.skipf(_format, ..._args);
    static public function skipNow(t:TestingT):Void t.skipNow();
    static public function skip(t:TestingT, _args:haxe.Rest<stdgo.AnyInterface>):Void t.skip(..._args);
    static public function setenv(t:TestingT, _key:stdgo.GoString, _value:stdgo.GoString):Void t.setenv(_key, _value);
    static public function name(t:TestingT):stdgo.GoString return t.name();
    static public function logf(t:TestingT, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void t.logf(_format, ..._args);
    static public function log(t:TestingT, _args:haxe.Rest<stdgo.AnyInterface>):Void t.log(..._args);
    static public function helper(t:TestingT):Void t.helper();
    static public function fatalf(t:TestingT, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void t.fatalf(_format, ..._args);
    static public function fatal(t:TestingT, _args:haxe.Rest<stdgo.AnyInterface>):Void t.fatal(..._args);
    static public function failed(t:TestingT):Bool return t.failed();
    static public function failNow(t:TestingT):Void t.failNow();
    static public function fail(t:TestingT):Void t.fail();
    static public function errorf(t:TestingT, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void t.errorf(_format, ..._args);
    static public function error(t:TestingT, _args:haxe.Rest<stdgo.AnyInterface>):Void t.error(..._args);
    static public function cleanup(t:TestingT, _0:() -> Void):Void t.cleanup(_0);
}
