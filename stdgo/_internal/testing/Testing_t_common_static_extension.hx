package stdgo._internal.testing;
@:keep @:allow(stdgo._internal.testing.Testing.T_common_asInterface) class T_common_static_extension {
    @:keep
    @:tdfield
    static public function _runCleanup( _c:stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>, _ph:stdgo._internal.testing.Testing_t_panichandling.T_panicHandling):stdgo.AnyInterface throw "T_common:testing._runCleanup is not yet implemented";
    @:keep
    @:tdfield
    static public function setenv( _c:stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>, _key:stdgo.GoString, _value:stdgo.GoString):Void throw "T_common:testing.setenv is not yet implemented";
    @:keep
    @:tdfield
    static public function tempDir( _c:stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>):stdgo.GoString {
        @:recv var _c:stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common> = _c;
        final pattern = "";
        final obj = stdgo._internal.os.Os_mkdirtemp.mkdirTemp("", pattern);
        _c._tempDir = obj._0;
        _c._tempDirErr = obj._1;
        if (_c._tempDirErr != null) {
            _c.fatalf("TempDir: %v", stdgo.Go.toInterface(_c._tempDirErr));
        } else {
            _c.cleanup(() -> {
                stdgo._internal.os.Os_removeall.removeAll(_c._tempDir);
            });
        };
        return _c._tempDir;
    }
    @:keep
    @:tdfield
    static public function cleanup( _c:stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>, _f:() -> Void):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common> = _c;
        _c._cleanups = _c._cleanups.__append__(_f);
    }
    @:keep
    @:tdfield
    static public function helper( _c:stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common> = _c;
    }
    @:keep
    @:tdfield
    static public function skipped( _c:stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>):Bool return _c._skipped;
    @:keep
    @:tdfield
    static public function skipNow( _c:stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common> = _c;
        _c._skipped = true;
        throw "__skip__";
    }
    @:keep
    @:tdfield
    static public function skipf( _c:stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _c:stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common> = _c;
        stdgo._internal.fmt.Fmt_printf.printf(_format, ...[for (arg in _args) arg]);
        _c.skipNow();
    }
    @:keep
    @:tdfield
    static public function skip( _c:stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _c:stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common> = _c;
        stdgo._internal.fmt.Fmt_println.println(...[for (arg in _args) arg]);
        _c.skipNow();
    }
    @:keep
    @:tdfield
    static public function fatalf( _c:stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _c:stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common> = _c;
        stdgo._internal.fmt.Fmt_printf.printf(_format, ...[for (arg in _args) arg]);
        _c.failNow();
    }
    @:keep
    @:tdfield
    static public function fatal( _c:stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _c:stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common> = _c;
        stdgo._internal.fmt.Fmt_println.println(...[for (arg in _args) arg]);
        _c.failNow();
    }
    @:keep
    @:tdfield
    static public function errorf( _c:stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _c:stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common> = _c;
        stdgo._internal.fmt.Fmt_printf.printf(_format + "\n", ...[for (arg in _args) arg]);
        _c.fail();
    }
    @:keep
    @:tdfield
    static public function error( _c:stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _c:stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common> = _c;
        stdgo._internal.fmt.Fmt_println.println(...[for (arg in _args) arg]);
        _c.fail();
    }
    @:keep
    @:tdfield
    static public function logf( _c:stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _c:stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common> = _c;
    }
    @:keep
    @:tdfield
    static public function log( _c:stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _c:stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common> = _c;
    }
    @:keep
    @:tdfield
    static public function _logDepth( _c:stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>, _s:stdgo.GoString, _depth:stdgo.GoInt):Void throw "T_common:testing._logDepth is not yet implemented";
    @:keep
    @:tdfield
    static public function _log( _c:stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>, _s:stdgo.GoString):Void throw "T_common:testing._log is not yet implemented";
    @:keep
    @:tdfield
    static public function failNow( _c:stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common> = _c;
        _c._failed = true;
        throw "__fail__";
    }
    @:keep
    @:tdfield
    static public function failed( _c:stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>):Bool return _c._failed;
    @:keep
    @:tdfield
    static public function fail( _c:stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common> = _c;
        _c._failed = true;
        if (@:privateAccess ++_c.failCount > 200) {
            trace("fail count exceeded max");
            #if (sys || hxnodejs) Sys.exit(1) #else null #end;
        };
    }
    @:keep
    @:tdfield
    static public function _setRan( _c:stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>):Void throw "T_common:testing._setRan is not yet implemented";
    @:keep
    @:tdfield
    static public function name( _c:stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>):stdgo.GoString throw "T_common:testing.name is not yet implemented";
    @:keep
    @:tdfield
    static public function _private( _c:stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>):Void throw "T_common:testing._private is not yet implemented";
    @:keep
    @:tdfield
    static public function _flushToParent( _c:stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>, _testName:stdgo.GoString, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void throw "T_common:testing._flushToParent is not yet implemented";
    @:keep
    @:tdfield
    static public function _decorate( _c:stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>, _s:stdgo.GoString, _skip:stdgo.GoInt):stdgo.GoString throw "T_common:testing._decorate is not yet implemented";
    @:keep
    @:tdfield
    static public function _frameSkip( _c:stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>, _skip:stdgo.GoInt):stdgo._internal.runtime.Runtime_frame.Frame throw "T_common:testing._frameSkip is not yet implemented";
    @:keep
    @:tdfield
    static public function _checkFuzzFn( _c:stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>, _name:stdgo.GoString):Void throw "T_common:testing._checkFuzzFn is not yet implemented";
}
