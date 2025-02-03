package stdgo.testing;
class T_common_static_extension {
    static public function _runCleanup(_c:T_common, _ph:T_panicHandling):stdgo.AnyInterface {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_T_common.T_common>);
        return stdgo._internal.testing.Testing_T_common_static_extension.T_common_static_extension._runCleanup(_c, _ph);
    }
    static public function setenv(_c:T_common, _key:String, _value:String):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_T_common.T_common>);
        final _key = (_key : stdgo.GoString);
        final _value = (_value : stdgo.GoString);
        stdgo._internal.testing.Testing_T_common_static_extension.T_common_static_extension.setenv(_c, _key, _value);
    }
    static public function tempDir(_c:T_common):String {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_T_common.T_common>);
        return stdgo._internal.testing.Testing_T_common_static_extension.T_common_static_extension.tempDir(_c);
    }
    static public function cleanup(_c:T_common, _f:() -> Void):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_T_common.T_common>);
        final _f = _f;
        stdgo._internal.testing.Testing_T_common_static_extension.T_common_static_extension.cleanup(_c, _f);
    }
    static public function helper(_c:T_common):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_T_common.T_common>);
        stdgo._internal.testing.Testing_T_common_static_extension.T_common_static_extension.helper(_c);
    }
    static public function skipped(_c:T_common):Bool {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_T_common.T_common>);
        return stdgo._internal.testing.Testing_T_common_static_extension.T_common_static_extension.skipped(_c);
    }
    static public function skipNow(_c:T_common):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_T_common.T_common>);
        stdgo._internal.testing.Testing_T_common_static_extension.T_common_static_extension.skipNow(_c);
    }
    static public function skipf(_c:T_common, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_T_common.T_common>);
        final _format = (_format : stdgo.GoString);
        stdgo._internal.testing.Testing_T_common_static_extension.T_common_static_extension.skipf(_c, _format, ...[for (i in _args) i]);
    }
    static public function skip(_c:T_common, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_T_common.T_common>);
        stdgo._internal.testing.Testing_T_common_static_extension.T_common_static_extension.skip(_c, ...[for (i in _args) i]);
    }
    static public function fatalf(_c:T_common, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_T_common.T_common>);
        final _format = (_format : stdgo.GoString);
        stdgo._internal.testing.Testing_T_common_static_extension.T_common_static_extension.fatalf(_c, _format, ...[for (i in _args) i]);
    }
    static public function fatal(_c:T_common, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_T_common.T_common>);
        stdgo._internal.testing.Testing_T_common_static_extension.T_common_static_extension.fatal(_c, ...[for (i in _args) i]);
    }
    static public function errorf(_c:T_common, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_T_common.T_common>);
        final _format = (_format : stdgo.GoString);
        stdgo._internal.testing.Testing_T_common_static_extension.T_common_static_extension.errorf(_c, _format, ...[for (i in _args) i]);
    }
    static public function error(_c:T_common, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_T_common.T_common>);
        stdgo._internal.testing.Testing_T_common_static_extension.T_common_static_extension.error(_c, ...[for (i in _args) i]);
    }
    static public function logf(_c:T_common, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_T_common.T_common>);
        final _format = (_format : stdgo.GoString);
        stdgo._internal.testing.Testing_T_common_static_extension.T_common_static_extension.logf(_c, _format, ...[for (i in _args) i]);
    }
    static public function log(_c:T_common, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_T_common.T_common>);
        stdgo._internal.testing.Testing_T_common_static_extension.T_common_static_extension.log(_c, ...[for (i in _args) i]);
    }
    static public function _logDepth(_c:T_common, _s:String, _depth:StdTypes.Int):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_T_common.T_common>);
        final _s = (_s : stdgo.GoString);
        final _depth = (_depth : stdgo.GoInt);
        stdgo._internal.testing.Testing_T_common_static_extension.T_common_static_extension._logDepth(_c, _s, _depth);
    }
    static public function _log(_c:T_common, _s:String):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_T_common.T_common>);
        final _s = (_s : stdgo.GoString);
        stdgo._internal.testing.Testing_T_common_static_extension.T_common_static_extension._log(_c, _s);
    }
    static public function failNow(_c:T_common):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_T_common.T_common>);
        stdgo._internal.testing.Testing_T_common_static_extension.T_common_static_extension.failNow(_c);
    }
    static public function failed(_c:T_common):Bool {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_T_common.T_common>);
        return stdgo._internal.testing.Testing_T_common_static_extension.T_common_static_extension.failed(_c);
    }
    static public function fail(_c:T_common):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_T_common.T_common>);
        stdgo._internal.testing.Testing_T_common_static_extension.T_common_static_extension.fail(_c);
    }
    static public function _setRan(_c:T_common):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_T_common.T_common>);
        stdgo._internal.testing.Testing_T_common_static_extension.T_common_static_extension._setRan(_c);
    }
    static public function name(_c:T_common):String {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_T_common.T_common>);
        return stdgo._internal.testing.Testing_T_common_static_extension.T_common_static_extension.name(_c);
    }
    static public function _private(_c:T_common):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_T_common.T_common>);
        stdgo._internal.testing.Testing_T_common_static_extension.T_common_static_extension._private(_c);
    }
    static public function _flushToParent(_c:T_common, _testName:String, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_T_common.T_common>);
        final _testName = (_testName : stdgo.GoString);
        final _format = (_format : stdgo.GoString);
        stdgo._internal.testing.Testing_T_common_static_extension.T_common_static_extension._flushToParent(_c, _testName, _format, ...[for (i in _args) i]);
    }
    static public function _decorate(_c:T_common, _s:String, _skip:StdTypes.Int):String {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_T_common.T_common>);
        final _s = (_s : stdgo.GoString);
        final _skip = (_skip : stdgo.GoInt);
        return stdgo._internal.testing.Testing_T_common_static_extension.T_common_static_extension._decorate(_c, _s, _skip);
    }
    static public function _frameSkip(_c:T_common, _skip:StdTypes.Int):stdgo._internal.runtime.Runtime_Frame.Frame {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_T_common.T_common>);
        final _skip = (_skip : stdgo.GoInt);
        return stdgo._internal.testing.Testing_T_common_static_extension.T_common_static_extension._frameSkip(_c, _skip);
    }
    static public function _checkFuzzFn(_c:T_common, _name:String):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_T_common.T_common>);
        final _name = (_name : stdgo.GoString);
        stdgo._internal.testing.Testing_T_common_static_extension.T_common_static_extension._checkFuzzFn(_c, _name);
    }
}
