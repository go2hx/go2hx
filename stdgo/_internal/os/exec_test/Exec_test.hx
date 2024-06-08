package stdgo._internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
import stdgo._internal.os.exec.Exec;
var _haveUnexpectedFDs : Bool = false;
var _exeOnce : T__struct_1 = ({ _path : ("" : stdgo.GoString), _err : (null : stdgo.Error), once : ({} : stdgo._internal.sync.Sync.Once) } : T__struct_1);
var _helperCommandUsed : stdgo._internal.sync.Sync.Map_ = ({} : stdgo._internal.sync.Sync.Map_);
final _stdinCloseTestString : stdgo.GoString = ("Some test string." : stdgo.GoString);
var _pathVar : stdgo.GoString = {
        var a = function():stdgo.GoString {
            if (false) {
                return ("path" : stdgo.GoString);
            };
            return ("PATH" : stdgo.GoString);
        };
        a();
    };
var _quitSignal : stdgo._internal.os.Os.Signal = (null : stdgo._internal.os.Os.Signal);
var _pipeSignal : stdgo._internal.os.Os.Signal = (null : stdgo._internal.os.Os.Signal);
var _helperCommands : stdgo.GoMap<stdgo.GoString, haxe.Rest<stdgo.GoString> -> Void> = ({
        final x = new stdgo.GoMap.GoStringMap<haxe.Rest<stdgo.GoString> -> Void>();
        x.__defaultValue__ = () -> null;
        @:mergeBlock {
            x.set(("echo" : stdgo.GoString), _cmdEcho);
            x.set(("echoenv" : stdgo.GoString), _cmdEchoEnv);
            x.set(("cat" : stdgo.GoString), _cmdCat);
            x.set(("pipetest" : stdgo.GoString), _cmdPipeTest);
            x.set(("stdinClose" : stdgo.GoString), _cmdStdinClose);
            x.set(("exit" : stdgo.GoString), _cmdExit);
            x.set(("describefiles" : stdgo.GoString), _cmdDescribeFiles);
            x.set(("stderrfail" : stdgo.GoString), _cmdStderrFail);
            x.set(("yes" : stdgo.GoString), _cmdYes);
            x.set(("hang" : stdgo.GoString), _cmdHang);
        };
        x;
    } : stdgo.GoMap<stdgo.GoString, haxe.Rest<stdgo.GoString> -> Void>);
@:keep class T__interface_0_static_extension {
    static public function fd(t:T__interface_0):stdgo.GoUIntptr return t.fd();
}
typedef T__interface_0 = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function fd():stdgo.GoUIntptr;
};
@:structInit @:private @:using(stdgo._internal.os.exec_test.Exec_test.T_delayedInfiniteReader_static_extension) class T_delayedInfiniteReader {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_delayedInfiniteReader();
    }
}
@:structInit @:private @:using(stdgo._internal.os.exec_test.Exec_test.T_badWriter_static_extension) class T_badWriter {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_badWriter();
    }
}
@:structInit @:private @:using(stdgo._internal.os.exec_test.Exec_test.T_tickReader_static_extension) class T_tickReader {
    public var _interval : stdgo._internal.time.Time.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time.Duration);
    public var _lastTick : stdgo._internal.time.Time.Time = ({} : stdgo._internal.time.Time.Time);
    public var _s : stdgo.GoString = "";
    public function new(?_interval:stdgo._internal.time.Time.Duration, ?_lastTick:stdgo._internal.time.Time.Time, ?_s:stdgo.GoString) {
        if (_interval != null) this._interval = _interval;
        if (_lastTick != null) this._lastTick = _lastTick;
        if (_s != null) this._s = _s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_tickReader(_interval, _lastTick, _s);
    }
}
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.os.exec_test.Exec_test.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo._internal.os.exec_test.Exec_test.T__struct_0_static_extension) typedef T__struct_0 = {
    public var name : stdgo.GoString;
    public var age : stdgo.GoInt;
};
class T__struct_1_asInterface {
    @:embedded
    public dynamic function _doSlow(_f:() -> Void):Void __self__.value._doSlow(_f);
    @:embedded
    public dynamic function do_(_f:() -> Void):Void __self__.value.do_(_f);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_1>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.os.exec_test.Exec_test.T__struct_1_asInterface) class T__struct_1_static_extension {
    @:embedded
    public static function _doSlow( __self__:T__struct_1, _f:() -> Void) __self__.once._doSlow(_f);
    @:embedded
    public static function do_( __self__:T__struct_1, _f:() -> Void) __self__.once.do_(_f);
}
@:local @:using(stdgo._internal.os.exec_test.Exec_test.T__struct_1_static_extension) typedef T__struct_1 = {
    public var _path : stdgo.GoString;
    public var _err : stdgo.Error;
    @:embedded
    public var once : stdgo._internal.sync.Sync.Once;
};
class T__struct_2_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_2>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.os.exec_test.Exec_test.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo._internal.os.exec_test.Exec_test.T__struct_2_static_extension) typedef T__struct_2 = {
    public var _path : stdgo.GoString;
    public var _args : stdgo.Slice<stdgo.GoString>;
    public var _want : stdgo.GoString;
};
class T__struct_3_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_3>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.os.exec_test.Exec_test.T__struct_3_asInterface) class T__struct_3_static_extension {

}
@:local @:using(stdgo._internal.os.exec_test.Exec_test.T__struct_3_static_extension) typedef T__struct_3 = {};
function testLookPath(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo._internal.internal.testenv.Testenv.mustHaveExec(stdgo.Go.asInterface(_t));
            var _tmpDir:stdgo.GoString = stdgo._internal.path.filepath.Filepath.join(_t.tempDir()?.__copy__(), ("testdir" : stdgo.GoString))?.__copy__();
            {
                var _err:stdgo.Error = stdgo._internal.os.Os.mkdir(_tmpDir?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs.FileMode));
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            var _executable:stdgo.GoString = ("execabs-test" : stdgo.GoString);
            if (false) {
                _executable = (_executable + ((".exe" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
            {
                var _err:stdgo.Error = stdgo._internal.os.Os.writeFile(stdgo._internal.path.filepath.Filepath.join(_tmpDir?.__copy__(), _executable?.__copy__())?.__copy__(), (new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(1 : stdgo.GoUInt8), (2 : stdgo.GoUInt8), (3 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (511u32 : stdgo._internal.io.fs.Fs.FileMode));
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            var __tmp__ = stdgo._internal.os.Os.getwd(), _cwd:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _err:stdgo.Error = stdgo._internal.os.Os.chdir(_cwd?.__copy__());
                        if (_err != null) {
                            throw stdgo.Go.toInterface(_err);
                        };
                    };
                };
                a();
            });
            {
                _err = stdgo._internal.os.Os.chdir(_tmpDir?.__copy__());
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            _t.setenv(("PWD" : stdgo.GoString), _tmpDir?.__copy__());
            _t.logf((". is %#q" : stdgo.GoString), stdgo.Go.toInterface(_tmpDir));
            var _origPath:stdgo.GoString = stdgo._internal.os.Os.getenv(_pathVar?.__copy__())?.__copy__();
            for (__56 => _errdot in (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("1" : stdgo.GoString), ("0" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
                _t.run((("GODEBUG=execerrdot=" : stdgo.GoString) + _errdot?.__copy__() : stdgo.GoString)?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
                    _t.setenv(("GODEBUG" : stdgo.GoString), ((("execerrdot=" : stdgo.GoString) + _errdot?.__copy__() : stdgo.GoString) + (",execwait=2" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                    for (__73 => _dir in (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("." : stdgo.GoString), ("../testdir" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
                        _t.run(((_pathVar + ("=" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _dir?.__copy__() : stdgo.GoString)?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
                            _t.setenv(_pathVar?.__copy__(), ((_dir + ((58 : stdgo.GoInt32) : stdgo.GoString)?.__copy__() : stdgo.GoString) + _origPath?.__copy__() : stdgo.GoString)?.__copy__());
                            var _good:stdgo.GoString = (_dir + ("/execabs-test" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                            {
                                var __tmp__ = lookPath(_good?.__copy__()), _found:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                if (((_err != null) || !stdgo._internal.strings.Strings.hasPrefix(_found?.__copy__(), _good?.__copy__()) : Bool)) {
                                    _t.fatalf(("LookPath(%#q) = %#q, %v, want \"%s...\", nil" : stdgo.GoString), stdgo.Go.toInterface(_good), stdgo.Go.toInterface(_found), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_good));
                                };
                            };
                            if (false) {
                                _good = (_dir + ("\\execabs-test" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                                {
                                    var __tmp__ = lookPath(_good?.__copy__()), _found:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                    if (((_err != null) || !stdgo._internal.strings.Strings.hasPrefix(_found?.__copy__(), _good?.__copy__()) : Bool)) {
                                        _t.fatalf(("LookPath(%#q) = %#q, %v, want \"%s...\", nil" : stdgo.GoString), stdgo.Go.toInterface(_good), stdgo.Go.toInterface(_found), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_good));
                                    };
                                };
                            };
                            var __tmp__ = lookPath(("execabs-test" : stdgo.GoString)), __106:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_errdot == (("1" : stdgo.GoString))) {
                                if (_err == null) {
                                    _t.fatalf(("LookPath didn\'t fail when finding a non-relative path" : stdgo.GoString));
                                } else if (!stdgo._internal.errors.Errors.is_(_err, errDot)) {
                                    _t.fatalf(("LookPath returned unexpected error: want Is ErrDot, got %q" : stdgo.GoString), stdgo.Go.toInterface(_err));
                                };
                            } else {
                                if (_err != null) {
                                    _t.fatalf(("LookPath failed unexpectedly: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                                };
                            };
                            var _cmd = command(("execabs-test" : stdgo.GoString));
                            if (_errdot == (("1" : stdgo.GoString))) {
                                if (_cmd.err == null) {
                                    _t.fatalf(("Command didn\'t fail when finding a non-relative path" : stdgo.GoString));
                                } else if (!stdgo._internal.errors.Errors.is_(_cmd.err, errDot)) {
                                    _t.fatalf(("Command returned unexpected error: want Is ErrDot, got %q" : stdgo.GoString), stdgo.Go.toInterface(_cmd.err));
                                };
                                _cmd.err = (null : stdgo.Error);
                            } else {
                                if (_cmd.err != null) {
                                    _t.fatalf(("Command failed unexpectedly: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                                };
                            };
                            {
                                var _err:stdgo.Error = _cmd.run();
                                if (_err == null) {
                                    _t.fatalf(("Run did not fail: expected exec error" : stdgo.GoString));
                                } else if (stdgo._internal.errors.Errors.is_(_err, errDot)) {
                                    _t.fatalf(("Run returned unexpected error ErrDot: want error like ENOEXEC: %q" : stdgo.GoString), stdgo.Go.toInterface(_err));
                                };
                            };
                        });
                    };
                });
            };
            _t.run((_pathVar + ("=$PWD" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
                _t.setenv(_pathVar?.__copy__(), ((_tmpDir + ((58 : stdgo.GoInt32) : stdgo.GoString)?.__copy__() : stdgo.GoString) + _origPath?.__copy__() : stdgo.GoString)?.__copy__());
                var _good:stdgo.GoString = stdgo._internal.path.filepath.Filepath.join(_tmpDir?.__copy__(), ("execabs-test" : stdgo.GoString))?.__copy__();
                {
                    var __tmp__ = lookPath(_good?.__copy__()), _found:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (((_err != null) || !stdgo._internal.strings.Strings.hasPrefix(_found?.__copy__(), _good?.__copy__()) : Bool)) {
                        _t.fatalf(("LookPath(%#q) = %#q, %v, want \\\"%s...\\\", nil" : stdgo.GoString), stdgo.Go.toInterface(_good), stdgo.Go.toInterface(_found), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_good));
                    };
                };
                {
                    var __tmp__ = lookPath(("execabs-test" : stdgo.GoString)), _found:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (((_err != null) || !stdgo._internal.strings.Strings.hasPrefix(_found?.__copy__(), _good?.__copy__()) : Bool)) {
                        _t.fatalf(("LookPath(%#q) = %#q, %v, want \\\"%s...\\\", nil" : stdgo.GoString), stdgo.Go.toInterface(("execabs-test" : stdgo.GoString)), stdgo.Go.toInterface(_found), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_good));
                    };
                };
                var _cmd = command(("execabs-test" : stdgo.GoString));
                if (_cmd.err != null) {
                    _t.fatalf(("Command(%#q).Err = %v; want nil" : stdgo.GoString), stdgo.Go.toInterface(("execabs-test" : stdgo.GoString)), stdgo.Go.toInterface(_cmd.err));
                };
            });
            _t.run((_pathVar + ("=$OTHER" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
                var _wantErrDot:Bool = false;
                _t.setenv(_pathVar?.__copy__(), stdgo.Go.str()?.__copy__());
                {
                    var __tmp__ = lookPath(("execabs-test" : stdgo.GoString)), _found:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (stdgo._internal.errors.Errors.is_(_err, errDot)) {
                        _wantErrDot = true;
                    } else if (_err == null) {
                        _t.fatalf(("with PATH=\'\', LookPath(%#q) = %#q; want non-nil error" : stdgo.GoString), stdgo.Go.toInterface(("execabs-test" : stdgo.GoString)), stdgo.Go.toInterface(_found));
                    };
                };
                var _dir:stdgo.GoString = _t.tempDir()?.__copy__();
                var _executable:stdgo.GoString = ("execabs-test" : stdgo.GoString);
                if (false) {
                    _executable = (_executable + ((".exe" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                };
                {
                    var _err:stdgo.Error = stdgo._internal.os.Os.writeFile(stdgo._internal.path.filepath.Filepath.join(_dir?.__copy__(), _executable?.__copy__())?.__copy__(), (new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(1 : stdgo.GoUInt8), (2 : stdgo.GoUInt8), (3 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (511u32 : stdgo._internal.io.fs.Fs.FileMode));
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                };
                _t.setenv(_pathVar?.__copy__(), ((_dir + ((58 : stdgo.GoInt32) : stdgo.GoString)?.__copy__() : stdgo.GoString) + _origPath?.__copy__() : stdgo.GoString)?.__copy__());
                var __tmp__ = lookPath(("execabs-test" : stdgo.GoString)), _found:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_wantErrDot) {
                    var _wantFound:stdgo.GoString = stdgo._internal.path.filepath.Filepath.join(("." : stdgo.GoString), _executable?.__copy__())?.__copy__();
                    if (((_found != _wantFound) || !stdgo._internal.errors.Errors.is_(_err, errDot) : Bool)) {
                        _t.fatalf(("LookPath(%#q) = %#q, %v, want %#q, Is ErrDot" : stdgo.GoString), stdgo.Go.toInterface(("execabs-test" : stdgo.GoString)), stdgo.Go.toInterface(_found), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_wantFound));
                    };
                } else {
                    var _wantFound:stdgo.GoString = stdgo._internal.path.filepath.Filepath.join(_dir?.__copy__(), _executable?.__copy__())?.__copy__();
                    if (((_found != _wantFound) || (_err != null) : Bool)) {
                        _t.fatalf(("LookPath(%#q) = %#q, %v, want %#q, nil" : stdgo.GoString), stdgo.Go.toInterface(("execabs-test" : stdgo.GoString)), stdgo.Go.toInterface(_found), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_wantFound));
                    };
                };
            });
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function exampleLookPath():Void {
        var __tmp__ = stdgo._internal.os.exec.Exec.lookPath(("fortune" : stdgo.GoString)), _path:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(("installing fortune is in your future" : stdgo.GoString)));
        };
        stdgo._internal.fmt.Fmt.printf(("fortune is available at %s\n" : stdgo.GoString), stdgo.Go.toInterface(_path));
    }
function exampleCommand():Void {
        var _cmd = stdgo._internal.os.exec.Exec.command(("tr" : stdgo.GoString), ("a-z" : stdgo.GoString), ("A-Z" : stdgo.GoString));
        _cmd.stdin = stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("some input" : stdgo.GoString)));
        var _out:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
        _cmd.stdout = stdgo.Go.asInterface((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>));
        var _err:stdgo.Error = _cmd.run();
        if (_err != null) {
            stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
        };
        stdgo._internal.fmt.Fmt.printf(("in all caps: %q\n" : stdgo.GoString), stdgo.Go.toInterface((_out.string() : stdgo.GoString)));
    }
function exampleCommand_environment():Void {
        var _cmd = stdgo._internal.os.exec.Exec.command(("prog" : stdgo.GoString));
        _cmd.env = (stdgo._internal.os.Os.environ_().__append__(("FOO=duplicate_value" : stdgo.GoString), ("FOO=actual_value" : stdgo.GoString)));
        {
            var _err:stdgo.Error = _cmd.run();
            if (_err != null) {
                stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
function exampleCmd_Output():Void {
        var __tmp__ = stdgo._internal.os.exec.Exec.command(("date" : stdgo.GoString)).output(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
        };
        stdgo._internal.fmt.Fmt.printf(("The date is %s\n" : stdgo.GoString), stdgo.Go.toInterface(_out));
    }
function exampleCmd_Run():Void {
        var _cmd = stdgo._internal.os.exec.Exec.command(("sleep" : stdgo.GoString), ("1" : stdgo.GoString));
        stdgo._internal.log.Log.printf(("Running command and waiting for it to finish..." : stdgo.GoString));
        var _err:stdgo.Error = _cmd.run();
        stdgo._internal.log.Log.printf(("Command finished with error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
    }
function exampleCmd_Start():Void {
        var _cmd = stdgo._internal.os.exec.Exec.command(("sleep" : stdgo.GoString), ("5" : stdgo.GoString));
        var _err:stdgo.Error = _cmd.start();
        if (_err != null) {
            stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
        };
        stdgo._internal.log.Log.printf(("Waiting for command to finish..." : stdgo.GoString));
        _err = _cmd.wait_();
        stdgo._internal.log.Log.printf(("Command finished with error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
    }
function exampleCmd_StdoutPipe():Void {
        var _cmd = stdgo._internal.os.exec.Exec.command(("echo" : stdgo.GoString), ("-n" : stdgo.GoString), ("{\"Name\": \"Bob\", \"Age\": 32}" : stdgo.GoString));
        var __tmp__ = _cmd.stdoutPipe(), _stdout:stdgo._internal.io.Io.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var _err:stdgo.Error = _cmd.start();
            if (_err != null) {
                stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _person:T__struct_0 = ({ name : ("" : stdgo.GoString), age : (0 : stdgo.GoInt) } : T__struct_0);
        {
            var _err:stdgo.Error = stdgo._internal.encoding.json.Json.newDecoder(_stdout).decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_person) : stdgo.Ref<T__struct_0>))));
            if (_err != null) {
                stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = _cmd.wait_();
            if (_err != null) {
                stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
        };
        stdgo._internal.fmt.Fmt.printf(("%s is %d years old\n" : stdgo.GoString), stdgo.Go.toInterface(_person.name), stdgo.Go.toInterface(_person.age));
    }
function exampleCmd_StdinPipe():Void {
        var _cmd = stdgo._internal.os.exec.Exec.command(("cat" : stdgo.GoString));
        var __tmp__ = _cmd.stdinPipe(), _stdin:stdgo._internal.io.Io.WriteCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
        };
        stdgo.Go.routine(() -> {
            var a = function():Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    __deferstack__.unshift(() -> _stdin.close());
                    stdgo._internal.io.Io.writeString(_stdin, ("values written to stdin are passed to cmd\'s standard input" : stdgo.GoString));
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return;
                    };
                } catch(__exception__) {
                    var exe:Dynamic = __exception__.native;
                    if ((exe is haxe.ValueException)) exe = exe.value;
                    if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                        exe = stdgo.Go.toInterface(__exception__.message);
                    };
                    stdgo.Go.recover_exception = exe;
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return;
                };
            };
            a();
        });
        var __tmp__ = _cmd.combinedOutput(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
        };
        stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_out));
    }
function exampleCmd_StderrPipe():Void {
        var _cmd = stdgo._internal.os.exec.Exec.command(("sh" : stdgo.GoString), ("-c" : stdgo.GoString), ("echo stdout; echo 1>&2 stderr" : stdgo.GoString));
        var __tmp__ = _cmd.stderrPipe(), _stderr:stdgo._internal.io.Io.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var _err:stdgo.Error = _cmd.start();
            if (_err != null) {
                stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var __tmp__ = stdgo._internal.io.Io.readAll(_stderr), _slurp:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __12:stdgo.Error = __tmp__._1;
        stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_slurp));
        {
            var _err:stdgo.Error = _cmd.wait_();
            if (_err != null) {
                stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
function exampleCmd_CombinedOutput():Void {
        var _cmd = stdgo._internal.os.exec.Exec.command(("sh" : stdgo.GoString), ("-c" : stdgo.GoString), ("echo stdout; echo 1>&2 stderr" : stdgo.GoString));
        var __tmp__ = _cmd.combinedOutput(), _stdoutStderr:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
        };
        stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_stdoutStderr));
    }
function exampleCmd_Environ():Void {
        var _cmd = stdgo._internal.os.exec.Exec.command(("pwd" : stdgo.GoString));
        _cmd.dir = (".." : stdgo.GoString);
        _cmd.env = (_cmd.environ_().__append__(("POSIXLY_CORRECT=1" : stdgo.GoString)));
        var __tmp__ = _cmd.output(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
        };
        stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_out));
    }
function exampleCommandContext():Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo._internal.context.Context.withTimeout(stdgo._internal.context.Context.background(), (100000000i64 : stdgo._internal.time.Time.Duration)), _ctx:stdgo._internal.context.Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context.CancelFunc = __tmp__._1;
            __deferstack__.unshift(() -> _cancel());
            {
                var _err:stdgo.Error = stdgo._internal.os.exec.Exec.commandContext(_ctx, ("sleep" : stdgo.GoString), ("5" : stdgo.GoString)).run();
                if (_err != null) {};
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testMain(_m:stdgo.Ref<stdgo._internal.testing.Testing.M>):Void {
        stdgo._internal.flag.Flag.parse();
        var _pid:stdgo.GoInt = stdgo._internal.os.Os.getpid();
        if (stdgo._internal.os.Os.getenv(("GO_EXEC_TEST_PID" : stdgo.GoString)) == (stdgo.Go.str())) {
            stdgo._internal.os.Os.setenv(("GO_EXEC_TEST_PID" : stdgo.GoString), stdgo._internal.strconv.Strconv.itoa(_pid)?.__copy__());
            var _code:stdgo.GoInt = _m.run();
            if (((_code == ((0 : stdgo.GoInt)) && (stdgo._internal.flag.Flag.lookup(("test.run" : stdgo.GoString)).value.string() : stdgo.GoString) == (stdgo.Go.str()) : Bool) && ((stdgo._internal.flag.Flag.lookup(("test.list" : stdgo.GoString)).value.string() : stdgo.GoString) == stdgo.Go.str()) : Bool)) {
                for (_cmd => _ in _helperCommands) {
                    {
                        var __tmp__ = _helperCommandUsed.load(stdgo.Go.toInterface(_cmd)), __4:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (!_ok) {
                            stdgo._internal.fmt.Fmt.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os.stderr), ("helper command unused: %q\n" : stdgo.GoString), stdgo.Go.toInterface(_cmd));
                            _code = (1 : stdgo.GoInt);
                        };
                    };
                };
            };
            if (!stdgo._internal.testing.Testing.short()) {
                stdgo._internal.runtime.Runtime.gc();
                stdgo._internal.runtime.Runtime.gc();
            };
            Sys.exit(_code);
        };
        var _args = stdgo._internal.flag.Flag.args();
        if ((_args.length) == ((0 : stdgo.GoInt))) {
            stdgo._internal.fmt.Fmt.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os.stderr), ("No command\n" : stdgo.GoString));
            Sys.exit((2 : stdgo.GoInt));
        };
        var __0:stdgo.GoString = _args[(0 : stdgo.GoInt)]?.__copy__(), __1 = (_args.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>), _args = __1, _cmd:stdgo.GoString = __0;
        var __tmp__ = (_helperCommands != null && _helperCommands.exists(_cmd?.__copy__()) ? { _0 : _helperCommands[_cmd?.__copy__()], _1 : true } : { _0 : null, _1 : false }), _f:haxe.Rest<stdgo.GoString> -> Void = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            stdgo._internal.fmt.Fmt.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os.stderr), ("Unknown command %q\n" : stdgo.GoString), stdgo.Go.toInterface(_cmd));
            Sys.exit((2 : stdgo.GoInt));
        };
        _f(...(_args : Array<stdgo.GoString>));
        Sys.exit((0 : stdgo.GoInt));
    }
function _registerHelperCommand(_name:stdgo.GoString, _f:haxe.Rest<stdgo.GoString> -> Void):Void {
        if ((_helperCommands[_name] ?? null) != null) {
            throw stdgo.Go.toInterface((("duplicate command registered: " : stdgo.GoString) + _name?.__copy__() : stdgo.GoString));
        };
        _helperCommands[_name] = _f;
    }
function _maySkipHelperCommand(_name:stdgo.GoString):Void {
        _helperCommandUsed.store(stdgo.Go.toInterface(_name), stdgo.Go.toInterface(true));
    }
function _helperCommand(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _name:stdgo.GoString, _args:haxe.Rest<stdgo.GoString>):stdgo.Ref<stdgo._internal.os.exec.Exec.Cmd> {
        var _args = new stdgo.Slice<stdgo.GoString>(_args.length, 0, ..._args);
        _t.helper();
        return _helperCommandContext(_t, (null : stdgo._internal.context.Context.Context), _name?.__copy__(), ...(_args : Array<stdgo.GoString>));
    }
function _helperCommandContext(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _ctx:stdgo._internal.context.Context.Context, _name:stdgo.GoString, _args:haxe.Rest<stdgo.GoString>):stdgo.Ref<stdgo._internal.os.exec.Exec.Cmd> {
        var _args = new stdgo.Slice<stdgo.GoString>(_args.length, 0, ..._args);
        var _cmd:stdgo.Ref<stdgo._internal.os.exec.Exec.Cmd> = (null : stdgo.Ref<stdgo._internal.os.exec.Exec.Cmd>);
        _helperCommandUsed.loadOrStore(stdgo.Go.toInterface(_name), stdgo.Go.toInterface(true));
        _t.helper();
        stdgo._internal.internal.testenv.Testenv.mustHaveExec(stdgo.Go.asInterface(_t));
        var _cs = ((new stdgo.Slice<stdgo.GoString>(1, 1, ...[_name?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>).__append__(...(_args : Array<stdgo.GoString>)));
        if (_ctx != null) {
            _cmd = stdgo._internal.os.exec.Exec.commandContext(_ctx, _exePath(stdgo.Go.asInterface(_t))?.__copy__(), ...(_cs : Array<stdgo.GoString>));
        } else {
            _cmd = stdgo._internal.os.exec.Exec.command(_exePath(stdgo.Go.asInterface(_t))?.__copy__(), ...(_cs : Array<stdgo.GoString>));
        };
        return _cmd;
    }
function _exePath(_t:stdgo._internal.testing.Testing.TB):stdgo.GoString {
        _exeOnce.do_(function():Void {
            {
                var __tmp__ = stdgo._internal.os.Os.executable();
                _exeOnce._path = __tmp__._0?.__copy__();
                _exeOnce._err = __tmp__._1;
            };
        });
        if (_exeOnce._err != null) {
            if (_t == null) {
                throw stdgo.Go.toInterface(_exeOnce._err);
            };
            _t.fatal(stdgo.Go.toInterface(_exeOnce._err));
        };
        return _exeOnce._path?.__copy__();
    }
function _cmdEcho(_args:haxe.Rest<stdgo.GoString>):Void {
        var _args = new stdgo.Slice<stdgo.GoString>(_args.length, 0, ..._args);
        var _iargs = (new stdgo.Slice<stdgo.AnyInterface>(0, 0, ...[]) : stdgo.Slice<stdgo.AnyInterface>);
        for (__0 => _s in _args) {
            _iargs = (_iargs.__append__(stdgo.Go.toInterface(_s)));
        };
        stdgo._internal.fmt.Fmt.println(...(_iargs : Array<stdgo.AnyInterface>));
    }
function _cmdEchoEnv(_args:haxe.Rest<stdgo.GoString>):Void {
        var _args = new stdgo.Slice<stdgo.GoString>(_args.length, 0, ..._args);
        for (__0 => _s in _args) {
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.os.Os.getenv(_s?.__copy__())));
        };
    }
function _cmdCat(_args:haxe.Rest<stdgo.GoString>):Void {
        var _args = new stdgo.Slice<stdgo.GoString>(_args.length, 0, ..._args);
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if ((_args.length) == ((0 : stdgo.GoInt))) {
                stdgo._internal.io.Io.copy(stdgo.Go.asInterface(stdgo._internal.os.Os.stdout), stdgo.Go.asInterface(stdgo._internal.os.Os.stdin));
                return;
            };
            var _exit:stdgo.GoInt = (0 : stdgo.GoInt);
            for (__0 => _fn in _args) {
                var __tmp__ = stdgo._internal.os.Os.open(_fn?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    stdgo._internal.fmt.Fmt.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os.stderr), ("Error: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    _exit = (2 : stdgo.GoInt);
                } else {
                    __deferstack__.unshift(() -> _f.close());
                    stdgo._internal.io.Io.copy(stdgo.Go.asInterface(stdgo._internal.os.Os.stdout), stdgo.Go.asInterface(_f));
                };
            };
            Sys.exit(_exit);
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function _cmdPipeTest(_0:haxe.Rest<stdgo.GoString>):Void {
        var _0 = new stdgo.Slice<stdgo.GoString>(_0.length, 0, ..._0);
        var _bufr = stdgo._internal.bufio.Bufio.newReader(stdgo.Go.asInterface(stdgo._internal.os.Os.stdin));
        while (true) {
            var __tmp__ = _bufr.readLine(), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __0:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
                break;
            } else if (_err != null) {
                Sys.exit((1 : stdgo.GoInt));
            };
            if (stdgo._internal.bytes.Bytes.hasPrefix(_line, (("O:" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))) {
                stdgo._internal.os.Os.stdout.write(_line);
                stdgo._internal.os.Os.stdout.write((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(10 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
            } else if (stdgo._internal.bytes.Bytes.hasPrefix(_line, (("E:" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))) {
                stdgo._internal.os.Os.stderr.write(_line);
                stdgo._internal.os.Os.stderr.write((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(10 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
            } else {
                Sys.exit((1 : stdgo.GoInt));
            };
        };
    }
function _cmdStdinClose(_0:haxe.Rest<stdgo.GoString>):Void {
        var _0 = new stdgo.Slice<stdgo.GoString>(_0.length, 0, ..._0);
        var __tmp__ = stdgo._internal.io.Io.readAll(stdgo.Go.asInterface(stdgo._internal.os.Os.stdin)), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.fmt.Fmt.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os.stderr), ("Error: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_err));
            Sys.exit((1 : stdgo.GoInt));
        };
        {
            var _s:stdgo.GoString = (_b : stdgo.GoString)?.__copy__();
            if (_s != (("Some test string." : stdgo.GoString))) {
                stdgo._internal.fmt.Fmt.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os.stderr), ("Error: Read %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(("Some test string." : stdgo.GoString)));
                Sys.exit((1 : stdgo.GoInt));
            };
        };
    }
function _cmdExit(_args:haxe.Rest<stdgo.GoString>):Void {
        var _args = new stdgo.Slice<stdgo.GoString>(_args.length, 0, ..._args);
        var __tmp__ = stdgo._internal.strconv.Strconv.atoi(_args[(0 : stdgo.GoInt)]?.__copy__()), _n:stdgo.GoInt = __tmp__._0, __0:stdgo.Error = __tmp__._1;
        Sys.exit(_n);
    }
function _cmdDescribeFiles(_args:haxe.Rest<stdgo.GoString>):Void {
        var _args = new stdgo.Slice<stdgo.GoString>(_args.length, 0, ..._args);
        var _f = stdgo._internal.os.Os.newFile((3 : stdgo.GoUIntptr), stdgo._internal.fmt.Fmt.sprintf(("fd3" : stdgo.GoString))?.__copy__());
        var __tmp__ = stdgo._internal.net.Net.fileListener(_f), _ln:stdgo._internal.net.Net.Listener = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            stdgo._internal.fmt.Fmt.printf(("fd3: listener %s\n" : stdgo.GoString), stdgo.Go.toInterface(_ln.addr()));
            _ln.close();
        };
    }
function _cmdStderrFail(_0:haxe.Rest<stdgo.GoString>):Void {
        var _0 = new stdgo.Slice<stdgo.GoString>(_0.length, 0, ..._0);
        stdgo._internal.fmt.Fmt.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os.stderr), ("some stderr text\n" : stdgo.GoString));
        Sys.exit((1 : stdgo.GoInt));
    }
function _cmdYes(_args:haxe.Rest<stdgo.GoString>):Void {
        var _args = new stdgo.Slice<stdgo.GoString>(_args.length, 0, ..._args);
        if ((_args.length) == ((0 : stdgo.GoInt))) {
            _args = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("y" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        };
        var _s:stdgo.GoString = (stdgo._internal.strings.Strings.join(_args, (" " : stdgo.GoString)) + ("\n" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        while (true) {
            var __tmp__ = stdgo._internal.os.Os.stdout.writeString(_s?.__copy__()), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                Sys.exit((1 : stdgo.GoInt));
            };
        };
    }
function testEcho(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        var __tmp__ = _helperCommand(_t, ("echo" : stdgo.GoString), ("foo bar" : stdgo.GoString), ("baz" : stdgo.GoString)).output(), _bs:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("echo: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {
            var __0:stdgo.GoString = (_bs : stdgo.GoString)?.__copy__(), __1:stdgo.GoString = ("foo bar baz\n" : stdgo.GoString), _e:stdgo.GoString = __1, _g:stdgo.GoString = __0;
            if (_g != (_e)) {
                _t.errorf(("echo: want %q, got %q" : stdgo.GoString), stdgo.Go.toInterface(_e), stdgo.Go.toInterface(_g));
            };
        };
    }
function testCommandRelativeName(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        var _cmd = _helperCommand(_t, ("echo" : stdgo.GoString), ("foo" : stdgo.GoString));
        var _base:stdgo.GoString = stdgo._internal.path.filepath.Filepath.base(stdgo._internal.os.Os.args[(0 : stdgo.GoInt)]?.__copy__())?.__copy__();
        var _dir:stdgo.GoString = stdgo._internal.path.filepath.Filepath.dir(stdgo._internal.os.Os.args[(0 : stdgo.GoInt)]?.__copy__())?.__copy__();
        if (_dir == (("." : stdgo.GoString))) {
            _t.skip(stdgo.Go.toInterface(("skipping; running test at root somehow" : stdgo.GoString)));
        };
        var _parentDir:stdgo.GoString = stdgo._internal.path.filepath.Filepath.dir(_dir?.__copy__())?.__copy__();
        var _dirBase:stdgo.GoString = stdgo._internal.path.filepath.Filepath.base(_dir?.__copy__())?.__copy__();
        if (_dirBase == (("." : stdgo.GoString))) {
            _t.skipf(("skipping; unexpected shallow dir of %q" : stdgo.GoString), stdgo.Go.toInterface(_dir));
        };
        _cmd.path = stdgo._internal.path.filepath.Filepath.join(_dirBase?.__copy__(), _base?.__copy__())?.__copy__();
        _cmd.dir = _parentDir?.__copy__();
        var __tmp__ = _cmd.output(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("echo: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {
            var __0:stdgo.GoString = (_out : stdgo.GoString)?.__copy__(), __1:stdgo.GoString = ("foo\n" : stdgo.GoString), _e:stdgo.GoString = __1, _g:stdgo.GoString = __0;
            if (_g != (_e)) {
                _t.errorf(("echo: want %q, got %q" : stdgo.GoString), stdgo.Go.toInterface(_e), stdgo.Go.toInterface(_g));
            };
        };
    }
function testCatStdin(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        var _input:stdgo.GoString = ("Input string\nLine 2" : stdgo.GoString);
        var _p = _helperCommand(_t, ("cat" : stdgo.GoString));
        _p.stdin = stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(_input?.__copy__()));
        var __tmp__ = _p.output(), _bs:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("cat: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _s:stdgo.GoString = (_bs : stdgo.GoString)?.__copy__();
        if (_s != (_input)) {
            _t.errorf(("cat: want %q, got %q" : stdgo.GoString), stdgo.Go.toInterface(_input), stdgo.Go.toInterface(_s));
        };
    }
function testEchoFileRace(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        var _cmd = _helperCommand(_t, ("echo" : stdgo.GoString));
        var __tmp__ = _cmd.stdinPipe(), _stdin:stdgo._internal.io.Io.WriteCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("StdinPipe: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {
            var _err:stdgo.Error = _cmd.start();
            if (_err != null) {
                _t.fatalf(("Start: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        var _wrote = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
        stdgo.Go.routine(() -> {
            var a = function():Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    {
                        var _a0 = _wrote;
                        __deferstack__.unshift(() -> if (_a0 != null) _a0.__close__());
                    };
                    stdgo._internal.fmt.Fmt.fprint(_stdin, stdgo.Go.toInterface(("echo\n" : stdgo.GoString)));
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return;
                    };
                } catch(__exception__) {
                    var exe:Dynamic = __exception__.native;
                    if ((exe is haxe.ValueException)) exe = exe.value;
                    if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                        exe = stdgo.Go.toInterface(__exception__.message);
                    };
                    stdgo.Go.recover_exception = exe;
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return;
                };
            };
            a();
        });
        {
            var _err:stdgo.Error = _cmd.wait_();
            if (_err != null) {
                _t.fatalf(("Wait: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        _wrote.__get__();
    }
function testCatGoodAndBadFile(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        var __tmp__ = _helperCommand(_t, ("cat" : stdgo.GoString), ("/bogus/file.foo" : stdgo.GoString), ("exec_test.go" : stdgo.GoString)).combinedOutput(), _bs:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.os.exec.Exec.ExitError>)) : stdgo.Ref<stdgo._internal.os.exec.Exec.ExitError>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.os.exec.Exec.ExitError>), _1 : false };
            }, __14 = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                _t.errorf(("expected *exec.ExitError from cat combined; got %T: %v" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_err));
            };
        };
        var __tmp__ = stdgo._internal.strings.Strings.cut((_bs : stdgo.GoString)?.__copy__(), ("\n" : stdgo.GoString)), _errLine:stdgo.GoString = __tmp__._0, _body:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
        if (!_ok) {
            _t.fatalf(("expected two lines from cat; got %q" : stdgo.GoString), stdgo.Go.toInterface(_bs));
        };
        if (!stdgo._internal.strings.Strings.hasPrefix(_errLine?.__copy__(), ("Error: open /bogus/file.foo" : stdgo.GoString))) {
            _t.errorf(("expected stderr to complain about file; got %q" : stdgo.GoString), stdgo.Go.toInterface(_errLine));
        };
        if (!stdgo._internal.strings.Strings.contains(_body?.__copy__(), ("func TestCatGoodAndBadFile(t *testing.T)" : stdgo.GoString))) {
            _t.errorf(("expected test code; got %q (len %d)" : stdgo.GoString), stdgo.Go.toInterface(_body), stdgo.Go.toInterface((_body.length)));
        };
    }
function testNoExistExecutable(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        var _err:stdgo.Error = stdgo._internal.os.exec.Exec.command(("/no-exist-executable" : stdgo.GoString)).run();
        if (_err == null) {
            _t.error(stdgo.Go.toInterface(("expected error from /no-exist-executable" : stdgo.GoString)));
        };
    }
function testExitStatus(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        var _cmd = _helperCommand(_t, ("exit" : stdgo.GoString), ("42" : stdgo.GoString));
        var _err:stdgo.Error = _cmd.run();
        var _want:stdgo.GoString = ("exit status 42" : stdgo.GoString);
        {
            final __value__ = ("js" : stdgo.GoString);
            if (__value__ == (("plan9" : stdgo.GoString))) {
                _want = stdgo._internal.fmt.Fmt.sprintf(("exit status: \'%s %d: 42\'" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath.base(_cmd.path?.__copy__())), stdgo.Go.toInterface(_cmd.processState.pid()))?.__copy__();
            };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.os.exec.Exec.ExitError>)) : stdgo.Ref<stdgo._internal.os.exec.Exec.ExitError>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.os.exec.Exec.ExitError>), _1 : false };
            }, _werr = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                {
                    var _s:stdgo.GoString = _werr.error()?.__copy__();
                    if (_s != (_want)) {
                        _t.errorf(("from exit 42 got exit %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_want));
                    };
                };
            } else {
                _t.fatalf(("expected *exec.ExitError from exit 42; got %T: %v" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_err));
            };
        };
    }
function testExitCode(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        var _cmd = _helperCommand(_t, ("exit" : stdgo.GoString), ("42" : stdgo.GoString));
        _cmd.run();
        var _want:stdgo.GoInt = (42 : stdgo.GoInt);
        if (false) {
            _want = (1 : stdgo.GoInt);
        };
        var _got:stdgo.GoInt = _cmd.processState.exitCode();
        if (_want != (_got)) {
            _t.errorf(("ExitCode got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
        _cmd = _helperCommand(_t, ("/no-exist-executable" : stdgo.GoString));
        _cmd.run();
        _want = (2 : stdgo.GoInt);
        if (false) {
            _want = (1 : stdgo.GoInt);
        };
        _got = _cmd.processState.exitCode();
        if (_want != (_got)) {
            _t.errorf(("ExitCode got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
        _cmd = _helperCommand(_t, ("exit" : stdgo.GoString), ("255" : stdgo.GoString));
        _cmd.run();
        _want = (255 : stdgo.GoInt);
        if (false) {
            _want = (1 : stdgo.GoInt);
        };
        _got = _cmd.processState.exitCode();
        if (_want != (_got)) {
            _t.errorf(("ExitCode got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
        _cmd = _helperCommand(_t, ("cat" : stdgo.GoString));
        _cmd.run();
        _want = (0 : stdgo.GoInt);
        _got = _cmd.processState.exitCode();
        if (_want != (_got)) {
            _t.errorf(("ExitCode got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
        _cmd = _helperCommand(_t, ("cat" : stdgo.GoString));
        _want = (-1 : stdgo.GoInt);
        _got = _cmd.processState.exitCode();
        if (_want != (_got)) {
            _t.errorf(("ExitCode got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
    }
function testPipes(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        var _check:(stdgo.GoString, stdgo.Error) -> Void = function(_what:stdgo.GoString, _err:stdgo.Error):Void {
            if (_err != null) {
                _t.fatalf(("%s: %v" : stdgo.GoString), stdgo.Go.toInterface(_what), stdgo.Go.toInterface(_err));
            };
        };
        var _c = _helperCommand(_t, ("pipetest" : stdgo.GoString));
        var __tmp__ = _c.stdinPipe(), _stdin:stdgo._internal.io.Io.WriteCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _check(("StdinPipe" : stdgo.GoString), _err);
        var __tmp__ = _c.stdoutPipe(), _stdout:stdgo._internal.io.Io.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _check(("StdoutPipe" : stdgo.GoString), _err);
        var __tmp__ = _c.stderrPipe(), _stderr:stdgo._internal.io.Io.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _check(("StderrPipe" : stdgo.GoString), _err);
        var _outbr = stdgo._internal.bufio.Bufio.newReader(_stdout);
        var _errbr = stdgo._internal.bufio.Bufio.newReader(_stderr);
        var _line = function(_what:stdgo.GoString, _br:stdgo.Ref<stdgo._internal.bufio.Bufio.Reader>):stdgo.GoString {
            var __tmp__ = _br.readLine(), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __26:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                _t.fatalf(("%s: %v" : stdgo.GoString), stdgo.Go.toInterface(_what), stdgo.Go.toInterface(_err));
            };
            return (_line : stdgo.GoString)?.__copy__();
        };
        _err = _c.start();
        _check(("Start" : stdgo.GoString), _err);
        {
            var __tmp__ = _stdin.write((("O:I am output\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
            _err = __tmp__._1;
        };
        _check(("first stdin Write" : stdgo.GoString), _err);
        {
            var __0:stdgo.GoString = _line(("first output line" : stdgo.GoString), _outbr)?.__copy__(), __1:stdgo.GoString = ("O:I am output" : stdgo.GoString), _e:stdgo.GoString = __1, _g:stdgo.GoString = __0;
            if (_g != (_e)) {
                _t.errorf(("got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_e));
            };
        };
        {
            var __tmp__ = _stdin.write((("E:I am error\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
            _err = __tmp__._1;
        };
        _check(("second stdin Write" : stdgo.GoString), _err);
        {
            var __0:stdgo.GoString = _line(("first error line" : stdgo.GoString), _errbr)?.__copy__(), __1:stdgo.GoString = ("E:I am error" : stdgo.GoString), _e:stdgo.GoString = __1, _g:stdgo.GoString = __0;
            if (_g != (_e)) {
                _t.errorf(("got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_e));
            };
        };
        {
            var __tmp__ = _stdin.write((("O:I am output2\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
            _err = __tmp__._1;
        };
        _check(("third stdin Write 3" : stdgo.GoString), _err);
        {
            var __0:stdgo.GoString = _line(("second output line" : stdgo.GoString), _outbr)?.__copy__(), __1:stdgo.GoString = ("O:I am output2" : stdgo.GoString), _e:stdgo.GoString = __1, _g:stdgo.GoString = __0;
            if (_g != (_e)) {
                _t.errorf(("got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_e));
            };
        };
        _stdin.close();
        _err = _c.wait_();
        _check(("Wait" : stdgo.GoString), _err);
    }
function testStdinClose(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            var _check:(stdgo.GoString, stdgo.Error) -> Void = function(_what:stdgo.GoString, _err:stdgo.Error):Void {
                if (_err != null) {
                    _t.fatalf(("%s: %v" : stdgo.GoString), stdgo.Go.toInterface(_what), stdgo.Go.toInterface(_err));
                };
            };
            var _cmd = _helperCommand(_t, ("stdinClose" : stdgo.GoString));
            var __tmp__ = _cmd.stdinPipe(), _stdin:stdgo._internal.io.Io.WriteCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            _check(("StdinPipe" : stdgo.GoString), _err);
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_stdin) : T__interface_0)) : T__interface_0), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.os.exec_test.Exec_test.T__interface_0), _1 : false };
                }, __14 = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    _t.error(stdgo.Go.toInterface(("can\'t access methods of underlying *os.File" : stdgo.GoString)));
                };
            };
            _check(("Start" : stdgo.GoString), _cmd.start());
            var _wg:stdgo._internal.sync.Sync.WaitGroup = ({} : stdgo._internal.sync.Sync.WaitGroup);
            _wg.add((1 : stdgo.GoInt));
            __deferstack__.unshift(() -> _wg.wait_());
            stdgo.Go.routine(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        __deferstack__.unshift(() -> _wg.done());
                        var __tmp__ = stdgo._internal.io.Io.copy(_stdin, stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("Some test string." : stdgo.GoString)))), __41:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        _check(("Copy" : stdgo.GoString), _err);
                        {
                            var _err:stdgo.Error = _stdin.close();
                            if (((_err != null) && !stdgo._internal.errors.Errors.is_(_err, stdgo._internal.os.Os.errClosed) : Bool)) {
                                _t.errorf(("Close: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                            };
                        };
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                            return;
                        };
                    } catch(__exception__) {
                        var exe:Dynamic = __exception__.native;
                        if ((exe is haxe.ValueException)) exe = exe.value;
                        if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                            exe = stdgo.Go.toInterface(__exception__.message);
                        };
                        stdgo.Go.recover_exception = exe;
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return;
                    };
                };
                a();
            });
            _check(("Wait" : stdgo.GoString), _cmd.wait_());
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testStdinCloseRace(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            var _cmd = _helperCommand(_t, ("stdinClose" : stdgo.GoString));
            var __tmp__ = _cmd.stdinPipe(), _stdin:stdgo._internal.io.Io.WriteCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("StdinPipe: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            {
                var _err:stdgo.Error = _cmd.start();
                if (_err != null) {
                    _t.fatalf(("Start: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
            };
            var _wg:stdgo._internal.sync.Sync.WaitGroup = ({} : stdgo._internal.sync.Sync.WaitGroup);
            _wg.add((2 : stdgo.GoInt));
            __deferstack__.unshift(() -> _wg.wait_());
            stdgo.Go.routine(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        __deferstack__.unshift(() -> _wg.done());
                        _cmd.process.kill();
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                            return;
                        };
                    } catch(__exception__) {
                        var exe:Dynamic = __exception__.native;
                        if ((exe is haxe.ValueException)) exe = exe.value;
                        if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                            exe = stdgo.Go.toInterface(__exception__.message);
                        };
                        stdgo.Go.recover_exception = exe;
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return;
                    };
                };
                a();
            });
            stdgo.Go.routine(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        __deferstack__.unshift(() -> _wg.done());
                        stdgo._internal.io.Io.copy(_stdin, stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("unexpected string" : stdgo.GoString))));
                        {
                            var _err:stdgo.Error = _stdin.close();
                            if (((_err != null) && !stdgo._internal.errors.Errors.is_(_err, stdgo._internal.os.Os.errClosed) : Bool)) {
                                _t.errorf(("stdin.Close: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                            };
                        };
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                            return;
                        };
                    } catch(__exception__) {
                        var exe:Dynamic = __exception__.native;
                        if ((exe is haxe.ValueException)) exe = exe.value;
                        if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                            exe = stdgo.Go.toInterface(__exception__.message);
                        };
                        stdgo.Go.recover_exception = exe;
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return;
                    };
                };
                a();
            });
            {
                var _err:stdgo.Error = _cmd.wait_();
                if (_err == null) {
                    _t.fatalf(("Wait: succeeded unexpectedly" : stdgo.GoString));
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testPipeLookPathLeak(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        if (false) {
            _t.skip(stdgo.Go.toInterface(("we don\'t currently suppore counting open handles on windows" : stdgo.GoString)));
        };
        var _openFDs = function():stdgo.Slice<stdgo.GoUIntptr> {
            var _fds:stdgo.Slice<stdgo.GoUIntptr> = (null : stdgo.Slice<stdgo.GoUIntptr>);
            {
                var _i:stdgo.GoUIntptr = (0 : stdgo.GoUIntptr);
                stdgo.Go.cfor((_i < (100 : stdgo.GoUIntptr) : Bool), _i++, {
                    if (stdgo._internal.os.exec.internal.fdtest.Fdtest.exists(_i)) {
                        _fds = (_fds.__append__(_i));
                    };
                });
            };
            return _fds;
        };
        var _old = ({
            final x = new stdgo.GoMap.GoIntMap<Bool>();
            x.__defaultValue__ = () -> false;
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.GoUIntptr, Bool>);
        for (__8 => _fd in _openFDs()) {
            _old[_fd] = true;
        };
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (6 : stdgo.GoInt) : Bool), _i++, {
                var _cmd = stdgo._internal.os.exec.Exec.command(("something-that-does-not-exist-executable" : stdgo.GoString));
                _cmd.stdoutPipe();
                _cmd.stderrPipe();
                _cmd.stdinPipe();
                {
                    var _err:stdgo.Error = _cmd.run();
                    if (_err == null) {
                        _t.fatal(stdgo.Go.toInterface(("unexpected success" : stdgo.GoString)));
                    };
                };
            });
        };
        for (__41 => _fd in _openFDs()) {
            if (!(_old[_fd] ?? false)) {
                _t.errorf(("leaked file descriptor %v" : stdgo.GoString), stdgo.Go.toInterface(_fd));
            };
        };
    }
function testExtraFiles(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (stdgo._internal.testing.Testing.short()) {
                _t.skipf(("skipping test in short mode that would build a helper binary" : stdgo.GoString));
            };
            if (_haveUnexpectedFDs) {
                _t.skip(stdgo.Go.toInterface(("skipping test because test was run with FDs open" : stdgo.GoString)));
            };
            stdgo._internal.internal.testenv.Testenv.mustHaveExec(stdgo.Go.asInterface(_t));
            stdgo._internal.internal.testenv.Testenv.mustHaveGoBuild(stdgo.Go.asInterface(_t));
            stdgo._internal.internal.testenv.Testenv.mustInternalLink(stdgo.Go.asInterface(_t), false);
            if (false) {
                _t.skipf(("skipping test on %q" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)));
            };
            var __tmp__ = stdgo._internal.net.Net.listen(("tcp" : stdgo.GoString), ("127.0.0.1:0" : stdgo.GoString)), _ln:stdgo._internal.net.Net.Listener = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _ln.close());
            var __tmp__ = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_ln) : stdgo.Ref<stdgo._internal.net.Net.TCPListener>)) : stdgo.Ref<stdgo._internal.net.Net.TCPListener>).file(), _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _f.close());
            var __tmp__ = stdgo._internal.net.Net.fileListener(_f), _ln2:stdgo._internal.net.Net.Listener = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _ln2.close());
            var _ts = stdgo._internal.net.http.httptest.Httptest.newUnstartedServer(stdgo.Go.asInterface((function(_w:stdgo._internal.net.http.Http.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http.Request>):Void {} : stdgo._internal.net.http.Http.HandlerFunc)));
            _ts.config.errorLog = stdgo._internal.log.Log.new_(stdgo._internal.io.Io.discard, stdgo.Go.str()?.__copy__(), (0 : stdgo.GoInt));
            _ts.startTLS();
            __deferstack__.unshift(() -> _ts.close());
            {
                var __tmp__ = stdgo._internal.net.http.Http.get(_ts.url?.__copy__());
                _err = __tmp__._1;
            };
            if (_err == null) {
                _t.errorf(("success trying to fetch %s; want an error" : stdgo.GoString), stdgo.Go.toInterface(_ts.url));
            };
            var __tmp__ = stdgo._internal.os.Os.createTemp(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()), _tf:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("TempFile: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            {
                var _a0 = _tf.name();
                __deferstack__.unshift(() -> stdgo._internal.os.Os.remove(_a0?.__copy__()));
            };
            __deferstack__.unshift(() -> _tf.close());
            {};
            {
                var __tmp__ = _tf.write((("Hello, fd 3!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.fatalf(("Write: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            {
                var __tmp__ = _tf.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt));
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.fatalf(("Seek: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            var _tempdir:stdgo.GoString = _t.tempDir()?.__copy__();
            var _exe:stdgo.GoString = stdgo._internal.path.filepath.Filepath.join(_tempdir?.__copy__(), ("read3.exe" : stdgo.GoString))?.__copy__();
            var _c = stdgo._internal.internal.testenv.Testenv.command(stdgo.Go.asInterface(_t), stdgo._internal.internal.testenv.Testenv.goToolPath(stdgo.Go.asInterface(_t))?.__copy__(), ("build" : stdgo.GoString), ("-o" : stdgo.GoString), _exe?.__copy__(), ("read3.go" : stdgo.GoString));
            _c.env = (stdgo._internal.os.Os.environ_().__append__(("CGO_ENABLED=0" : stdgo.GoString)));
            {
                var __tmp__ = _c.combinedOutput(), _output:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.logf(("go build -o %s read3.go\n%s" : stdgo.GoString), stdgo.Go.toInterface(_exe), stdgo.Go.toInterface(_output));
                    _t.fatalf(("go build failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
            };
            var _ctx:stdgo._internal.context.Context.Context = stdgo._internal.context.Context.background();
            {
                var __tmp__ = _t.deadline(), _deadline:stdgo._internal.time.Time.Time = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    _deadline = _deadline.add((-stdgo._internal.time.Time.until(_deadline?.__copy__()) / (5i64 : stdgo._internal.time.Time.Duration) : stdgo._internal.time.Time.Duration))?.__copy__();
                    var _cancel:stdgo._internal.context.Context.CancelFunc = (null : stdgo._internal.context.Context.CancelFunc);
                    {
                        var __tmp__ = stdgo._internal.context.Context.withDeadline(_ctx, _deadline?.__copy__());
                        _ctx = __tmp__._0;
                        _cancel = __tmp__._1;
                    };
                    __deferstack__.unshift(() -> _cancel());
                };
            };
            _c = stdgo._internal.os.exec.Exec.commandContext(_ctx, _exe?.__copy__());
            var __0:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder), __1:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder), _stderr:stdgo._internal.strings.Strings.Builder = __1, _stdout:stdgo._internal.strings.Strings.Builder = __0;
            _c.stdout = stdgo.Go.asInterface((stdgo.Go.setRef(_stdout) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>));
            _c.stderr = stdgo.Go.asInterface((stdgo.Go.setRef(_stderr) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>));
            _c.extraFiles = (new stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os.File>>(1, 1, ...[_tf]) : stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os.File>>);
            if (false) {
                _c.env = (stdgo._internal.os.Os.environ_().__append__(("GOMAXPROCS=1" : stdgo.GoString)));
            };
            _err = _c.run();
            if (_err != null) {
                _t.fatalf(("Run: %v\n--- stdout:\n%s--- stderr:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((_stdout.string() : stdgo.GoString)), stdgo.Go.toInterface((_stderr.string() : stdgo.GoString)));
            };
            if ((_stdout.string() : stdgo.GoString) != (("Hello, fd 3!" : stdgo.GoString))) {
                _t.errorf(("got stdout %q, stderr %q; want %q on stdout" : stdgo.GoString), stdgo.Go.toInterface((_stdout.string() : stdgo.GoString)), stdgo.Go.toInterface((_stderr.string() : stdgo.GoString)), stdgo.Go.toInterface(("Hello, fd 3!" : stdgo.GoString)));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testExtraFilesRace(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        if (false) {
            _maySkipHelperCommand(("describefiles" : stdgo.GoString));
            _t.skip(stdgo.Go.toInterface(("no operating system support; skipping" : stdgo.GoString)));
        };
        _t.parallel();
        var _listen:() -> stdgo._internal.net.Net.Listener = function():stdgo._internal.net.Net.Listener {
            var __tmp__ = stdgo._internal.net.Net.listen(("tcp" : stdgo.GoString), ("127.0.0.1:0" : stdgo.GoString)), _ln:stdgo._internal.net.Net.Listener = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            return _ln;
        };
        var _listenerFile = function(_ln:stdgo._internal.net.Net.Listener):stdgo.Ref<stdgo._internal.os.Os.File> {
            var __tmp__ = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_ln) : stdgo.Ref<stdgo._internal.net.Net.TCPListener>)) : stdgo.Ref<stdgo._internal.net.Net.TCPListener>).file(), _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            return _f;
        };
        var _runCommand = function(_c:stdgo.Ref<stdgo._internal.os.exec.Exec.Cmd>, _out:stdgo.Chan<stdgo.GoString>):Void {
            var __tmp__ = _c.combinedOutput(), _bout:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _out.__send__((("ERROR:" : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString));
            } else {
                _out.__send__((_bout : stdgo.GoString));
            };
        };
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                if ((stdgo._internal.testing.Testing.short() && (_i >= (3 : stdgo.GoInt) : Bool) : Bool)) {
                    break;
                };
                var _la:stdgo._internal.net.Net.Listener = _listen();
                var _ca = _helperCommand(_t, ("describefiles" : stdgo.GoString));
                _ca.extraFiles = (new stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os.File>>(1, 1, ...[_listenerFile(_la)]) : stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os.File>>);
                var _lb:stdgo._internal.net.Net.Listener = _listen();
                var _cb = _helperCommand(_t, ("describefiles" : stdgo.GoString));
                _cb.extraFiles = (new stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os.File>>(1, 1, ...[_listenerFile(_lb)]) : stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os.File>>);
                var _ares = (new stdgo.Chan<stdgo.GoString>(0, () -> ("" : stdgo.GoString)) : stdgo.Chan<stdgo.GoString>);
                var _bres = (new stdgo.Chan<stdgo.GoString>(0, () -> ("" : stdgo.GoString)) : stdgo.Chan<stdgo.GoString>);
                stdgo.Go.routine(() -> _runCommand(_ca, _ares));
                stdgo.Go.routine(() -> _runCommand(_cb, _bres));
                {
                    var __0:stdgo.GoString = _ares.__get__()?.__copy__(), __1:stdgo.GoString = stdgo._internal.fmt.Fmt.sprintf(("fd3: listener %s\n" : stdgo.GoString), stdgo.Go.toInterface(_la.addr()))?.__copy__(), _want:stdgo.GoString = __1, _got:stdgo.GoString = __0;
                    if (_got != (_want)) {
                        _t.errorf(("iteration %d, process A got:\n%s\nwant:\n%s\n" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                    };
                };
                {
                    var __0:stdgo.GoString = _bres.__get__()?.__copy__(), __1:stdgo.GoString = stdgo._internal.fmt.Fmt.sprintf(("fd3: listener %s\n" : stdgo.GoString), stdgo.Go.toInterface(_lb.addr()))?.__copy__(), _want:stdgo.GoString = __1, _got:stdgo.GoString = __0;
                    if (_got != (_want)) {
                        _t.errorf(("iteration %d, process B got:\n%s\nwant:\n%s\n" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                    };
                };
                _la.close();
                _lb.close();
                for (__50 => _f in _ca.extraFiles) {
                    _f.close();
                };
                for (__57 => _f in _cb.extraFiles) {
                    _f.close();
                };
            });
        };
    }
function testIgnorePipeErrorOnSuccess(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        var _testWith = function(_r:stdgo._internal.io.Io.Reader):stdgo.Ref<stdgo._internal.testing.Testing.T_> -> Void {
            return function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
                _t.parallel();
                var _cmd = _helperCommand(_t, ("echo" : stdgo.GoString), ("foo" : stdgo.GoString));
                var _out:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
                _cmd.stdin = _r;
                _cmd.stdout = stdgo.Go.asInterface((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>));
                {
                    var _err:stdgo.Error = _cmd.run();
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                };
                {
                    var __0:stdgo.GoString = (_out.string() : stdgo.GoString)?.__copy__(), __1:stdgo.GoString = ("foo\n" : stdgo.GoString), _want:stdgo.GoString = __1, _got:stdgo.GoString = __0;
                    if (_got != (_want)) {
                        _t.errorf(("output = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                    };
                };
            };
        };
        _t.run(("10MB" : stdgo.GoString), _testWith(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(stdgo._internal.strings.Strings.repeat(("x" : stdgo.GoString), (10485760 : stdgo.GoInt))?.__copy__()))));
        _t.run(("Infinite" : stdgo.GoString), _testWith(stdgo.Go.asInterface((new stdgo._internal.os.exec_test.Exec_test.T_delayedInfiniteReader() : stdgo._internal.os.exec_test.Exec_test.T_delayedInfiniteReader))));
    }
function testClosePipeOnCopyError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        var _cmd = _helperCommand(_t, ("yes" : stdgo.GoString));
        _cmd.stdout = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.os.exec_test.Exec_test.T_badWriter)) : stdgo.Ref<stdgo._internal.os.exec_test.Exec_test.T_badWriter>));
        var _err:stdgo.Error = _cmd.run();
        if (_err == null) {
            _t.errorf(("yes unexpectedly completed successfully" : stdgo.GoString));
        };
    }
function testOutputStderrCapture(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        var _cmd = _helperCommand(_t, ("stderrfail" : stdgo.GoString));
        var __tmp__ = _cmd.output(), __14:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.os.exec.Exec.ExitError>)) : stdgo.Ref<stdgo._internal.os.exec.Exec.ExitError>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.os.exec.Exec.ExitError>), _1 : false };
        }, _ee = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            _t.fatalf(("Output error type = %T; want ExitError" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _got:stdgo.GoString = (_ee.stderr : stdgo.GoString)?.__copy__();
        var _want:stdgo.GoString = ("some stderr text\n" : stdgo.GoString);
        if (_got != (_want)) {
            _t.errorf(("ExitError.Stderr = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
    }
function testContext(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        var __tmp__ = stdgo._internal.context.Context.withCancel(stdgo._internal.context.Context.background()), _ctx:stdgo._internal.context.Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context.CancelFunc = __tmp__._1;
        var _c = _helperCommandContext(_t, _ctx, ("pipetest" : stdgo.GoString));
        var __tmp__ = _c.stdinPipe(), _stdin:stdgo._internal.io.Io.WriteCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var __tmp__ = _c.stdoutPipe(), _stdout:stdgo._internal.io.Io.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var _err:stdgo.Error = _c.start();
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _stdin.write((("O:hi\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), __50:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((5 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = stdgo._internal.io.Io.readFull(_stdout, _buf), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_n != ((_buf.length)) || _err != null : Bool) || ((_buf : stdgo.GoString) != ("O:hi\n" : stdgo.GoString)) : Bool)) {
            _t.fatalf(("ReadFull = %d, %v, %q" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>)));
        };
        stdgo.Go.routine(() -> _cancel());
        {
            var _err:stdgo.Error = _c.wait_();
            if (_err == null) {
                _t.fatal(stdgo.Go.toInterface(("expected Wait failure" : stdgo.GoString)));
            };
        };
    }
function testContextCancel(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (false) {
                _maySkipHelperCommand(("cat" : stdgo.GoString));
                stdgo._internal.internal.testenv.Testenv.skipFlaky(stdgo.Go.asInterface(_t), (42061 : stdgo.GoInt));
            };
            _t.parallel();
            var __tmp__ = stdgo._internal.context.Context.withCancel(stdgo._internal.context.Context.background()), _ctx:stdgo._internal.context.Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context.CancelFunc = __tmp__._1;
            __deferstack__.unshift(() -> _cancel());
            var _c = _helperCommandContext(_t, _ctx, ("cat" : stdgo.GoString));
            var __tmp__ = _c.stdinPipe(), _stdin:stdgo._internal.io.Io.WriteCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _stdin.close());
            {
                var _err:stdgo.Error = _c.start();
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            {
                var __tmp__ = stdgo._internal.io.Io.writeString(_stdin, ("echo" : stdgo.GoString)), __36:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            _cancel();
            var _start:stdgo._internal.time.Time.Time = stdgo._internal.time.Time.now()?.__copy__();
            var _delay:stdgo._internal.time.Time.Duration = (1000000i64 : stdgo._internal.time.Time.Duration);
            while (true) {
                {
                    var __tmp__ = stdgo._internal.io.Io.writeString(_stdin, ("echo" : stdgo.GoString)), __45:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        break;
                    };
                };
                if ((stdgo._internal.time.Time.since(_start?.__copy__()) > (60000000000i64 : stdgo._internal.time.Time.Duration) : Bool)) {
                    stdgo._internal.runtime.debug.Debug.setTraceback(("system" : stdgo.GoString));
                    throw stdgo.Go.toInterface(("canceling context did not stop program" : stdgo.GoString));
                };
                _delay = (_delay * ((2i64 : stdgo._internal.time.Time.Duration)) : stdgo._internal.time.Time.Duration);
                if ((_delay > (1000000000i64 : stdgo._internal.time.Time.Duration) : Bool)) {
                    _delay = (1000000000i64 : stdgo._internal.time.Time.Duration);
                };
                stdgo._internal.time.Time.sleep(_delay);
            };
            {
                var _err:stdgo.Error = _c.wait_();
                if (_err == null) {
                    _t.error(stdgo.Go.toInterface(("program unexpectedly exited successfully" : stdgo.GoString)));
                } else {
                    _t.logf(("exit status: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testDedupEnvEcho(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        var _cmd = _helperCommand(_t, ("echoenv" : stdgo.GoString), ("FOO" : stdgo.GoString));
        _cmd.env = (_cmd.environ_().__append__(("FOO=bad" : stdgo.GoString), ("FOO=good" : stdgo.GoString)));
        var __tmp__ = _cmd.combinedOutput(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var __0:stdgo.GoString = stdgo._internal.strings.Strings.trimSpace((_out : stdgo.GoString)?.__copy__())?.__copy__(), __1:stdgo.GoString = ("good" : stdgo.GoString), _want:stdgo.GoString = __1, _got:stdgo.GoString = __0;
            if (_got != (_want)) {
                _t.errorf(("output = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
function testEnvNULCharacter(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        if (false) {
            _t.skip(stdgo.Go.toInterface(("plan9 explicitly allows NUL in the environment" : stdgo.GoString)));
        };
        var _cmd = _helperCommand(_t, ("echoenv" : stdgo.GoString), ("FOO" : stdgo.GoString), ("BAR" : stdgo.GoString));
        _cmd.env = (_cmd.environ_().__append__(stdgo.Go.str("FOO=foo", 0, "BAR=bar")?.__copy__()));
        var __tmp__ = _cmd.combinedOutput(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            _t.errorf(("output = %q; want error" : stdgo.GoString), stdgo.Go.toInterface((_out : stdgo.GoString)));
        };
    }
function testString(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        var __tmp__ = stdgo._internal.os.exec.Exec.lookPath(("echo" : stdgo.GoString)), _echoPath:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.skip(stdgo.Go.toInterface(_err));
        };
        var _tests = (new stdgo.GoArray<T__struct_2>(3, 3, ...[({ _path : ("echo" : stdgo.GoString), _args : (null : stdgo.Slice<stdgo.GoString>), _want : _echoPath?.__copy__() } : T__struct_2), ({ _path : ("echo" : stdgo.GoString), _args : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("a" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), _want : (_echoPath + (" a" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() } : T__struct_2), ({ _path : ("echo" : stdgo.GoString), _args : (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("a" : stdgo.GoString), ("b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), _want : (_echoPath + (" a b" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() } : T__struct_2)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({ _path : ("" : stdgo.GoString), _args : (null : stdgo.Slice<stdgo.GoString>), _want : ("" : stdgo.GoString) } : T__struct_2)])) : stdgo.GoArray<T__struct_2>);
        for (__16 => _test in _tests) {
            var _cmd = stdgo._internal.os.exec.Exec.command(_test._path?.__copy__(), ...(_test._args : Array<stdgo.GoString>));
            {
                var _got:stdgo.GoString = (_cmd.string() : stdgo.GoString)?.__copy__();
                if (_got != (_test._want)) {
                    _t.errorf(("String(%q, %q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_test._args), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
    }
function testStringPathNotResolved(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        var __tmp__ = stdgo._internal.os.exec.Exec.lookPath(("makemeasandwich" : stdgo.GoString)), __8:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            _t.skip(stdgo.Go.toInterface(("wow, thanks" : stdgo.GoString)));
        };
        var _cmd = stdgo._internal.os.exec.Exec.command(("makemeasandwich" : stdgo.GoString), ("-lettuce" : stdgo.GoString));
        var _want:stdgo.GoString = ("makemeasandwich -lettuce" : stdgo.GoString);
        {
            var _got:stdgo.GoString = (_cmd.string() : stdgo.GoString)?.__copy__();
            if (_got != (_want)) {
                _t.errorf(("String(%q, %q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(("makemeasandwich" : stdgo.GoString)), stdgo.Go.toInterface(("-lettuce" : stdgo.GoString)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
function testNoPath(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _err:stdgo.Error = (stdgo.Go.setRef(({} : stdgo._internal.os.exec.Exec.Cmd)) : stdgo.Ref<stdgo._internal.os.exec.Exec.Cmd>).start();
        var _want:stdgo.GoString = ("exec: no command" : stdgo.GoString);
        if (((_err == null) || (_err.error() != _want) : Bool)) {
            _t.errorf(("new(Cmd).Start() = %v, want %q" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_want));
        };
    }
function testDoubleStartLeavesPipesOpen(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        var _cmd = _helperCommand(_t, ("pipetest" : stdgo.GoString));
        var __tmp__ = _cmd.stdinPipe(), _in:stdgo._internal.io.Io.WriteCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var __tmp__ = _cmd.stdoutPipe(), _out:stdgo._internal.io.Io.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var _err:stdgo.Error = _cmd.start();
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        _t.cleanup(function():Void {
            {
                var _err:stdgo.Error = _cmd.wait_();
                if (_err != null) {
                    _t.error(stdgo.Go.toInterface(_err));
                };
            };
        });
        {
            var _err:stdgo.Error = _cmd.start();
            if (((_err == null) || !stdgo._internal.strings.Strings.hasSuffix(_err.error()?.__copy__(), ("already started" : stdgo.GoString)) : Bool)) {
                _t.fatalf(("second call to Start returned a nil; want an \'already started\' error" : stdgo.GoString));
            };
        };
        var _outc = (new stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>>);
        stdgo.Go.routine(() -> {
            var a = function():Void {
                var __tmp__ = stdgo._internal.io.Io.readAll(_out), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.error(stdgo.Go.toInterface(_err));
                };
                _outc.__send__(_b);
            };
            a();
        });
        {};
        {
            var __tmp__ = stdgo._internal.io.Io.writeString(_in, ("O:Hello, pipe!\n" : stdgo.GoString));
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        _in.close();
        var _b = _outc.__get__();
        if (!stdgo._internal.bytes.Bytes.equal(_b, (("O:Hello, pipe!\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))) {
            _t.fatalf(("read %q from stdout pipe; want %q" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(("O:Hello, pipe!\n" : stdgo.GoString)));
        };
    }
function _cmdHang(_args:haxe.Rest<stdgo.GoString>):Void {
        var _args = new stdgo.Slice<stdgo.GoString>(_args.length, 0, ..._args);
        var __tmp__ = stdgo._internal.time.Time.parseDuration(_args[(0 : stdgo.GoInt)]?.__copy__()), _sleep:stdgo._internal.time.Time.Duration = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        var _fs = stdgo._internal.flag.Flag.newFlagSet(("hang" : stdgo.GoString), (1 : stdgo._internal.flag.Flag.ErrorHandling));
        var _exitOnInterrupt = _fs.bool_(("interrupt" : stdgo.GoString), false, ("if true, commands should exit 0 on os.Interrupt" : stdgo.GoString));
        var _subsleep = _fs.duration(("subsleep" : stdgo.GoString), (0i64 : stdgo._internal.time.Time.Duration), ("amount of time for the \'hang\' helper to leave an orphaned subprocess sleeping with stderr open" : stdgo.GoString));
        var _probe = _fs.duration(("probe" : stdgo.GoString), (0i64 : stdgo._internal.time.Time.Duration), ("if nonzero, the \'hang\' helper should write to stderr at this interval, and exit nonzero if a write fails" : stdgo.GoString));
        var _read = _fs.bool_(("read" : stdgo.GoString), false, ("if true, the \'hang\' helper should read stdin to completion before sleeping" : stdgo.GoString));
        _fs.parse((_args.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>));
        var _pid:stdgo.GoInt = stdgo._internal.os.Os.getpid();
        if (_subsleep.value != ((0i64 : stdgo._internal.time.Time.Duration))) {
            var _cmd = stdgo._internal.os.exec.Exec.command(_exePath((null : stdgo._internal.testing.Testing.TB))?.__copy__(), ("hang" : stdgo.GoString), (_subsleep.value.string() : stdgo.GoString)?.__copy__(), ("-read=true" : stdgo.GoString), (("-probe=" : stdgo.GoString) + (_probe.value.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
            _cmd.stdin = stdgo.Go.asInterface(stdgo._internal.os.Os.stdin);
            _cmd.stderr = stdgo.Go.asInterface(stdgo._internal.os.Os.stderr);
            var __tmp__ = _cmd.stdoutPipe(), _out:stdgo._internal.io.Io.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.fmt.Fmt.fprintln(stdgo.Go.asInterface(stdgo._internal.os.Os.stderr), stdgo.Go.toInterface(_err));
                Sys.exit((1 : stdgo.GoInt));
            };
            _cmd.start();
            var _buf = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>);
            {
                var __tmp__ = stdgo._internal.io.Io.copy(stdgo.Go.asInterface(_buf), _out), __24:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    stdgo._internal.fmt.Fmt.fprintln(stdgo.Go.asInterface(stdgo._internal.os.Os.stderr), stdgo.Go.toInterface(_err));
                    _cmd.process.kill();
                    _cmd.wait_();
                    Sys.exit((1 : stdgo.GoInt));
                };
            };
            stdgo._internal.fmt.Fmt.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os.stderr), ("%d: started %d: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_pid), stdgo.Go.toInterface(_cmd.process.pid), stdgo.Go.toInterface(stdgo.Go.asInterface(_cmd)));
            stdgo.Go.routine(() -> _cmd.wait_());
        };
        if (_exitOnInterrupt.value) {
            var _c = (new stdgo.Chan<stdgo._internal.os.Os.Signal>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo._internal.os.Os.Signal)) : stdgo.Chan<stdgo._internal.os.Os.Signal>);
            stdgo._internal.os.signal.Signal.notify(_c, stdgo._internal.os.Os.interrupt);
            stdgo.Go.routine(() -> {
                var a = function():Void {
                    var _sig:stdgo._internal.os.Os.Signal = _c.__get__();
                    stdgo._internal.fmt.Fmt.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os.stderr), ("%d: received %v\n" : stdgo.GoString), stdgo.Go.toInterface(_pid), stdgo.Go.toInterface(_sig));
                    Sys.exit((0 : stdgo.GoInt));
                };
                a();
            });
        } else {
            stdgo._internal.os.signal.Signal.ignore(stdgo._internal.os.Os.interrupt);
        };
        stdgo._internal.os.Os.stdout.close();
        if (_read.value) {
            if (_pipeSignal != null) {
                stdgo._internal.os.signal.Signal.ignore(_pipeSignal);
            };
            var _r = stdgo._internal.bufio.Bufio.newReader(stdgo.Go.asInterface(stdgo._internal.os.Os.stdin));
            while (true) {
                var __tmp__ = _r.readBytes((10 : stdgo.GoUInt8)), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_line.length) > (0 : stdgo.GoInt) : Bool)) {
                    stdgo._internal.fmt.Fmt.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os.stderr), ("%d: read %s" : stdgo.GoString), stdgo.Go.toInterface(_pid), stdgo.Go.toInterface(_line));
                };
                if (_err != null) {
                    stdgo._internal.fmt.Fmt.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os.stderr), ("%d: finished read: %v" : stdgo.GoString), stdgo.Go.toInterface(_pid), stdgo.Go.toInterface(_err));
                    break;
                };
            };
        };
        if (_probe.value != ((0i64 : stdgo._internal.time.Time.Duration))) {
            var _ticker = stdgo._internal.time.Time.newTicker(_probe.value);
            stdgo.Go.routine(() -> {
                var a = function():Void {
                    for (_ => _ in _ticker.c) {
                        {
                            var __tmp__ = stdgo._internal.fmt.Fmt.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os.stderr), ("%d: ok\n" : stdgo.GoString), stdgo.Go.toInterface(_pid)), __61:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                Sys.exit((1 : stdgo.GoInt));
                            };
                        };
                    };
                };
                a();
            });
        };
        if (_sleep != ((0i64 : stdgo._internal.time.Time.Duration))) {
            stdgo._internal.time.Time.sleep(_sleep);
            stdgo._internal.fmt.Fmt.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os.stderr), ("%d: slept %v\n" : stdgo.GoString), stdgo.Go.toInterface(_pid), stdgo.Go.toInterface(stdgo.Go.asInterface(_sleep)));
        };
    }
function _newTickReader(_interval:stdgo._internal.time.Time.Duration):stdgo.Ref<T_tickReader> {
        return (stdgo.Go.setRef(({ _interval : _interval } : stdgo._internal.os.exec_test.Exec_test.T_tickReader)) : stdgo.Ref<stdgo._internal.os.exec_test.Exec_test.T_tickReader>);
    }
function _startHang(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _ctx:stdgo._internal.context.Context.Context, _hangTime:stdgo._internal.time.Time.Duration, _interrupt:stdgo._internal.os.Os.Signal, _waitDelay:stdgo._internal.time.Time.Duration, _flags:haxe.Rest<stdgo.GoString>):stdgo.Ref<stdgo._internal.os.exec.Exec.Cmd> {
        var _flags = new stdgo.Slice<stdgo.GoString>(_flags.length, 0, ..._flags);
        _t.helper();
        var _args = ((new stdgo.Slice<stdgo.GoString>(1, 1, ...[(_hangTime.string() : stdgo.GoString)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>).__append__(...(_flags : Array<stdgo.GoString>)));
        var _cmd = _helperCommandContext(_t, _ctx, ("hang" : stdgo.GoString), ...(_args : Array<stdgo.GoString>));
        _cmd.stdin = stdgo.Go.asInterface(_newTickReader((1000000i64 : stdgo._internal.time.Time.Duration)));
        _cmd.stderr = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.strings.Strings.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>));
        if (_interrupt == null) {
            _cmd.cancel = null;
        } else {
            _cmd.cancel = function():stdgo.Error {
                return _cmd.process.signal(_interrupt);
            };
        };
        _cmd.waitDelay = _waitDelay;
        var __tmp__ = _cmd.stdoutPipe(), _out:stdgo._internal.io.Io.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        _t.log(stdgo.Go.toInterface(stdgo.Go.asInterface(_cmd)));
        {
            var _err:stdgo.Error = _cmd.start();
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>);
        {
            var __tmp__ = stdgo._internal.io.Io.copy(stdgo.Go.asInterface(_buf), _out), __74:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
                _cmd.process.kill();
                _cmd.wait_();
                _t.failNow();
            };
        };
        if ((_buf.len() > (0 : stdgo.GoInt) : Bool)) {
            _t.logf(("stdout %v:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_cmd.args), stdgo.Go.toInterface(stdgo.Go.asInterface(_buf)));
        };
        return _cmd;
    }
function testWaitInterrupt(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        {};
        _t.run(("Wait" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
            _t.parallel();
            var _cmd = _startHang(_t, stdgo._internal.context.Context.background(), (1000000i64 : stdgo._internal.time.Time.Duration), stdgo._internal.os.Os.kill, (0i64 : stdgo._internal.time.Time.Duration));
            var _err:stdgo.Error = _cmd.wait_();
            _t.logf(("stderr:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_cmd.stderr));
            _t.logf(("[%d] %v" : stdgo.GoString), stdgo.Go.toInterface(_cmd.process.pid), stdgo.Go.toInterface(_err));
            if (_err != null) {
                _t.errorf(("Wait: %v; want <nil>" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            {
                var _ps = _cmd.processState;
                if (!_ps.exited()) {
                    _t.errorf(("cmd did not exit: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_ps)));
                } else {
                    var _code:stdgo.GoInt = _ps.exitCode();
                    if (_code != ((0 : stdgo.GoInt))) {
                        _t.errorf(("cmd.ProcessState.ExitCode() = %v; want 0" : stdgo.GoString), stdgo.Go.toInterface(_code));
                    };
                };
            };
        });
        _t.run(("WaitDelay" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
            if (false) {
                _t.skipf(("skipping: os.Interrupt is not implemented on Windows" : stdgo.GoString));
            };
            _t.parallel();
            var __tmp__ = stdgo._internal.context.Context.withCancel(stdgo._internal.context.Context.background()), _ctx:stdgo._internal.context.Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context.CancelFunc = __tmp__._1;
            var _cmd = _startHang(_t, _ctx, (600000000000i64 : stdgo._internal.time.Time.Duration), (null : stdgo._internal.os.Os.Signal), (600000000000i64 : stdgo._internal.time.Time.Duration), ("-interrupt=true" : stdgo.GoString));
            _cancel();
            stdgo._internal.time.Time.sleep((1000000i64 : stdgo._internal.time.Time.Duration));
            {
                var _err:stdgo.Error = _cmd.process.signal(stdgo._internal.os.Os.interrupt);
                if (_err != null) {
                    _t.error(stdgo.Go.toInterface(_err));
                };
            };
            var _err:stdgo.Error = _cmd.wait_();
            _t.logf(("stderr:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_cmd.stderr));
            _t.logf(("[%d] %v" : stdgo.GoString), stdgo.Go.toInterface(_cmd.process.pid), stdgo.Go.toInterface(_err));
            if (_err != null) {
                _t.errorf(("Wait: %v; want nil" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            {
                var _ps = _cmd.processState;
                if (!_ps.exited()) {
                    _t.errorf(("cmd did not exit: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_ps)));
                } else {
                    var _code:stdgo.GoInt = _ps.exitCode();
                    if (_code != ((0 : stdgo.GoInt))) {
                        _t.errorf(("cmd.ProcessState.ExitCode() = %v; want 0" : stdgo.GoString), stdgo.Go.toInterface(_code));
                    };
                };
            };
        });
        _t.run(("SIGKILL-hang" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
            _t.parallel();
            var __tmp__ = stdgo._internal.context.Context.withCancel(stdgo._internal.context.Context.background()), _ctx:stdgo._internal.context.Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context.CancelFunc = __tmp__._1;
            var _cmd = _startHang(_t, _ctx, (600000000000i64 : stdgo._internal.time.Time.Duration), stdgo._internal.os.Os.kill, (10000000i64 : stdgo._internal.time.Time.Duration), ("-subsleep=10m" : stdgo.GoString), ("-probe=1ms" : stdgo.GoString));
            _cancel();
            var _err:stdgo.Error = _cmd.wait_();
            _t.logf(("stderr:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_cmd.stderr));
            _t.logf(("[%d] %v" : stdgo.GoString), stdgo.Go.toInterface(_cmd.process.pid), stdgo.Go.toInterface(_err));
            {
                var _ee = (stdgo.Go.setRef((null : stdgo.Ref<stdgo._internal.os.exec.Exec.ExitError>)) : stdgo.Ref<stdgo.Ref<stdgo._internal.os.exec.Exec.ExitError>>);
                if (!stdgo._internal.errors.Errors.as(_err, stdgo.Go.toInterface(_ee))) {
                    _t.errorf(("Wait error = %v; want %T" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(stdgo.Go.asInterface((_ee : stdgo.Ref<stdgo._internal.os.exec.Exec.ExitError>))));
                };
            };
        });
        _t.run(("Exit-hang" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
            _t.parallel();
            var _cmd = _startHang(_t, stdgo._internal.context.Context.background(), (1000000i64 : stdgo._internal.time.Time.Duration), (null : stdgo._internal.os.Os.Signal), (10000000i64 : stdgo._internal.time.Time.Duration), ("-subsleep=10m" : stdgo.GoString), ("-probe=1ms" : stdgo.GoString));
            var _err:stdgo.Error = _cmd.wait_();
            _t.logf(("stderr:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_cmd.stderr));
            _t.logf(("[%d] %v" : stdgo.GoString), stdgo.Go.toInterface(_cmd.process.pid), stdgo.Go.toInterface(_err));
            if (!stdgo._internal.errors.Errors.is_(_err, stdgo._internal.os.exec.Exec.errWaitDelay)) {
                _t.errorf(("Wait error = %v; want %T" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(stdgo._internal.os.exec.Exec.errWaitDelay));
            };
        });
        _t.run(("SIGINT-ignored" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
            if (false) {
                _t.skipf(("skipping: os.Interrupt is not implemented on Windows" : stdgo.GoString));
            };
            _t.parallel();
            var __tmp__ = stdgo._internal.context.Context.withCancel(stdgo._internal.context.Context.background()), _ctx:stdgo._internal.context.Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context.CancelFunc = __tmp__._1;
            var _cmd = _startHang(_t, _ctx, (600000000000i64 : stdgo._internal.time.Time.Duration), stdgo._internal.os.Os.interrupt, (10000000i64 : stdgo._internal.time.Time.Duration), ("-interrupt=false" : stdgo.GoString));
            _cancel();
            var _err:stdgo.Error = _cmd.wait_();
            _t.logf(("stderr:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_cmd.stderr));
            _t.logf(("[%d] %v" : stdgo.GoString), stdgo.Go.toInterface(_cmd.process.pid), stdgo.Go.toInterface(_err));
            {
                var _ee = (stdgo.Go.setRef((null : stdgo.Ref<stdgo._internal.os.exec.Exec.ExitError>)) : stdgo.Ref<stdgo.Ref<stdgo._internal.os.exec.Exec.ExitError>>);
                if (!stdgo._internal.errors.Errors.as(_err, stdgo.Go.toInterface(_ee))) {
                    _t.errorf(("Wait error = %v; want %T" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(stdgo.Go.asInterface((_ee : stdgo.Ref<stdgo._internal.os.exec.Exec.ExitError>))));
                };
            };
        });
        _t.run(("SIGINT-handled" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
            if (false) {
                _t.skipf(("skipping: os.Interrupt is not implemented on Windows" : stdgo.GoString));
            };
            _t.parallel();
            var __tmp__ = stdgo._internal.context.Context.withCancel(stdgo._internal.context.Context.background()), _ctx:stdgo._internal.context.Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context.CancelFunc = __tmp__._1;
            var _cmd = _startHang(_t, _ctx, (600000000000i64 : stdgo._internal.time.Time.Duration), stdgo._internal.os.Os.interrupt, (0i64 : stdgo._internal.time.Time.Duration), ("-interrupt=true" : stdgo.GoString));
            _cancel();
            var _err:stdgo.Error = _cmd.wait_();
            _t.logf(("stderr:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_cmd.stderr));
            _t.logf(("[%d] %v" : stdgo.GoString), stdgo.Go.toInterface(_cmd.process.pid), stdgo.Go.toInterface(_err));
            if (!stdgo._internal.errors.Errors.is_(_err, _ctx.err())) {
                _t.errorf(("Wait error = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_ctx.err()));
            };
            {
                var _ps = _cmd.processState;
                if (!_ps.exited()) {
                    _t.errorf(("cmd did not exit: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_ps)));
                } else {
                    var _code:stdgo.GoInt = _ps.exitCode();
                    if (_code != ((0 : stdgo.GoInt))) {
                        _t.errorf(("cmd.ProcessState.ExitCode() = %v; want 0" : stdgo.GoString), stdgo.Go.toInterface(_code));
                    };
                };
            };
        });
        _t.run(("SIGQUIT" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
            if (_quitSignal == null) {
                _t.skipf(("skipping: SIGQUIT is not supported on %v" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)));
            };
            _t.parallel();
            var __tmp__ = stdgo._internal.context.Context.withCancel(stdgo._internal.context.Context.background()), _ctx:stdgo._internal.context.Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context.CancelFunc = __tmp__._1;
            var _cmd = _startHang(_t, _ctx, (600000000000i64 : stdgo._internal.time.Time.Duration), _quitSignal, (0i64 : stdgo._internal.time.Time.Duration));
            _cancel();
            var _err:stdgo.Error = _cmd.wait_();
            _t.logf(("stderr:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_cmd.stderr));
            _t.logf(("[%d] %v" : stdgo.GoString), stdgo.Go.toInterface(_cmd.process.pid), stdgo.Go.toInterface(_err));
            {
                var _ee = (stdgo.Go.setRef((null : stdgo.Ref<stdgo._internal.os.exec.Exec.ExitError>)) : stdgo.Ref<stdgo.Ref<stdgo._internal.os.exec.Exec.ExitError>>);
                if (!stdgo._internal.errors.Errors.as(_err, stdgo.Go.toInterface(_ee))) {
                    _t.errorf(("Wait error = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_ctx.err()));
                };
            };
            {
                var _ps = _cmd.processState;
                if (!_ps.exited()) {
                    _t.errorf(("cmd did not exit: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_ps)));
                } else {
                    var _code:stdgo.GoInt = _ps.exitCode();
                    if (_code != ((2 : stdgo.GoInt))) {
                        _t.errorf(("cmd.ProcessState.ExitCode() = %v; want 2" : stdgo.GoString), stdgo.Go.toInterface(_code));
                    };
                };
            };
            if (!stdgo._internal.strings.Strings.contains(stdgo._internal.fmt.Fmt.sprint(stdgo.Go.toInterface(_cmd.stderr))?.__copy__(), ("\n\ngoroutine " : stdgo.GoString))) {
                _t.errorf(("cmd.Stderr does not contain a goroutine dump" : stdgo.GoString));
            };
        });
    }
function testCancelErrors(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        _t.run(("success after error" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
            var __deferstack__:Array<Void -> Void> = [];
            try {
                _t.parallel();
                var __tmp__ = stdgo._internal.context.Context.withCancel(stdgo._internal.context.Context.background()), _ctx:stdgo._internal.context.Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context.CancelFunc = __tmp__._1;
                __deferstack__.unshift(() -> _cancel());
                var _cmd = _helperCommandContext(_t, _ctx, ("pipetest" : stdgo.GoString));
                var __tmp__ = _cmd.stdinPipe(), _stdin:stdgo._internal.io.Io.WriteCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
                var _errArbitrary:stdgo.Error = stdgo._internal.errors.Errors.new_(("arbitrary error" : stdgo.GoString));
                _cmd.cancel = function():stdgo.Error {
                    _stdin.close();
                    _t.logf(("Cancel returning %v" : stdgo.GoString), stdgo.Go.toInterface(_errArbitrary));
                    return _errArbitrary;
                };
                {
                    var _err:stdgo.Error = _cmd.start();
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                };
                _cancel();
                _err = _cmd.wait_();
                _t.logf(("[%d] %v" : stdgo.GoString), stdgo.Go.toInterface(_cmd.process.pid), stdgo.Go.toInterface(_err));
                if ((!stdgo._internal.errors.Errors.is_(_err, _errArbitrary) || (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(_errArbitrary)) : Bool)) {
                    _t.errorf(("Wait error = %v; want an error wrapping %v" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_errArbitrary));
                };
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return;
                };
            } catch(__exception__) {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        });
        _t.run(("success after ErrProcessDone" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
            var __deferstack__:Array<Void -> Void> = [];
            try {
                _t.parallel();
                var __tmp__ = stdgo._internal.context.Context.withCancel(stdgo._internal.context.Context.background()), _ctx:stdgo._internal.context.Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context.CancelFunc = __tmp__._1;
                __deferstack__.unshift(() -> _cancel());
                var _cmd = _helperCommandContext(_t, _ctx, ("pipetest" : stdgo.GoString));
                var __tmp__ = _cmd.stdinPipe(), _stdin:stdgo._internal.io.Io.WriteCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
                var __tmp__ = _cmd.stdoutPipe(), _stdout:stdgo._internal.io.Io.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
                var _interruptCalled = (new stdgo.Chan<T_delayedInfiniteReader>(0, () -> ({} : T_delayedInfiniteReader)) : stdgo.Chan<T_delayedInfiniteReader>);
                var _done = (new stdgo.Chan<T_delayedInfiniteReader>(0, () -> ({} : T_delayedInfiniteReader)) : stdgo.Chan<T_delayedInfiniteReader>);
                _cmd.cancel = function():stdgo.Error {
                    if (_interruptCalled != null) _interruptCalled.__close__();
                    _done.__get__();
                    _t.logf(("Cancel returning an error wrapping ErrProcessDone" : stdgo.GoString));
                    return stdgo._internal.fmt.Fmt.errorf(("%w: stdout closed" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.os.Os.errProcessDone));
                };
                {
                    var _err:stdgo.Error = _cmd.start();
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                };
                _cancel();
                _interruptCalled.__get__();
                _stdin.close();
                stdgo._internal.io.Io.copy(stdgo._internal.io.Io.discard, _stdout);
                if (_done != null) _done.__close__();
                _err = _cmd.wait_();
                _t.logf(("[%d] %v" : stdgo.GoString), stdgo.Go.toInterface(_cmd.process.pid), stdgo.Go.toInterface(_err));
                if (_err != null) {
                    _t.errorf(("Wait error = %v; want nil" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return;
                };
            } catch(__exception__) {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        });
        _t.run(("killed after error" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
            var __deferstack__:Array<Void -> Void> = [];
            try {
                _t.parallel();
                var __tmp__ = stdgo._internal.context.Context.withCancel(stdgo._internal.context.Context.background()), _ctx:stdgo._internal.context.Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context.CancelFunc = __tmp__._1;
                __deferstack__.unshift(() -> _cancel());
                var _cmd = _helperCommandContext(_t, _ctx, ("pipetest" : stdgo.GoString));
                var __tmp__ = _cmd.stdinPipe(), _stdin:stdgo._internal.io.Io.WriteCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
                __deferstack__.unshift(() -> _stdin.close());
                var _errArbitrary:stdgo.Error = stdgo._internal.errors.Errors.new_(("arbitrary error" : stdgo.GoString));
                var _interruptCalled:stdgo._internal.sync.atomic_.Atomic_.Bool_ = ({} : stdgo._internal.sync.atomic_.Atomic_.Bool_);
                _cmd.cancel = function():stdgo.Error {
                    _t.logf(("Cancel called" : stdgo.GoString));
                    _interruptCalled.store(true);
                    return _errArbitrary;
                };
                _cmd.waitDelay = (1000000i64 : stdgo._internal.time.Time.Duration);
                {
                    var _err:stdgo.Error = _cmd.start();
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                };
                _cancel();
                _err = _cmd.wait_();
                _t.logf(("[%d] %v" : stdgo.GoString), stdgo.Go.toInterface(_cmd.process.pid), stdgo.Go.toInterface(_err));
                if (!_interruptCalled.load()) {
                    _t.errorf(("Cancel was not called when the context was canceled" : stdgo.GoString));
                };
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.os.exec.Exec.ExitError>)) : stdgo.Ref<stdgo._internal.os.exec.Exec.ExitError>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.os.exec.Exec.ExitError>), _1 : false };
                    }, _ee = __tmp__._0, _ok = __tmp__._1;
                    if (!_ok) {
                        _t.errorf(("Wait error = %v; want %T" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(stdgo.Go.asInterface((_ee : stdgo._internal.os.exec.Exec.ExitError))));
                    };
                };
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return;
                };
            } catch(__exception__) {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        });
        _t.run(("killed after spurious ErrProcessDone" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
            var __deferstack__:Array<Void -> Void> = [];
            try {
                _t.parallel();
                var __tmp__ = stdgo._internal.context.Context.withCancel(stdgo._internal.context.Context.background()), _ctx:stdgo._internal.context.Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context.CancelFunc = __tmp__._1;
                __deferstack__.unshift(() -> _cancel());
                var _cmd = _helperCommandContext(_t, _ctx, ("pipetest" : stdgo.GoString));
                var __tmp__ = _cmd.stdinPipe(), _stdin:stdgo._internal.io.Io.WriteCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
                __deferstack__.unshift(() -> _stdin.close());
                var _interruptCalled:stdgo._internal.sync.atomic_.Atomic_.Bool_ = ({} : stdgo._internal.sync.atomic_.Atomic_.Bool_);
                _cmd.cancel = function():stdgo.Error {
                    _t.logf(("Cancel returning an error wrapping ErrProcessDone" : stdgo.GoString));
                    _interruptCalled.store(true);
                    return stdgo._internal.fmt.Fmt.errorf(("%w: stdout closed" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.os.Os.errProcessDone));
                };
                _cmd.waitDelay = (1000000i64 : stdgo._internal.time.Time.Duration);
                {
                    var _err:stdgo.Error = _cmd.start();
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                };
                _cancel();
                _err = _cmd.wait_();
                _t.logf(("[%d] %v" : stdgo.GoString), stdgo.Go.toInterface(_cmd.process.pid), stdgo.Go.toInterface(_err));
                if (!_interruptCalled.load()) {
                    _t.errorf(("Cancel was not called when the context was canceled" : stdgo.GoString));
                };
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.os.exec.Exec.ExitError>)) : stdgo.Ref<stdgo._internal.os.exec.Exec.ExitError>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.os.exec.Exec.ExitError>), _1 : false };
                    }, _ee = __tmp__._0, _ok = __tmp__._1;
                    if (!_ok) {
                        _t.errorf(("Wait error of type %T; want %T" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(stdgo.Go.asInterface(_ee)));
                    };
                };
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return;
                };
            } catch(__exception__) {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        });
        _t.run(("nonzero exit after error" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
            var __deferstack__:Array<Void -> Void> = [];
            try {
                _t.parallel();
                var __tmp__ = stdgo._internal.context.Context.withCancel(stdgo._internal.context.Context.background()), _ctx:stdgo._internal.context.Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context.CancelFunc = __tmp__._1;
                __deferstack__.unshift(() -> _cancel());
                var _cmd = _helperCommandContext(_t, _ctx, ("stderrfail" : stdgo.GoString));
                var __tmp__ = _cmd.stderrPipe(), _stderr:stdgo._internal.io.Io.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
                var _errArbitrary:stdgo.Error = stdgo._internal.errors.Errors.new_(("arbitrary error" : stdgo.GoString));
                var _interrupted = (new stdgo.Chan<T_delayedInfiniteReader>(0, () -> ({} : T_delayedInfiniteReader)) : stdgo.Chan<T_delayedInfiniteReader>);
                _cmd.cancel = function():stdgo.Error {
                    if (_interrupted != null) _interrupted.__close__();
                    return _errArbitrary;
                };
                {
                    var _err:stdgo.Error = _cmd.start();
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                };
                _cancel();
                _interrupted.__get__();
                stdgo._internal.io.Io.copy(stdgo._internal.io.Io.discard, _stderr);
                _err = _cmd.wait_();
                _t.logf(("[%d] %v" : stdgo.GoString), stdgo.Go.toInterface(_cmd.process.pid), stdgo.Go.toInterface(_err));
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.os.exec.Exec.ExitError>)) : stdgo.Ref<stdgo._internal.os.exec.Exec.ExitError>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.os.exec.Exec.ExitError>), _1 : false };
                    }, _ee = __tmp__._0, _ok = __tmp__._1;
                    if ((!_ok || (_ee.processState.exitCode() != (1 : stdgo.GoInt)) : Bool)) {
                        _t.errorf(("Wait error = %v; want exit status 1" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    };
                };
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return;
                };
            } catch(__exception__) {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        });
    }
function testConcurrentExec(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __tmp__ = stdgo._internal.context.Context.withCancel(stdgo._internal.context.Context.background()), _ctx:stdgo._internal.context.Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context.CancelFunc = __tmp__._1;
        var __0:stdgo.GoInt = stdgo._internal.runtime.Runtime.gomaxprocs((0 : stdgo.GoInt)), __1:stdgo.GoInt = stdgo._internal.runtime.Runtime.gomaxprocs((0 : stdgo.GoInt)), __2:stdgo._internal.sync.Sync.WaitGroup = ({} : stdgo._internal.sync.Sync.WaitGroup), __3:stdgo._internal.sync.Sync.WaitGroup = ({} : stdgo._internal.sync.Sync.WaitGroup), _exits:stdgo._internal.sync.Sync.WaitGroup = __3, _hangs:stdgo._internal.sync.Sync.WaitGroup = __2, _nExits:stdgo.GoInt = __1, _nHangs:stdgo.GoInt = __0;
        _hangs.add(_nHangs);
        _exits.add(_nExits);
        var _ready:stdgo._internal.sync.Sync.WaitGroup = ({} : stdgo._internal.sync.Sync.WaitGroup);
        _ready.add((_nHangs + _nExits : stdgo.GoInt));
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _nHangs : Bool), _i++, {
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            __deferstack__.unshift(() -> _hangs.done());
                            var _cmd = _helperCommandContext(_t, _ctx, ("pipetest" : stdgo.GoString));
                            var __tmp__ = _cmd.stdinPipe(), _stdin:stdgo._internal.io.Io.WriteCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                _ready.done();
                                _t.error(stdgo.Go.toInterface(_err));
                                {
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    return;
                                };
                            };
                            _cmd.cancel = _stdin.close;
                            _ready.done();
                            _ready.wait_();
                            {
                                var _err:stdgo.Error = _cmd.start();
                                if (_err != null) {
                                    if (!stdgo._internal.errors.Errors.is_(_err, stdgo._internal.context.Context.canceled)) {
                                        _t.error(stdgo.Go.toInterface(_err));
                                    };
                                    {
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        return;
                                    };
                                };
                            };
                            _cmd.wait_();
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                return;
                            };
                        } catch(__exception__) {
                            var exe:Dynamic = __exception__.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                            return;
                        };
                    };
                    a();
                });
            });
        };
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _nExits : Bool), _i++, {
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            __deferstack__.unshift(() -> _exits.done());
                            var _cmd = _helperCommandContext(_t, _ctx, ("exit" : stdgo.GoString), ("0" : stdgo.GoString));
                            _ready.done();
                            _ready.wait_();
                            {
                                var _err:stdgo.Error = _cmd.run();
                                if (_err != null) {
                                    _t.error(stdgo.Go.toInterface(_err));
                                };
                            };
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                return;
                            };
                        } catch(__exception__) {
                            var exe:Dynamic = __exception__.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                            return;
                        };
                    };
                    a();
                });
            });
        };
        _exits.wait_();
        _cancel();
        _hangs.wait_();
    }
@:keep var _ = {
        try {
            var _godebug:stdgo.GoString = stdgo._internal.os.Os.getenv(("GODEBUG" : stdgo.GoString))?.__copy__();
            if (_godebug != (stdgo.Go.str())) {
                _godebug = (_godebug + (("," : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
            _godebug = (_godebug + (("execwait=2" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            stdgo._internal.os.Os.setenv(("GODEBUG" : stdgo.GoString), _godebug?.__copy__());
            if (stdgo._internal.os.Os.getenv(("GO_EXEC_TEST_PID" : stdgo.GoString)) != (stdgo.Go.str())) {
                throw "__return__";
            };
            if (false) {
                throw "__return__";
            };
            {
                var _fd:stdgo.GoUIntptr = (3 : stdgo.GoUIntptr);
                stdgo.Go.cfor((_fd <= (100 : stdgo.GoUIntptr) : Bool), _fd++, {
                    if (stdgo._internal.internal.poll.Poll.isPollDescriptor(_fd)) {
                        continue;
                    };
                    if (stdgo._internal.os.exec.internal.fdtest.Fdtest.exists(_fd)) {
                        _haveUnexpectedFDs = true;
                        throw "__return__";
                    };
                });
            };
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
class T_delayedInfiniteReader_asInterface {
    @:keep
    public dynamic function read(_b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_delayedInfiniteReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.os.exec_test.Exec_test.T_delayedInfiniteReader_asInterface) class T_delayedInfiniteReader_static_extension {
    @:keep
    static public function read( _:T_delayedInfiniteReader, _b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:T_delayedInfiniteReader = _?.__copy__();
        stdgo._internal.time.Time.sleep((100000000i64 : stdgo._internal.time.Time.Duration));
        for (_i => _ in _b) {
            _b[(_i : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
        };
        return { _0 : (_b.length), _1 : (null : stdgo.Error) };
    }
}
class T_badWriter_asInterface {
    @:keep
    public dynamic function write(_data:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_data);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_badWriter>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.os.exec_test.Exec_test.T_badWriter_asInterface) class T_badWriter_static_extension {
    @:keep
    static public function write( _w:stdgo.Ref<T_badWriter>, _data:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<T_badWriter> = _w;
        return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io.errUnexpectedEOF };
    }
}
class T_tickReader_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_tickReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.os.exec_test.Exec_test.T_tickReader_asInterface) class T_tickReader_static_extension {
    @:keep
    static public function read( _r:stdgo.Ref<T_tickReader>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<T_tickReader> = _r;
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        if ((_r._s.length) == ((0 : stdgo.GoInt))) {
            {
                var _d:stdgo._internal.time.Time.Duration = (_r._interval - stdgo._internal.time.Time.since(_r._lastTick?.__copy__()) : stdgo._internal.time.Time.Duration);
                if ((_d > (0i64 : stdgo._internal.time.Time.Duration) : Bool)) {
                    stdgo._internal.time.Time.sleep(_d);
                };
            };
            _r._lastTick = stdgo._internal.time.Time.now()?.__copy__();
            _r._s = _r._lastTick.format(("2006-01-02T15:04:05.999999999Z07:00\n" : stdgo.GoString))?.__copy__();
        };
        _n = stdgo.Go.copySlice(_p, _r._s);
        _r._s = (_r._s.__slice__(_n) : stdgo.GoString)?.__copy__();
        return { _0 : _n, _1 : (null : stdgo.Error) };
    }
}
