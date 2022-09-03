package stdgo.syscall_test;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

function _testSetGetenv(_t:stdgo.testing.Testing.T, _key:GoString, _value:GoString):Void {
	var _err:stdgo.Error = stdgo.syscall.Syscall.setenv(_key, _value);
	if (_err != null) {
		_t.fatalf((Go.str("Setenv failed to set %q: %v") : GoString), Go.toInterface(_value), Go.toInterface(_err));
	};
	var __tmp__ = stdgo.syscall.Syscall.getenv(_key),
		_newvalue:GoString = __tmp__._0,
		_found:Bool = __tmp__._1;
	if (!_found) {
		_t.fatalf((Go.str("Getenv failed to find %v variable (want value %q)") : GoString), Go.toInterface(_key), Go.toInterface(_value));
	};
	if (_newvalue != _value) {
		_t.fatalf((Go.str("Getenv(%v) = %q; want %q") : GoString), Go.toInterface(_key), Go.toInterface(_newvalue), Go.toInterface(_value));
	};
}

function testEnv(_t:stdgo.testing.Testing.T):Void {
	_testSetGetenv(_t, (Go.str("TESTENV") : GoString), (Go.str("AVALUE") : GoString));
	_testSetGetenv(_t, (Go.str("TESTENV") : GoString), (Go.str() : GoString));
}

/**
	// Check that permuting child process fds doesn't interfere with
	// reporting of fork/exec status. See Issue 14979.
**/
function testExecErrPermutedFds(_t:stdgo.testing.Testing.T):Void {
	stdgo.internal.testenv.Testenv.mustHaveExec({
		final __self__ = new stdgo.testing.Testing.T_wrapper(_t);
		__self__.cleanup = #if !macro function(_f:() -> Void):Void _t.cleanup(_f) #else null #end;
		__self__.deadline = #if !macro function():{var _0:stdgo.time.Time.Time; var _1:Bool;}
			return _t.deadline() #else null #end;
		__self__.error = #if !macro function(_args:Slice<AnyInterface>):Void _t.error(_args) #else null #end;
		__self__.errorf = #if !macro function(_m:GoString, _args:Slice<AnyInterface>):Void _t.errorf(_m, _args) #else null #end;
		__self__.fail = #if !macro function():Void _t.fail() #else null #end;
		__self__.failNow = #if !macro function():Void _t.failNow() #else null #end;
		__self__.failed = #if !macro function():Bool return _t.failed() #else null #end;
		__self__.fatal = #if !macro function(_args:Slice<AnyInterface>):Void _t.fatal(_args) #else null #end;
		__self__.fatalf = #if !macro function(_m:GoString, _args:Slice<AnyInterface>):Void _t.fatalf(_m, _args) #else null #end;
		__self__.helper = #if !macro function():Void _t.helper() #else null #end;
		__self__.log = #if !macro function(_args:Slice<AnyInterface>):Void _t.log(_args) #else null #end;
		__self__.logf = #if !macro function(_m:GoString, _args:Slice<AnyInterface>):Void _t.logf(_m, _args) #else null #end;
		__self__.name = #if !macro function():GoString return _t.name() #else null #end;
		__self__.parallel = #if !macro function():Void _t.parallel() #else null #end;
		__self__.run = #if !macro function(_name:GoString, _f:Ref<stdgo.testing.Testing.T>->Void):Bool return _t.run(_name, _f) #else null #end;
		__self__.setenv = #if !macro function(_k:GoString, _v:GoString):Void _t.setenv(_k, _v) #else null #end;
		__self__.skip = #if !macro function(_args:Slice<AnyInterface>):Void _t.skip(_args) #else null #end;
		__self__.skipNow = #if !macro function():Void _t.skipNow() #else null #end;
		__self__.skipf = #if !macro function(_m:GoString, _args:Slice<AnyInterface>):Void _t.skipf(_m, _args) #else null #end;
		__self__.skipped = #if !macro function():Bool return _t.skipped() #else null #end;
		__self__.tempDir = #if !macro function():GoString return _t.tempDir() #else null #end;
		__self__._checkFuzzFn = #if !macro function(_k:GoString):Void _t._checkFuzzFn(_k) #else null #end;
		__self__._decorate = #if !macro function(_name:GoString, _offset:GoInt):GoString return _t._decorate(_name, _offset) #else null #end;
		__self__._flushToParent = #if !macro function(_testName:GoString, _format:GoString,
				_args:Slice<AnyInterface>):Void _t._flushToParent(_testName, _format, _args) #else null #end;
		__self__._frameSkip = #if !macro function(_i:GoInt):stdgo.runtime.Runtime.Frame return _t._frameSkip(_i) #else null #end;
		__self__._log = #if !macro function(_k:GoString):Void _t._log(_k) #else null #end;
		__self__._logDepth = #if !macro function(_name:GoString, _offset:GoInt):Void _t._logDepth(_name, _offset) #else null #end;
		__self__._private = #if !macro function():Void _t._private() #else null #end;
		__self__._report = #if !macro function():Void _t._report() #else null #end;
		__self__._runCleanup = #if !macro function(_ph:stdgo.testing.Testing.T_panicHandling):AnyInterface return _t._runCleanup(_ph) #else null #end;
		__self__._setRan = #if !macro function():Void _t._setRan() #else null #end;
		__self__;
	});
	var _attr = ({files: (new Slice<Ref<stdgo.os.Os.File>>(0, 0, stdgo.os.Os.stdin, stdgo.os.Os.stderr,
		stdgo.os.Os.stdout) : Slice<Ref<stdgo.os.Os.File>>)} : stdgo.os.Os.ProcAttr);
	var __tmp__ = stdgo.os.Os.startProcess((Go.str("/") : GoString), (new Slice<GoString>(0, 0, (Go.str("/") : GoString)) : Slice<GoString>), _attr),
		_0:Ref<stdgo.os.Os.Process> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err == null) {
		_t.fatalf((Go.str("StartProcess of invalid program returned err = nil") : GoString));
	};
}

function testGettimeofday(_t:stdgo.testing.Testing.T):Void {
	if (true) {
		_t.skip(Go.toInterface((Go.str("not implemented on js") : GoString)));
	};
	var _tv = (new Timeval() : Timeval);
	{
		var _err:stdgo.Error = stdgo.syscall.Syscall.gettimeofday(_tv);
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
	};
	if ((_tv.sec == (0 : GoInt64)) && (_tv.usec == (0 : GoInt64))) {
		_t.fatal(Go.toInterface((Go.str("Sec and Usec both zero") : GoString)));
	};
}
