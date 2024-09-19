package stdgo._internal.testing;
@:keep class TB_static_extension {
    static public function _private(t:TB):Void t._private();
    static public function tempDir(t:TB):stdgo.GoString return t.tempDir();
    static public function skipped(t:TB):Bool return t.skipped();
    static public function skipf(t:TB, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void t.skipf(_format, ..._args);
    static public function skipNow(t:TB):Void t.skipNow();
    static public function skip(t:TB, _args:haxe.Rest<stdgo.AnyInterface>):Void t.skip(..._args);
    static public function setenv(t:TB, _key:stdgo.GoString, _value:stdgo.GoString):Void t.setenv(_key, _value);
    static public function name(t:TB):stdgo.GoString return t.name();
    static public function logf(t:TB, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void t.logf(_format, ..._args);
    static public function log(t:TB, _args:haxe.Rest<stdgo.AnyInterface>):Void t.log(..._args);
    static public function helper(t:TB):Void t.helper();
    static public function fatalf(t:TB, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void t.fatalf(_format, ..._args);
    static public function fatal(t:TB, _args:haxe.Rest<stdgo.AnyInterface>):Void t.fatal(..._args);
    static public function failed(t:TB):Bool return t.failed();
    static public function failNow(t:TB):Void t.failNow();
    static public function fail(t:TB):Void t.fail();
    static public function errorf(t:TB, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void t.errorf(_format, ..._args);
    static public function error(t:TB, _args:haxe.Rest<stdgo.AnyInterface>):Void t.error(..._args);
    static public function cleanup(t:TB, _0:() -> Void):Void t.cleanup(_0);
}
