package stdgo.os_test;
import stdgo.os.Os;
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
var _expandTests : Slice<T__struct_1> = ((null : Slice<T__struct_1>));
var _isExistTests : Slice<stdgo.os_test.Os_test.T_isExistTest> = ((null : Slice<stdgo.os_test.Os_test.T_isExistTest>));
var _isPermissionTests : Slice<stdgo.os_test.Os_test.T_isPermissionTest> = ((null : Slice<stdgo.os_test.Os_test.T_isPermissionTest>));
var _dot : Slice<GoString> = ((null : Slice<GoString>));
var _sysdir : Ref<stdgo.os_test.Os_test.T_sysDir> = ((null : stdgo.os_test.Os_test.T_sysDir));
var _sfdir : GoString = (("" : GoString));
var _sfname : GoString = (("" : GoString));
var _openErrorTests : Slice<stdgo.os_test.Os_test.T_openErrorTest> = ((null : Slice<stdgo.os_test.Os_test.T_openErrorTest>));
var _testLargeWrite : Pointer<Bool> = ((null : Pointer<Bool>));
var _nilFileMethodTests : Slice<T__struct_2> = ((null : Slice<T__struct_2>));
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
@:local typedef T__struct_1 = {
    public var _in : GoString;
    public var _out : GoString;
};
@:local typedef T__struct_2 = {
    public var _name : GoString;
    public var _f : Ref<File> -> stdgo.Error;
};
@:follow typedef T_syscallDescriptor = GoInt;
/**
    // testGetenv gives us a controlled set of variables for testing Expand.
**/
function _testGetenv(_s:GoString):GoString throw "os_test._testGetenv is not yet implemented";
function testExpand(_t:stdgo.testing.Testing.T):Void throw "os_test.testExpand is not yet implemented";
function benchmarkExpand(_b:stdgo.testing.Testing.B):Void throw "os_test.benchmarkExpand is not yet implemented";
function testConsistentEnviron(_t:stdgo.testing.Testing.T):Void throw "os_test.testConsistentEnviron is not yet implemented";
function testUnsetenv(_t:stdgo.testing.Testing.T):Void throw "os_test.testUnsetenv is not yet implemented";
function testClearenv(_t:stdgo.testing.Testing.T):Void throw "os_test.testClearenv is not yet implemented";
function testLookupEnv(_t:stdgo.testing.Testing.T):Void throw "os_test.testLookupEnv is not yet implemented";
/**
    // On Windows, Environ was observed to report keys with a single leading "=".
    // Check that they are properly reported by LookupEnv and can be set by SetEnv.
    // See https://golang.org/issue/49886.
**/
function testEnvironConsistency(_t:stdgo.testing.Testing.T):Void throw "os_test.testEnvironConsistency is not yet implemented";
function testErrIsExist(_t:stdgo.testing.Testing.T):Void throw "os_test.testErrIsExist is not yet implemented";
function _testErrNotExist(_t:stdgo.testing.Testing.T, _name:GoString):GoString throw "os_test._testErrNotExist is not yet implemented";
function testErrIsNotExist(_t:stdgo.testing.Testing.T):Void throw "os_test.testErrIsNotExist is not yet implemented";
function _checkErrorPredicate(_predName:GoString, _pred:Error -> Bool, _err:Error, _target:Error):GoString throw "os_test._checkErrorPredicate is not yet implemented";
function testIsExist(_t:stdgo.testing.Testing.T):Void throw "os_test.testIsExist is not yet implemented";
function testIsPermission(_t:stdgo.testing.Testing.T):Void throw "os_test.testIsPermission is not yet implemented";
function testErrPathNUL(_t:stdgo.testing.Testing.T):Void throw "os_test.testErrPathNUL is not yet implemented";
function testPathErrorUnwrap(_t:stdgo.testing.Testing.T):Void throw "os_test.testPathErrorUnwrap is not yet implemented";
function testErrorIsMethods(_t:stdgo.testing.Testing.T):Void throw "os_test.testErrorIsMethods is not yet implemented";
function exampleOpenFile():Void throw "os_test.exampleOpenFile is not yet implemented";
function exampleOpenFile_append():Void throw "os_test.exampleOpenFile_append is not yet implemented";
function exampleChmod():Void throw "os_test.exampleChmod is not yet implemented";
function exampleChtimes():Void throw "os_test.exampleChtimes is not yet implemented";
function exampleFileMode():Void throw "os_test.exampleFileMode is not yet implemented";
function exampleErrNotExist():Void throw "os_test.exampleErrNotExist is not yet implemented";
function exampleExpand():Void throw "os_test.exampleExpand is not yet implemented";
function exampleExpandEnv():Void throw "os_test.exampleExpandEnv is not yet implemented";
function exampleLookupEnv():Void throw "os_test.exampleLookupEnv is not yet implemented";
function exampleGetenv():Void throw "os_test.exampleGetenv is not yet implemented";
function exampleUnsetenv():Void throw "os_test.exampleUnsetenv is not yet implemented";
function exampleReadDir():Void throw "os_test.exampleReadDir is not yet implemented";
function exampleMkdirTemp():Void throw "os_test.exampleMkdirTemp is not yet implemented";
function exampleMkdirTemp_suffix():Void throw "os_test.exampleMkdirTemp_suffix is not yet implemented";
function exampleCreateTemp():Void throw "os_test.exampleCreateTemp is not yet implemented";
function exampleCreateTemp_suffix():Void throw "os_test.exampleCreateTemp_suffix is not yet implemented";
function exampleReadFile():Void throw "os_test.exampleReadFile is not yet implemented";
function exampleWriteFile():Void throw "os_test.exampleWriteFile is not yet implemented";
function exampleMkdir():Void throw "os_test.exampleMkdir is not yet implemented";
function exampleMkdirAll():Void throw "os_test.exampleMkdirAll is not yet implemented";
function testExecutable(_t:stdgo.testing.Testing.T):Void throw "os_test.testExecutable is not yet implemented";
function _sameFile(_fn1:GoString, _fn2:GoString):Bool throw "os_test._sameFile is not yet implemented";
function testExecutableDeleted(_t:stdgo.testing.Testing.T):Void throw "os_test.testExecutableDeleted is not yet implemented";
function testMain(_m:stdgo.testing.Testing.M):Void throw "os_test.testMain is not yet implemented";
function _size(_name:GoString, _t:stdgo.testing.Testing.T):GoInt64 throw "os_test._size is not yet implemented";
function _equal(_name1:GoString, _name2:GoString):Bool throw "os_test._equal is not yet implemented";
/**
    // localTmp returns a local temporary directory not on NFS.
**/
function _localTmp():GoString throw "os_test._localTmp is not yet implemented";
function _newFile(_testName:GoString, _t:stdgo.testing.Testing.T):File throw "os_test._newFile is not yet implemented";
function _newDir(_testName:GoString, _t:stdgo.testing.Testing.T):GoString throw "os_test._newDir is not yet implemented";
function testStat(_t:stdgo.testing.Testing.T):Void throw "os_test.testStat is not yet implemented";
function testStatError(_t:stdgo.testing.Testing.T):Void throw "os_test.testStatError is not yet implemented";
function testStatSymlinkLoop(_t:stdgo.testing.Testing.T):Void throw "os_test.testStatSymlinkLoop is not yet implemented";
function testFstat(_t:stdgo.testing.Testing.T):Void throw "os_test.testFstat is not yet implemented";
function testLstat(_t:stdgo.testing.Testing.T):Void throw "os_test.testLstat is not yet implemented";
/**
    // Read with length 0 should not return EOF.
**/
function testRead0(_t:stdgo.testing.Testing.T):Void throw "os_test.testRead0 is not yet implemented";
/**
    // Reading a closed file should return ErrClosed error
**/
function testReadClosed(_t:stdgo.testing.Testing.T):Void throw "os_test.testReadClosed is not yet implemented";
function _testReaddirnames(_dir:GoString, _contents:Slice<GoString>, _t:stdgo.testing.Testing.T):Void throw "os_test._testReaddirnames is not yet implemented";
function _testReaddir(_dir:GoString, _contents:Slice<GoString>, _t:stdgo.testing.Testing.T):Void throw "os_test._testReaddir is not yet implemented";
function _testReadDir(_dir:GoString, _contents:Slice<GoString>, _t:stdgo.testing.Testing.T):Void throw "os_test._testReadDir is not yet implemented";
function testFileReaddirnames(_t:stdgo.testing.Testing.T):Void throw "os_test.testFileReaddirnames is not yet implemented";
function testFileReaddir(_t:stdgo.testing.Testing.T):Void throw "os_test.testFileReaddir is not yet implemented";
function testFileReadDir(_t:stdgo.testing.Testing.T):Void throw "os_test.testFileReadDir is not yet implemented";
function _benchmarkReaddirname(_path:GoString, _b:stdgo.testing.Testing.B):Void throw "os_test._benchmarkReaddirname is not yet implemented";
function _benchmarkReaddir(_path:GoString, _b:stdgo.testing.Testing.B):Void throw "os_test._benchmarkReaddir is not yet implemented";
function _benchmarkReadDir(_path:GoString, _b:stdgo.testing.Testing.B):Void throw "os_test._benchmarkReadDir is not yet implemented";
function benchmarkReaddirname(_b:stdgo.testing.Testing.B):Void throw "os_test.benchmarkReaddirname is not yet implemented";
function benchmarkReaddir(_b:stdgo.testing.Testing.B):Void throw "os_test.benchmarkReaddir is not yet implemented";
function benchmarkReadDir(_b:stdgo.testing.Testing.B):Void throw "os_test.benchmarkReadDir is not yet implemented";
function _benchmarkStat(_b:stdgo.testing.Testing.B, _path:GoString):Void throw "os_test._benchmarkStat is not yet implemented";
function _benchmarkLstat(_b:stdgo.testing.Testing.B, _path:GoString):Void throw "os_test._benchmarkLstat is not yet implemented";
function benchmarkStatDot(_b:stdgo.testing.Testing.B):Void throw "os_test.benchmarkStatDot is not yet implemented";
function benchmarkStatFile(_b:stdgo.testing.Testing.B):Void throw "os_test.benchmarkStatFile is not yet implemented";
function benchmarkStatDir(_b:stdgo.testing.Testing.B):Void throw "os_test.benchmarkStatDir is not yet implemented";
function benchmarkLstatDot(_b:stdgo.testing.Testing.B):Void throw "os_test.benchmarkLstatDot is not yet implemented";
function benchmarkLstatFile(_b:stdgo.testing.Testing.B):Void throw "os_test.benchmarkLstatFile is not yet implemented";
function benchmarkLstatDir(_b:stdgo.testing.Testing.B):Void throw "os_test.benchmarkLstatDir is not yet implemented";
/**
    // Read the directory one entry at a time.
**/
function _smallReaddirnames(_file:File, _length:GoInt, _t:stdgo.testing.Testing.T):Slice<GoString> throw "os_test._smallReaddirnames is not yet implemented";
/**
    // Check that reading a directory one entry at a time gives the same result
    // as reading it all at once.
**/
function testReaddirnamesOneAtATime(_t:stdgo.testing.Testing.T):Void throw "os_test.testReaddirnamesOneAtATime is not yet implemented";
function testReaddirNValues(_t:stdgo.testing.Testing.T):Void throw "os_test.testReaddirNValues is not yet implemented";
function _touch(_t:stdgo.testing.Testing.T, _name:GoString):Void throw "os_test._touch is not yet implemented";
function testReaddirStatFailures(_t:stdgo.testing.Testing.T):Void throw "os_test.testReaddirStatFailures is not yet implemented";
/**
    // Readdir on a regular file should fail.
**/
function testReaddirOfFile(_t:stdgo.testing.Testing.T):Void throw "os_test.testReaddirOfFile is not yet implemented";
function testHardLink(_t:stdgo.testing.Testing.T):Void throw "os_test.testHardLink is not yet implemented";
/**
    // chtmpdir changes the working directory to a new temporary directory and
    // provides a cleanup function.
**/
function _chtmpdir(_t:stdgo.testing.Testing.T):() -> Void throw "os_test._chtmpdir is not yet implemented";
function testSymlink(_t:stdgo.testing.Testing.T):Void throw "os_test.testSymlink is not yet implemented";
function testLongSymlink(_t:stdgo.testing.Testing.T):Void throw "os_test.testLongSymlink is not yet implemented";
function testRename(_t:stdgo.testing.Testing.T):Void throw "os_test.testRename is not yet implemented";
function testRenameOverwriteDest(_t:stdgo.testing.Testing.T):Void throw "os_test.testRenameOverwriteDest is not yet implemented";
function testRenameFailed(_t:stdgo.testing.Testing.T):Void throw "os_test.testRenameFailed is not yet implemented";
function testRenameNotExisting(_t:stdgo.testing.Testing.T):Void throw "os_test.testRenameNotExisting is not yet implemented";
function testRenameToDirFailed(_t:stdgo.testing.Testing.T):Void throw "os_test.testRenameToDirFailed is not yet implemented";
function testRenameCaseDifference(_pt:stdgo.testing.Testing.T):Void throw "os_test.testRenameCaseDifference is not yet implemented";
function _exec(_t:stdgo.testing.Testing.T, _dir:GoString, _cmd:GoString, _args:Slice<GoString>, _expect:GoString):Void throw "os_test._exec is not yet implemented";
function testStartProcess(_t:stdgo.testing.Testing.T):Void throw "os_test.testStartProcess is not yet implemented";
function _checkMode(_t:stdgo.testing.Testing.T, _path:GoString, _mode:FileMode):Void throw "os_test._checkMode is not yet implemented";
function testChmod(_t:stdgo.testing.Testing.T):Void throw "os_test.testChmod is not yet implemented";
function _checkSize(_t:stdgo.testing.Testing.T, _f:File, _size:GoInt64):Void throw "os_test._checkSize is not yet implemented";
function testFTruncate(_t:stdgo.testing.Testing.T):Void throw "os_test.testFTruncate is not yet implemented";
function testTruncate(_t:stdgo.testing.Testing.T):Void throw "os_test.testTruncate is not yet implemented";
/**
    // Use TempDir (via newFile) to make sure we're on a local file system,
    // so that timings are not distorted by latency and caching.
    // On NFS, timings can be off due to caching of meta-data on
    // NFS servers (Issue 848).
**/
function testChtimes(_t:stdgo.testing.Testing.T):Void throw "os_test.testChtimes is not yet implemented";
/**
    // Use TempDir (via newDir) to make sure we're on a local file system,
    // so that timings are not distorted by latency and caching.
    // On NFS, timings can be off due to caching of meta-data on
    // NFS servers (Issue 848).
**/
function testChtimesDir(_t:stdgo.testing.Testing.T):Void throw "os_test.testChtimesDir is not yet implemented";
function _testChtimes(_t:stdgo.testing.Testing.T, _name:GoString):Void throw "os_test._testChtimes is not yet implemented";
function testFileChdir(_t:stdgo.testing.Testing.T):Void throw "os_test.testFileChdir is not yet implemented";
function testChdirAndGetwd(_t:stdgo.testing.Testing.T):Void throw "os_test.testChdirAndGetwd is not yet implemented";
/**
    // Test that Chdir+Getwd is program-wide.
**/
function testProgWideChdir(_t:stdgo.testing.Testing.T):Void throw "os_test.testProgWideChdir is not yet implemented";
function testSeek(_t:stdgo.testing.Testing.T):Void throw "os_test.testSeek is not yet implemented";
function testSeekError(_t:stdgo.testing.Testing.T):Void throw "os_test.testSeekError is not yet implemented";
function testOpenError(_t:stdgo.testing.Testing.T):Void throw "os_test.testOpenError is not yet implemented";
function testOpenNoName(_t:stdgo.testing.Testing.T):Void throw "os_test.testOpenNoName is not yet implemented";
function _runBinHostname(_t:stdgo.testing.Testing.T):GoString throw "os_test._runBinHostname is not yet implemented";
function _testWindowsHostname(_t:stdgo.testing.Testing.T, _hostname:GoString):Void throw "os_test._testWindowsHostname is not yet implemented";
function testHostname(_t:stdgo.testing.Testing.T):Void throw "os_test.testHostname is not yet implemented";
function testReadAt(_t:stdgo.testing.Testing.T):Void throw "os_test.testReadAt is not yet implemented";
/**
    // Verify that ReadAt doesn't affect seek offset.
    // In the Plan 9 kernel, there used to be a bug in the implementation of
    // the pread syscall, where the channel offset was erroneously updated after
    // calling pread on a file.
**/
function testReadAtOffset(_t:stdgo.testing.Testing.T):Void throw "os_test.testReadAtOffset is not yet implemented";
/**
    // Verify that ReadAt doesn't allow negative offset.
**/
function testReadAtNegativeOffset(_t:stdgo.testing.Testing.T):Void throw "os_test.testReadAtNegativeOffset is not yet implemented";
function testWriteAt(_t:stdgo.testing.Testing.T):Void throw "os_test.testWriteAt is not yet implemented";
/**
    // Verify that WriteAt doesn't allow negative offset.
**/
function testWriteAtNegativeOffset(_t:stdgo.testing.Testing.T):Void throw "os_test.testWriteAtNegativeOffset is not yet implemented";
/**
    // Verify that WriteAt doesn't work in append mode.
**/
function testWriteAtInAppendMode(_t:stdgo.testing.Testing.T):Void throw "os_test.testWriteAtInAppendMode is not yet implemented";
function _writeFile(_t:stdgo.testing.Testing.T, _fname:GoString, _flag:GoInt, _text:GoString):GoString throw "os_test._writeFile is not yet implemented";
function testAppend(_t:stdgo.testing.Testing.T):Void throw "os_test.testAppend is not yet implemented";
function testStatDirWithTrailingSlash(_t:stdgo.testing.Testing.T):Void throw "os_test.testStatDirWithTrailingSlash is not yet implemented";
function testNilProcessStateString(_t:stdgo.testing.Testing.T):Void throw "os_test.testNilProcessStateString is not yet implemented";
function testSameFile(_t:stdgo.testing.Testing.T):Void throw "os_test.testSameFile is not yet implemented";
function _testDevNullFileInfo(_t:stdgo.testing.Testing.T, _statname:GoString, _devNullName:GoString, _fi:FileInfo, _ignoreCase:Bool):Void throw "os_test._testDevNullFileInfo is not yet implemented";
function _testDevNullFile(_t:stdgo.testing.Testing.T, _devNullName:GoString, _ignoreCase:Bool):Void throw "os_test._testDevNullFile is not yet implemented";
function testDevNullFile(_t:stdgo.testing.Testing.T):Void throw "os_test.testDevNullFile is not yet implemented";
function testLargeWriteToConsole(_t:stdgo.testing.Testing.T):Void throw "os_test.testLargeWriteToConsole is not yet implemented";
function testStatDirModeExec(_t:stdgo.testing.Testing.T):Void throw "os_test.testStatDirModeExec is not yet implemented";
function testStatStdin(_t:stdgo.testing.Testing.T):Void throw "os_test.testStatStdin is not yet implemented";
function testStatRelativeSymlink(_t:stdgo.testing.Testing.T):Void throw "os_test.testStatRelativeSymlink is not yet implemented";
function testReadAtEOF(_t:stdgo.testing.Testing.T):Void throw "os_test.testReadAtEOF is not yet implemented";
function testLongPath(_t:stdgo.testing.Testing.T):Void throw "os_test.testLongPath is not yet implemented";
function _testKillProcess(_t:stdgo.testing.Testing.T, _processKiller:(_p:Process) -> Void):Void throw "os_test._testKillProcess is not yet implemented";
function testKillStartProcess(_t:stdgo.testing.Testing.T):Void throw "os_test.testKillStartProcess is not yet implemented";
function testGetppid(_t:stdgo.testing.Testing.T):Void throw "os_test.testGetppid is not yet implemented";
function testKillFindProcess(_t:stdgo.testing.Testing.T):Void throw "os_test.testKillFindProcess is not yet implemented";
/**
    // Test that all File methods give ErrInvalid if the receiver is nil.
**/
function testNilFileMethods(_t:stdgo.testing.Testing.T):Void throw "os_test.testNilFileMethods is not yet implemented";
function _mkdirTree(_t:stdgo.testing.Testing.T, _root:GoString, _level:GoInt, _max:GoInt):Void throw "os_test._mkdirTree is not yet implemented";
/**
    // Test that simultaneous RemoveAll do not report an error.
    // As long as it gets removed, we should be happy.
**/
function testRemoveAllRace(_t:stdgo.testing.Testing.T):Void throw "os_test.testRemoveAllRace is not yet implemented";
/**
    // Test that reading from a pipe doesn't use up a thread.
**/
function testPipeThreads(_t:stdgo.testing.Testing.T):Void throw "os_test.testPipeThreads is not yet implemented";
function _testDoubleCloseError(_t:stdgo.testing.Testing.T, _path:GoString):Void throw "os_test._testDoubleCloseError is not yet implemented";
function testDoubleCloseError(_t:stdgo.testing.Testing.T):Void throw "os_test.testDoubleCloseError is not yet implemented";
function testUserHomeDir(_t:stdgo.testing.Testing.T):Void throw "os_test.testUserHomeDir is not yet implemented";
function testDirSeek(_t:stdgo.testing.Testing.T):Void throw "os_test.testDirSeek is not yet implemented";
function testReaddirSmallSeek(_t:stdgo.testing.Testing.T):Void throw "os_test.testReaddirSmallSeek is not yet implemented";
/**
    // isDeadlineExceeded reports whether err is or wraps os.ErrDeadlineExceeded.
    // We also check that the error has a Timeout method that returns true.
**/
function _isDeadlineExceeded(_err:Error):Bool throw "os_test._isDeadlineExceeded is not yet implemented";
/**
    // Test that opening a file does not change its permissions.  Issue 38225.
**/
function testOpenFileKeepsPermissions(_t:stdgo.testing.Testing.T):Void throw "os_test.testOpenFileKeepsPermissions is not yet implemented";
function testDirFS(_t:stdgo.testing.Testing.T):Void throw "os_test.testDirFS is not yet implemented";
function testDirFSPathsValid(_t:stdgo.testing.Testing.T):Void throw "os_test.testDirFSPathsValid is not yet implemented";
function testReadFileProc(_t:stdgo.testing.Testing.T):Void throw "os_test.testReadFileProc is not yet implemented";
function testWriteStringAlloc(_t:stdgo.testing.Testing.T):Void throw "os_test.testWriteStringAlloc is not yet implemented";
function _checkUidGid(_t:stdgo.testing.Testing.T, _path:GoString, _uid:GoInt, _gid:GoInt):Void throw "os_test._checkUidGid is not yet implemented";
function testChown(_t:stdgo.testing.Testing.T):Void throw "os_test.testChown is not yet implemented";
function testFileChown(_t:stdgo.testing.Testing.T):Void throw "os_test.testFileChown is not yet implemented";
function testLchown(_t:stdgo.testing.Testing.T):Void throw "os_test.testLchown is not yet implemented";
/**
    // Issue 16919: Readdir must return a non-empty slice or an error.
**/
function testReaddirRemoveRace(_t:stdgo.testing.Testing.T):Void throw "os_test.testReaddirRemoveRace is not yet implemented";
/**
    // Issue 23120: respect umask when doing Mkdir with the sticky bit
**/
function testMkdirStickyUmask(_t:stdgo.testing.Testing.T):Void throw "os_test.testMkdirStickyUmask is not yet implemented";
/**
    // See also issues: 22939, 24331
**/
function _newFileTest(_t:stdgo.testing.Testing.T, _blocking:Bool):Void throw "os_test._newFileTest is not yet implemented";
function testNewFileBlock(_t:stdgo.testing.Testing.T):Void throw "os_test.testNewFileBlock is not yet implemented";
function testNewFileNonBlock(_t:stdgo.testing.Testing.T):Void throw "os_test.testNewFileNonBlock is not yet implemented";
function testSplitPath(_t:stdgo.testing.Testing.T):Void throw "os_test.testSplitPath is not yet implemented";
function testMkdirAll(_t:stdgo.testing.Testing.T):Void throw "os_test.testMkdirAll is not yet implemented";
function testMkdirAllWithSymlink(_t:stdgo.testing.Testing.T):Void throw "os_test.testMkdirAllWithSymlink is not yet implemented";
function testMkdirAllAtSlash(_t:stdgo.testing.Testing.T):Void throw "os_test.testMkdirAllAtSlash is not yet implemented";
function _checkNamedSize(_t:stdgo.testing.Testing.T, _path:GoString, _size:GoInt64):Void throw "os_test._checkNamedSize is not yet implemented";
function testReadFile(_t:stdgo.testing.Testing.T):Void throw "os_test.testReadFile is not yet implemented";
function testWriteFile(_t:stdgo.testing.Testing.T):Void throw "os_test.testWriteFile is not yet implemented";
function testReadOnlyWriteFile(_t:stdgo.testing.Testing.T):Void throw "os_test.testReadOnlyWriteFile is not yet implemented";
function testReadDir(_t:stdgo.testing.Testing.T):Void throw "os_test.testReadDir is not yet implemented";
function testRemoveAll(_t:stdgo.testing.Testing.T):Void throw "os_test.testRemoveAll is not yet implemented";
/**
    // Test RemoveAll on a large directory.
**/
function testRemoveAllLarge(_t:stdgo.testing.Testing.T):Void throw "os_test.testRemoveAllLarge is not yet implemented";
function testRemoveAllLongPath(_t:stdgo.testing.Testing.T):Void throw "os_test.testRemoveAllLongPath is not yet implemented";
function testRemoveAllDot(_t:stdgo.testing.Testing.T):Void throw "os_test.testRemoveAllDot is not yet implemented";
function testRemoveAllDotDot(_t:stdgo.testing.Testing.T):Void throw "os_test.testRemoveAllDotDot is not yet implemented";
/**
    // Issue #29178.
**/
function testRemoveReadOnlyDir(_t:stdgo.testing.Testing.T):Void throw "os_test.testRemoveReadOnlyDir is not yet implemented";
/**
    // Issue #29983.
**/
function testRemoveAllButReadOnlyAndPathError(_t:stdgo.testing.Testing.T):Void throw "os_test.testRemoveAllButReadOnlyAndPathError is not yet implemented";
function testRemoveUnreadableDir(_t:stdgo.testing.Testing.T):Void throw "os_test.testRemoveUnreadableDir is not yet implemented";
/**
    // Issue 29921
**/
function testRemoveAllWithMoreErrorThanReqSize(_t:stdgo.testing.Testing.T):Void throw "os_test.testRemoveAllWithMoreErrorThanReqSize is not yet implemented";
function testOpenFileLimit(_t:stdgo.testing.Testing.T):Void throw "os_test.testOpenFileLimit is not yet implemented";
/**
    // testStatAndLstat verifies that all os.Stat, os.Lstat os.File.Stat and os.Readdir work.
**/
function _testStatAndLstat(_t:stdgo.testing.Testing.T, _path:GoString, _isLink:Bool, _statCheck:(stdgo.testing.Testing.T, GoString, stdgo.io.fs.Fs.FileInfo) -> Void, _lstatCheck:(stdgo.testing.Testing.T, GoString, stdgo.io.fs.Fs.FileInfo) -> Void):Void throw "os_test._testStatAndLstat is not yet implemented";
/**
    // testIsDir verifies that fi refers to directory.
**/
function _testIsDir(_t:stdgo.testing.Testing.T, _path:GoString, _fi:stdgo.io.fs.Fs.FileInfo):Void throw "os_test._testIsDir is not yet implemented";
/**
    // testIsSymlink verifies that fi refers to symlink.
**/
function _testIsSymlink(_t:stdgo.testing.Testing.T, _path:GoString, _fi:stdgo.io.fs.Fs.FileInfo):Void throw "os_test._testIsSymlink is not yet implemented";
/**
    // testIsFile verifies that fi refers to file.
**/
function _testIsFile(_t:stdgo.testing.Testing.T, _path:GoString, _fi:stdgo.io.fs.Fs.FileInfo):Void throw "os_test._testIsFile is not yet implemented";
function _testDirStats(_t:stdgo.testing.Testing.T, _path:GoString):Void throw "os_test._testDirStats is not yet implemented";
function _testFileStats(_t:stdgo.testing.Testing.T, _path:GoString):Void throw "os_test._testFileStats is not yet implemented";
function _testSymlinkStats(_t:stdgo.testing.Testing.T, _path:GoString, _isdir:Bool):Void throw "os_test._testSymlinkStats is not yet implemented";
function _testSymlinkSameFile(_t:stdgo.testing.Testing.T, _path:GoString, _link:GoString):Void throw "os_test._testSymlinkSameFile is not yet implemented";
function testDirAndSymlinkStats(_t:stdgo.testing.Testing.T):Void throw "os_test.testDirAndSymlinkStats is not yet implemented";
function testFileAndSymlinkStats(_t:stdgo.testing.Testing.T):Void throw "os_test.testFileAndSymlinkStats is not yet implemented";
/**
    // see issue 27225 for details
**/
function testSymlinkWithTrailingSlash(_t:stdgo.testing.Testing.T):Void throw "os_test.testSymlinkWithTrailingSlash is not yet implemented";
function testCreateTemp(_t:stdgo.testing.Testing.T):Void throw "os_test.testCreateTemp is not yet implemented";
function testCreateTempPattern(_t:stdgo.testing.Testing.T):Void throw "os_test.testCreateTempPattern is not yet implemented";
function testCreateTempBadPattern(_t:stdgo.testing.Testing.T):Void throw "os_test.testCreateTempBadPattern is not yet implemented";
function testMkdirTemp(_t:stdgo.testing.Testing.T):Void throw "os_test.testMkdirTemp is not yet implemented";
/**
    // test that we return a nice error message if the dir argument to TempDir doesn't
    // exist (or that it's empty and TempDir doesn't exist)
**/
function testMkdirTempBadDir(_t:stdgo.testing.Testing.T):Void throw "os_test.testMkdirTempBadDir is not yet implemented";
function testMkdirTempBadPattern(_t:stdgo.testing.Testing.T):Void throw "os_test.testMkdirTempBadPattern is not yet implemented";
@:keep class T_myErrorIs_static_extension {
    @:keep
    static public function is_( _e:T_myErrorIs, _target:Error):Bool throw "os_test.is_ is not yet implemented";
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
