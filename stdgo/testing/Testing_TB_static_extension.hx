package stdgo.testing;
class TB_static_extension {
    static public function _private(t:stdgo._internal.testing.Testing_TB.TB):Void {
        stdgo._internal.testing.Testing_TB_static_extension.TB_static_extension._private(t);
    }
    static public function tempDir(t:stdgo._internal.testing.Testing_TB.TB):String {
        return stdgo._internal.testing.Testing_TB_static_extension.TB_static_extension.tempDir(t);
    }
    static public function skipped(t:stdgo._internal.testing.Testing_TB.TB):Bool {
        return stdgo._internal.testing.Testing_TB_static_extension.TB_static_extension.skipped(t);
    }
    static public function skipf(t:stdgo._internal.testing.Testing_TB.TB, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _format = (_format : stdgo.GoString);
        stdgo._internal.testing.Testing_TB_static_extension.TB_static_extension.skipf(t, _format, ...[for (i in _args) i]);
    }
    static public function skipNow(t:stdgo._internal.testing.Testing_TB.TB):Void {
        stdgo._internal.testing.Testing_TB_static_extension.TB_static_extension.skipNow(t);
    }
    static public function skip(t:stdgo._internal.testing.Testing_TB.TB, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.testing.Testing_TB_static_extension.TB_static_extension.skip(t, ...[for (i in _args) i]);
    }
    static public function setenv(t:stdgo._internal.testing.Testing_TB.TB, _key:String, _value:String):Void {
        final _key = (_key : stdgo.GoString);
        final _value = (_value : stdgo.GoString);
        stdgo._internal.testing.Testing_TB_static_extension.TB_static_extension.setenv(t, _key, _value);
    }
    static public function name(t:stdgo._internal.testing.Testing_TB.TB):String {
        return stdgo._internal.testing.Testing_TB_static_extension.TB_static_extension.name(t);
    }
    static public function logf(t:stdgo._internal.testing.Testing_TB.TB, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _format = (_format : stdgo.GoString);
        stdgo._internal.testing.Testing_TB_static_extension.TB_static_extension.logf(t, _format, ...[for (i in _args) i]);
    }
    static public function log(t:stdgo._internal.testing.Testing_TB.TB, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.testing.Testing_TB_static_extension.TB_static_extension.log(t, ...[for (i in _args) i]);
    }
    static public function helper(t:stdgo._internal.testing.Testing_TB.TB):Void {
        stdgo._internal.testing.Testing_TB_static_extension.TB_static_extension.helper(t);
    }
    static public function fatalf(t:stdgo._internal.testing.Testing_TB.TB, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _format = (_format : stdgo.GoString);
        stdgo._internal.testing.Testing_TB_static_extension.TB_static_extension.fatalf(t, _format, ...[for (i in _args) i]);
    }
    static public function fatal(t:stdgo._internal.testing.Testing_TB.TB, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.testing.Testing_TB_static_extension.TB_static_extension.fatal(t, ...[for (i in _args) i]);
    }
    static public function failed(t:stdgo._internal.testing.Testing_TB.TB):Bool {
        return stdgo._internal.testing.Testing_TB_static_extension.TB_static_extension.failed(t);
    }
    static public function failNow(t:stdgo._internal.testing.Testing_TB.TB):Void {
        stdgo._internal.testing.Testing_TB_static_extension.TB_static_extension.failNow(t);
    }
    static public function fail(t:stdgo._internal.testing.Testing_TB.TB):Void {
        stdgo._internal.testing.Testing_TB_static_extension.TB_static_extension.fail(t);
    }
    static public function errorf(t:stdgo._internal.testing.Testing_TB.TB, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _format = (_format : stdgo.GoString);
        stdgo._internal.testing.Testing_TB_static_extension.TB_static_extension.errorf(t, _format, ...[for (i in _args) i]);
    }
    static public function error(t:stdgo._internal.testing.Testing_TB.TB, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.testing.Testing_TB_static_extension.TB_static_extension.error(t, ...[for (i in _args) i]);
    }
    static public function cleanup(t:stdgo._internal.testing.Testing_TB.TB, _0:() -> Void):Void {
        final _0 = _0;
        stdgo._internal.testing.Testing_TB_static_extension.TB_static_extension.cleanup(t, _0);
    }
}
