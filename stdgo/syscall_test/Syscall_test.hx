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
import stdgo.syscall.Syscall;
private function _testSetGetenv(_t:Ref<stdgo.testing.Testing.T>, _key:GoString, _value:GoString):Void {
        var _err:Error = stdgo.syscall.Syscall.setenv(_key, _value);
        if (_err != null) {
            _t.fatalf(("Setenv failed to set %q: %v" : GoString), Go.toInterface(_value), Go.toInterface(_err));
        };
        var __tmp__ = stdgo.syscall.Syscall.getenv(_key), _newvalue:GoString = __tmp__._0, _found:Bool = __tmp__._1;
        if (!_found) {
            _t.fatalf(("Getenv failed to find %v variable (want value %q)" : GoString), Go.toInterface(_key), Go.toInterface(_value));
        };
        if (_newvalue != (_value)) {
            _t.fatalf(("Getenv(%v) = %q; want %q" : GoString), Go.toInterface(_key), Go.toInterface(_newvalue), Go.toInterface(_value));
        };
    }
function testEnv(_t:Ref<stdgo.testing.Testing.T>):Void {
        _testSetGetenv(_t, ("TESTENV" : GoString), ("AVALUE" : GoString));
        _testSetGetenv(_t, ("TESTENV" : GoString), Go.str());
    }
/**
    // Check that permuting child process fds doesn't interfere with
    // reporting of fork/exec status. See Issue 14979.
**/
function testExecErrPermutedFds(_t:Ref<stdgo.testing.Testing.T>):Void {
        stdgo.internal.testenv.Testenv.mustHaveExec(Go.asInterface(_t));
        var _attr = (Go.setRef(({ files : (new Slice<Ref<stdgo.os.Os.File>>(0, 0, stdgo.os.Os.stdin, stdgo.os.Os.stderr, stdgo.os.Os.stdout) : Slice<Ref<stdgo.os.Os.File>>) } : stdgo.os.Os.ProcAttr)) : Ref<stdgo.os.Os.ProcAttr>);
        var __tmp__ = stdgo.os.Os.startProcess(("/" : GoString), (new Slice<GoString>(0, 0, ("/" : GoString)) : Slice<GoString>), _attr), __0:Ref<stdgo.os.Os.Process> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err == null) {
            _t.fatalf(("StartProcess of invalid program returned err = nil" : GoString));
        };
    }
function testGettimeofday(_t:Ref<stdgo.testing.Testing.T>):Void {
        if (true) {
            _t.skip(Go.toInterface(("not implemented on js" : GoString)));
        };
        var _tv = (Go.setRef((new stdgo.syscall.Syscall.Timeval() : stdgo.syscall.Syscall.Timeval)) : Ref<stdgo.syscall.Syscall.Timeval>);
        {
            var _err:Error = stdgo.syscall.Syscall.gettimeofday(_tv);
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        if ((_tv.sec == (0i64 : GoInt64)) && (_tv.usec == (0i64 : GoInt64))) {
            _t.fatal(Go.toInterface(("Sec and Usec both zero" : GoString)));
        };
    }
