package stdgo.os_test;
import stdgo.os.Os;
import stdgo.os.Os;
import stdgo.os.Os;
import stdgo.os.Os;
import stdgo.os.Os;
import stdgo.os.Os;
import stdgo.os.Os;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var _expandTests : Slice<stdgo.os_test.Os_test.T__struct_1> = ((null : Slice<stdgo.os_test.Os_test.T__struct_1>));
var _isExistTests : Slice<stdgo.os_test.Os_test.T_isExistTest> = ((null : Slice<stdgo.os_test.Os_test.T_isExistTest>));
var _isPermissionTests : Slice<stdgo.os_test.Os_test.T_isPermissionTest> = ((null : Slice<stdgo.os_test.Os_test.T_isPermissionTest>));
var _dot : Slice<GoString> = ((null : Slice<GoString>));
var _sysdir : Ref<stdgo.os_test.Os_test.T_sysDir> = ((null : stdgo.os_test.Os_test.T_sysDir));
var _sfdir : GoString = (("" : GoString));
var _sfname : GoString = (("" : GoString));
var _openErrorTests : Slice<stdgo.os_test.Os_test.T_openErrorTest> = ((null : Slice<stdgo.os_test.Os_test.T_openErrorTest>));
var _testLargeWrite : Pointer<Bool> = ((null : Pointer<Bool>));
var _nilFileMethodTests : Slice<stdgo.os_test.Os_test.T__struct_2> = ((null : Slice<stdgo.os_test.Os_test.T__struct_2>));
var _isReadonlyError : stdgo.Error -> Bool = null;
var _global : AnyInterface = ((null : AnyInterface));
@:structInit class T_isExistTest {
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public var _is : Bool = false;
    public var _isnot : Bool = false;
    public function new(?_err:stdgo.Error, ?_is:Bool, ?_isnot:Bool) {
        if (_err != null) this._err = _err;
        if (_is != null) this._is = _is;
        if (_isnot != null) this._isnot = _isnot;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_isExistTest(_err, _is, _isnot);
    }
}
@:structInit class T_isPermissionTest {
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public var _want : Bool = false;
    public function new(?_err:stdgo.Error, ?_want:Bool) {
        if (_err != null) this._err = _err;
        if (_want != null) this._want = _want;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_isPermissionTest(_err, _want);
    }
}
@:structInit @:using(stdgo.os_test.Os_test.T_myErrorIs_static_extension) class T_myErrorIs {
    @:embedded
    public var _error : stdgo.Error = ((null : stdgo.Error));
    public function new(?_error:stdgo.Error) {
        if (_error != null) this._error = _error;
    }
    @:embedded
    public function error():GoString return (("" : GoString));
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_myErrorIs(_error);
    }
}
@:structInit class T_sysDir {
    public var _name : GoString = "";
    public var _files : Slice<GoString> = ((null : Slice<GoString>));
    public function new(?_name:GoString, ?_files:Slice<GoString>) {
        if (_name != null) this._name = _name;
        if (_files != null) this._files = _files;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_sysDir(_name, _files);
    }
}
@:structInit class T_openErrorTest {
    public var _path : GoString = "";
    public var _mode : GoInt = 0;
    public var _error : stdgo.Error = ((null : stdgo.Error));
    public function new(?_path:GoString, ?_mode:GoInt, ?_error:stdgo.Error) {
        if (_path != null) this._path = _path;
        if (_mode != null) this._mode = _mode;
        if (_error != null) this._error = _error;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_openErrorTest(_path, _mode, _error);
    }
}
@:structInit @:local class T__struct_1 {
    public var _in : GoString = "";
    public var _out : GoString = "";
    public function string():String return "{" + Go.string(_in) + " " + Go.string(_out) + "}";
    public function new(?_in:GoString, ?_out:GoString, ?string) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_1(_in, _out);
    }
}
@:structInit @:local class T__struct_2 {
    public var _name : GoString = "";
    public var _f : Ref<File> -> stdgo.Error = null;
    public function string():String return "{" + Go.string(_name) + " " + Go.string(_f) + "}";
    public function new(?_name:GoString, ?_f:Ref<File> -> stdgo.Error, ?string) {
        if (_name != null) this._name = _name;
        if (_f != null) this._f = _f;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_2(_name, _f);
    }
}
@:follow typedef T_syscallDescriptor = GoInt;
/**
    // testGetenv gives us a controlled set of variables for testing Expand.
**/
function _testGetenv(_s:GoString):GoString return (("" : GoString));
function testExpand(_t:stdgo.testing.Testing.T):Void return;
function benchmarkExpand(_b:stdgo.testing.Testing.B):Void return;
function testConsistentEnviron(_t:stdgo.testing.Testing.T):Void return;
function testUnsetenv(_t:stdgo.testing.Testing.T):Void return;
function testClearenv(_t:stdgo.testing.Testing.T):Void return;
function testLookupEnv(_t:stdgo.testing.Testing.T):Void return;
/**
    // On Windows, Environ was observed to report keys with a single leading "=".
    // Check that they are properly reported by LookupEnv and can be set by SetEnv.
    // See https://golang.org/issue/49886.
**/
function testEnvironConsistency(_t:stdgo.testing.Testing.T):Void return;
function testErrIsExist(_t:stdgo.testing.Testing.T):Void return;
function _testErrNotExist(_t:stdgo.testing.Testing.T, _name:GoString):GoString return (("" : GoString));
function testErrIsNotExist(_t:stdgo.testing.Testing.T):Void return;
function _checkErrorPredicate(_predName:GoString, _pred:Error -> Bool, _err:Error, _target:Error):GoString return (("" : GoString));
function testIsExist(_t:stdgo.testing.Testing.T):Void return;
function testIsPermission(_t:stdgo.testing.Testing.T):Void return;
function testErrPathNUL(_t:stdgo.testing.Testing.T):Void return;
function testPathErrorUnwrap(_t:stdgo.testing.Testing.T):Void return;
function testErrorIsMethods(_t:stdgo.testing.Testing.T):Void return;
function exampleOpenFile():Void return;
function exampleOpenFile_append():Void return;
function exampleChmod():Void return;
function exampleChtimes():Void return;
function exampleFileMode():Void return;
function exampleErrNotExist():Void return;
function exampleExpand():Void return;
function exampleExpandEnv():Void return;
function exampleLookupEnv():Void return;
function exampleGetenv():Void return;
function exampleUnsetenv():Void return;
function exampleReadDir():Void return;
function exampleMkdirTemp():Void return;
function exampleMkdirTemp_suffix():Void return;
function exampleCreateTemp():Void return;
function exampleCreateTemp_suffix():Void return;
function exampleReadFile():Void return;
function exampleWriteFile():Void return;
function exampleMkdir():Void return;
function exampleMkdirAll():Void return;
function testExecutable(_t:stdgo.testing.Testing.T):Void return;
function _sameFile(_fn1:GoString, _fn2:GoString):Bool return false;
function testExecutableDeleted(_t:stdgo.testing.Testing.T):Void return;
function testMain(_m:stdgo.testing.Testing.M):Void return;
function _size(_name:GoString, _t:stdgo.testing.Testing.T):GoInt64 return ((0 : GoInt64));
function _equal(_name1:GoString, _name2:GoString):Bool return false;
/**
    // localTmp returns a local temporary directory not on NFS.
**/
function _localTmp():GoString return (("" : GoString));
function _newFile(_testName:GoString, _t:stdgo.testing.Testing.T):File return ((null : File));
function _newDir(_testName:GoString, _t:stdgo.testing.Testing.T):GoString return (("" : GoString));
function testStat(_t:stdgo.testing.Testing.T):Void return;
function testStatError(_t:stdgo.testing.Testing.T):Void return;
function testFstat(_t:stdgo.testing.Testing.T):Void return;
function testLstat(_t:stdgo.testing.Testing.T):Void return;
/**
    // Read with length 0 should not return EOF.
**/
function testRead0(_t:stdgo.testing.Testing.T):Void return;
/**
    // Reading a closed file should return ErrClosed error
**/
function testReadClosed(_t:stdgo.testing.Testing.T):Void return;
function _testReaddirnames(_dir:GoString, _contents:Slice<GoString>, _t:stdgo.testing.Testing.T):Void return;
function _testReaddir(_dir:GoString, _contents:Slice<GoString>, _t:stdgo.testing.Testing.T):Void return;
function _testReadDir(_dir:GoString, _contents:Slice<GoString>, _t:stdgo.testing.Testing.T):Void return;
function testFileReaddirnames(_t:stdgo.testing.Testing.T):Void return;
function testFileReaddir(_t:stdgo.testing.Testing.T):Void return;
function testFileReadDir(_t:stdgo.testing.Testing.T):Void return;
function _benchmarkReaddirname(_path:GoString, _b:stdgo.testing.Testing.B):Void return;
function _benchmarkReaddir(_path:GoString, _b:stdgo.testing.Testing.B):Void return;
function _benchmarkReadDir(_path:GoString, _b:stdgo.testing.Testing.B):Void return;
function benchmarkReaddirname(_b:stdgo.testing.Testing.B):Void return;
function benchmarkReaddir(_b:stdgo.testing.Testing.B):Void return;
function benchmarkReadDir(_b:stdgo.testing.Testing.B):Void return;
function _benchmarkStat(_b:stdgo.testing.Testing.B, _path:GoString):Void return;
function _benchmarkLstat(_b:stdgo.testing.Testing.B, _path:GoString):Void return;
function benchmarkStatDot(_b:stdgo.testing.Testing.B):Void return;
function benchmarkStatFile(_b:stdgo.testing.Testing.B):Void return;
function benchmarkStatDir(_b:stdgo.testing.Testing.B):Void return;
function benchmarkLstatDot(_b:stdgo.testing.Testing.B):Void return;
function benchmarkLstatFile(_b:stdgo.testing.Testing.B):Void return;
function benchmarkLstatDir(_b:stdgo.testing.Testing.B):Void return;
/**
    // Read the directory one entry at a time.
**/
function _smallReaddirnames(_file:File, _length:GoInt, _t:stdgo.testing.Testing.T):Slice<GoString> return ((null : Slice<GoString>));
/**
    // Check that reading a directory one entry at a time gives the same result
    // as reading it all at once.
**/
function testReaddirnamesOneAtATime(_t:stdgo.testing.Testing.T):Void return;
function testReaddirNValues(_t:stdgo.testing.Testing.T):Void return;
function _touch(_t:stdgo.testing.Testing.T, _name:GoString):Void return;
function testReaddirStatFailures(_t:stdgo.testing.Testing.T):Void return;
/**
    // Readdir on a regular file should fail.
**/
function testReaddirOfFile(_t:stdgo.testing.Testing.T):Void return;
function testHardLink(_t:stdgo.testing.Testing.T):Void return;
/**
    // chtmpdir changes the working directory to a new temporary directory and
    // provides a cleanup function.
**/
function _chtmpdir(_t:stdgo.testing.Testing.T):() -> Void return null;
function testSymlink(_t:stdgo.testing.Testing.T):Void return;
function testLongSymlink(_t:stdgo.testing.Testing.T):Void return;
function testRename(_t:stdgo.testing.Testing.T):Void return;
function testRenameOverwriteDest(_t:stdgo.testing.Testing.T):Void return;
function testRenameFailed(_t:stdgo.testing.Testing.T):Void return;
function testRenameNotExisting(_t:stdgo.testing.Testing.T):Void return;
function testRenameToDirFailed(_t:stdgo.testing.Testing.T):Void return;
function testRenameCaseDifference(_pt:stdgo.testing.Testing.T):Void return;
function _exec(_t:stdgo.testing.Testing.T, _dir:GoString, _cmd:GoString, _args:Slice<GoString>, _expect:GoString):Void return;
function testStartProcess(_t:stdgo.testing.Testing.T):Void return;
function _checkMode(_t:stdgo.testing.Testing.T, _path:GoString, _mode:FileMode):Void return;
function testChmod(_t:stdgo.testing.Testing.T):Void return;
function _checkSize(_t:stdgo.testing.Testing.T, _f:File, _size:GoInt64):Void return;
function testFTruncate(_t:stdgo.testing.Testing.T):Void return;
function testTruncate(_t:stdgo.testing.Testing.T):Void return;
/**
    // Use TempDir (via newFile) to make sure we're on a local file system,
    // so that timings are not distorted by latency and caching.
    // On NFS, timings can be off due to caching of meta-data on
    // NFS servers (Issue 848).
**/
function testChtimes(_t:stdgo.testing.Testing.T):Void return;
/**
    // Use TempDir (via newDir) to make sure we're on a local file system,
    // so that timings are not distorted by latency and caching.
    // On NFS, timings can be off due to caching of meta-data on
    // NFS servers (Issue 848).
**/
function testChtimesDir(_t:stdgo.testing.Testing.T):Void return;
function _testChtimes(_t:stdgo.testing.Testing.T, _name:GoString):Void return;
function testFileChdir(_t:stdgo.testing.Testing.T):Void return;
function testChdirAndGetwd(_t:stdgo.testing.Testing.T):Void return;
/**
    // Test that Chdir+Getwd is program-wide.
**/
function testProgWideChdir(_t:stdgo.testing.Testing.T):Void return;
function testSeek(_t:stdgo.testing.Testing.T):Void return;
function testSeekError(_t:stdgo.testing.Testing.T):Void return;
function testOpenError(_t:stdgo.testing.Testing.T):Void return;
function testOpenNoName(_t:stdgo.testing.Testing.T):Void return;
function _runBinHostname(_t:stdgo.testing.Testing.T):GoString return (("" : GoString));
function _testWindowsHostname(_t:stdgo.testing.Testing.T, _hostname:GoString):Void return;
function testHostname(_t:stdgo.testing.Testing.T):Void return;
function testReadAt(_t:stdgo.testing.Testing.T):Void return;
/**
    // Verify that ReadAt doesn't affect seek offset.
    // In the Plan 9 kernel, there used to be a bug in the implementation of
    // the pread syscall, where the channel offset was erroneously updated after
    // calling pread on a file.
**/
function testReadAtOffset(_t:stdgo.testing.Testing.T):Void return;
/**
    // Verify that ReadAt doesn't allow negative offset.
**/
function testReadAtNegativeOffset(_t:stdgo.testing.Testing.T):Void return;
function testWriteAt(_t:stdgo.testing.Testing.T):Void return;
/**
    // Verify that WriteAt doesn't allow negative offset.
**/
function testWriteAtNegativeOffset(_t:stdgo.testing.Testing.T):Void return;
/**
    // Verify that WriteAt doesn't work in append mode.
**/
function testWriteAtInAppendMode(_t:stdgo.testing.Testing.T):Void return;
function _writeFile(_t:stdgo.testing.Testing.T, _fname:GoString, _flag:GoInt, _text:GoString):GoString return (("" : GoString));
function testAppend(_t:stdgo.testing.Testing.T):Void return;
function testStatDirWithTrailingSlash(_t:stdgo.testing.Testing.T):Void return;
function testNilProcessStateString(_t:stdgo.testing.Testing.T):Void return;
function testSameFile(_t:stdgo.testing.Testing.T):Void return;
function _testDevNullFileInfo(_t:stdgo.testing.Testing.T, _statname:GoString, _devNullName:GoString, _fi:FileInfo, _ignoreCase:Bool):Void return;
function _testDevNullFile(_t:stdgo.testing.Testing.T, _devNullName:GoString, _ignoreCase:Bool):Void return;
function testDevNullFile(_t:stdgo.testing.Testing.T):Void return;
function testLargeWriteToConsole(_t:stdgo.testing.Testing.T):Void return;
function testStatDirModeExec(_t:stdgo.testing.Testing.T):Void return;
function testStatStdin(_t:stdgo.testing.Testing.T):Void return;
function testStatRelativeSymlink(_t:stdgo.testing.Testing.T):Void return;
function testReadAtEOF(_t:stdgo.testing.Testing.T):Void return;
function testLongPath(_t:stdgo.testing.Testing.T):Void return;
function _testKillProcess(_t:stdgo.testing.Testing.T, _processKiller:(_p:Process) -> Void):Void return;
function testKillStartProcess(_t:stdgo.testing.Testing.T):Void return;
function testGetppid(_t:stdgo.testing.Testing.T):Void return;
function testKillFindProcess(_t:stdgo.testing.Testing.T):Void return;
/**
    // Test that all File methods give ErrInvalid if the receiver is nil.
**/
function testNilFileMethods(_t:stdgo.testing.Testing.T):Void return;
function _mkdirTree(_t:stdgo.testing.Testing.T, _root:GoString, _level:GoInt, _max:GoInt):Void return;
/**
    // Test that simultaneous RemoveAll do not report an error.
    // As long as it gets removed, we should be happy.
**/
function testRemoveAllRace(_t:stdgo.testing.Testing.T):Void return;
/**
    // Test that reading from a pipe doesn't use up a thread.
**/
function testPipeThreads(_t:stdgo.testing.Testing.T):Void return;
function _testDoubleCloseError(_t:stdgo.testing.Testing.T, _path:GoString):Void return;
function testDoubleCloseError(_t:stdgo.testing.Testing.T):Void return;
function testUserHomeDir(_t:stdgo.testing.Testing.T):Void return;
function testDirSeek(_t:stdgo.testing.Testing.T):Void return;
function testReaddirSmallSeek(_t:stdgo.testing.Testing.T):Void return;
/**
    // isDeadlineExceeded reports whether err is or wraps os.ErrDeadlineExceeded.
    // We also check that the error has a Timeout method that returns true.
**/
function _isDeadlineExceeded(_err:Error):Bool return false;
/**
    // Test that opening a file does not change its permissions.  Issue 38225.
**/
function testOpenFileKeepsPermissions(_t:stdgo.testing.Testing.T):Void return;
function testDirFS(_t:stdgo.testing.Testing.T):Void return;
function testDirFSPathsValid(_t:stdgo.testing.Testing.T):Void return;
function testReadFileProc(_t:stdgo.testing.Testing.T):Void return;
function testWriteStringAlloc(_t:stdgo.testing.Testing.T):Void return;
function _checkUidGid(_t:stdgo.testing.Testing.T, _path:GoString, _uid:GoInt, _gid:GoInt):Void return;
function testChown(_t:stdgo.testing.Testing.T):Void return;
function testFileChown(_t:stdgo.testing.Testing.T):Void return;
function testLchown(_t:stdgo.testing.Testing.T):Void return;
/**
    // Issue 16919: Readdir must return a non-empty slice or an error.
**/
function testReaddirRemoveRace(_t:stdgo.testing.Testing.T):Void return;
/**
    // Issue 23120: respect umask when doing Mkdir with the sticky bit
**/
function testMkdirStickyUmask(_t:stdgo.testing.Testing.T):Void return;
/**
    // See also issues: 22939, 24331
**/
function _newFileTest(_t:stdgo.testing.Testing.T, _blocking:Bool):Void return;
function testNewFileBlock(_t:stdgo.testing.Testing.T):Void return;
function testNewFileNonBlock(_t:stdgo.testing.Testing.T):Void return;
function testSplitPath(_t:stdgo.testing.Testing.T):Void return;
function testMkdirAll(_t:stdgo.testing.Testing.T):Void return;
function testMkdirAllWithSymlink(_t:stdgo.testing.Testing.T):Void return;
function testMkdirAllAtSlash(_t:stdgo.testing.Testing.T):Void return;
function _checkNamedSize(_t:stdgo.testing.Testing.T, _path:GoString, _size:GoInt64):Void return;
function testReadFile(_t:stdgo.testing.Testing.T):Void return;
function testWriteFile(_t:stdgo.testing.Testing.T):Void return;
function testReadOnlyWriteFile(_t:stdgo.testing.Testing.T):Void return;
function testReadDir(_t:stdgo.testing.Testing.T):Void return;
function testRemoveAll(_t:stdgo.testing.Testing.T):Void return;
/**
    // Test RemoveAll on a large directory.
**/
function testRemoveAllLarge(_t:stdgo.testing.Testing.T):Void return;
function testRemoveAllLongPath(_t:stdgo.testing.Testing.T):Void return;
function testRemoveAllDot(_t:stdgo.testing.Testing.T):Void return;
function testRemoveAllDotDot(_t:stdgo.testing.Testing.T):Void return;
/**
    // Issue #29178.
**/
function testRemoveReadOnlyDir(_t:stdgo.testing.Testing.T):Void return;
/**
    // Issue #29983.
**/
function testRemoveAllButReadOnlyAndPathError(_t:stdgo.testing.Testing.T):Void return;
function testRemoveUnreadableDir(_t:stdgo.testing.Testing.T):Void return;
/**
    // Issue 29921
**/
function testRemoveAllWithMoreErrorThanReqSize(_t:stdgo.testing.Testing.T):Void return;
/**
    // testStatAndLstat verifies that all os.Stat, os.Lstat os.File.Stat and os.Readdir work.
**/
function _testStatAndLstat(_t:stdgo.testing.Testing.T, _path:GoString, _isLink:Bool, _statCheck:(stdgo.testing.Testing.T, GoString, stdgo.io.fs.Fs.FileInfo) -> Void, _lstatCheck:(stdgo.testing.Testing.T, GoString, stdgo.io.fs.Fs.FileInfo) -> Void):Void return;
/**
    // testIsDir verifies that fi refers to directory.
**/
function _testIsDir(_t:stdgo.testing.Testing.T, _path:GoString, _fi:stdgo.io.fs.Fs.FileInfo):Void return;
/**
    // testIsSymlink verifies that fi refers to symlink.
**/
function _testIsSymlink(_t:stdgo.testing.Testing.T, _path:GoString, _fi:stdgo.io.fs.Fs.FileInfo):Void return;
/**
    // testIsFile verifies that fi refers to file.
**/
function _testIsFile(_t:stdgo.testing.Testing.T, _path:GoString, _fi:stdgo.io.fs.Fs.FileInfo):Void return;
function _testDirStats(_t:stdgo.testing.Testing.T, _path:GoString):Void return;
function _testFileStats(_t:stdgo.testing.Testing.T, _path:GoString):Void return;
function _testSymlinkStats(_t:stdgo.testing.Testing.T, _path:GoString, _isdir:Bool):Void return;
function _testSymlinkSameFile(_t:stdgo.testing.Testing.T, _path:GoString, _link:GoString):Void return;
function testDirAndSymlinkStats(_t:stdgo.testing.Testing.T):Void return;
function testFileAndSymlinkStats(_t:stdgo.testing.Testing.T):Void return;
/**
    // see issue 27225 for details
**/
function testSymlinkWithTrailingSlash(_t:stdgo.testing.Testing.T):Void return;
function testCreateTemp(_t:stdgo.testing.Testing.T):Void return;
function testCreateTempPattern(_t:stdgo.testing.Testing.T):Void return;
function testCreateTempBadPattern(_t:stdgo.testing.Testing.T):Void return;
function testMkdirTemp(_t:stdgo.testing.Testing.T):Void return;
/**
    // test that we return a nice error message if the dir argument to TempDir doesn't
    // exist (or that it's empty and TempDir doesn't exist)
**/
function testMkdirTempBadDir(_t:stdgo.testing.Testing.T):Void return;
function testMkdirTempBadPattern(_t:stdgo.testing.Testing.T):Void return;
@:keep class T_myErrorIs_static_extension {
    @:keep
    static public function is_( _e:T_myErrorIs, _target:Error):Bool return false;
    @:embedded
    public static function error( __self__:T_myErrorIs):GoString return __self__.error();
}
class T_myErrorIs_wrapper {
    @:keep
    public var is_ : Error -> Bool = null;
    @:embedded
    public var error : () -> GoString = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_myErrorIs;
}
