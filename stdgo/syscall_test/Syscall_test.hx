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
function _testSetGetenv(_t:stdgo.testing.Testing.T, _key:GoString, _value:GoString):Void throw "syscall_test._testSetGetenv is not yet implemented";
function testEnv(_t:stdgo.testing.Testing.T):Void throw "syscall_test.testEnv is not yet implemented";
/**
    // Check that permuting child process fds doesn't interfere with
    // reporting of fork/exec status. See Issue 14979.
**/
function testExecErrPermutedFds(_t:stdgo.testing.Testing.T):Void throw "syscall_test.testExecErrPermutedFds is not yet implemented";
function testGettimeofday(_t:stdgo.testing.Testing.T):Void throw "syscall_test.testGettimeofday is not yet implemented";
