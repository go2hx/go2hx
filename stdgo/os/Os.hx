package stdgo.os;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var _dirBufPool : Dynamic;
@:invalid var errInvalid : Dynamic;
@:invalid var errPermission : Dynamic;
@:invalid var errExist : Dynamic;
@:invalid var errNotExist : Dynamic;
@:invalid var errClosed : Dynamic;
@:invalid var errNoDeadline : Dynamic;
@:invalid var errDeadlineExceeded : Dynamic;
@:invalid var errProcessDone : Dynamic;
@:invalid var interrupt : Dynamic;
@:invalid var kill : Dynamic;
@:invalid var _errWriteAtInAppendMode : Dynamic;
@:invalid var _checkWrapErr : Dynamic;
@:invalid var stdin : Dynamic;
@:invalid var stdout : Dynamic;
@:invalid var stderr : Dynamic;
@:invalid var _errPatternHasSeparator : Dynamic;
@:invalid var _lstat : Dynamic;
@:invalid var atime : Dynamic;
@:invalid var lstatP : Dynamic;
@:invalid var errWriteAtInAppendMode : Dynamic;
@:invalid var testingForceReadDirLstat : Dynamic;
@:invalid var errPatternHasSeparator : Dynamic;
@:invalid var splitPath : Dynamic;
@:invalid var _readdirName : Dynamic;
@:invalid var _readdirDirEntry : Dynamic;
@:invalid var _readdirFileInfo : Dynamic;
@:invalid var _testingForceReadDirLstat : Dynamic;
@:invalid var _blockSize : Dynamic;
@:invalid var _isBigEndian : Dynamic;
@:invalid var o_RDONLY : Dynamic;
@:invalid var o_WRONLY : Dynamic;
@:invalid var o_RDWR : Dynamic;
@:invalid var o_APPEND : Dynamic;
@:invalid var o_CREATE : Dynamic;
@:invalid var o_EXCL : Dynamic;
@:invalid var o_SYNC : Dynamic;
@:invalid var o_TRUNC : Dynamic;
@:invalid var seek_SET : Dynamic;
@:invalid var seek_CUR : Dynamic;
@:invalid var seek_END : Dynamic;
@:invalid var __UTIME_OMIT : Dynamic;
@:invalid var _kindNewFile : Dynamic;
@:invalid var _kindOpenFile : Dynamic;
@:invalid var _kindPipe : Dynamic;
@:invalid var _kindNonBlock : Dynamic;
@:invalid var _kindNoPoll : Dynamic;
@:invalid var devNull : Dynamic;
@:invalid var _getwdCache : Dynamic;
@:invalid var pathSeparator : Dynamic;
@:invalid var pathListSeparator : Dynamic;
@:invalid var args : Dynamic;
@:invalid var _supportsCreateWithStickyBit : Dynamic;
@:invalid var _hex : Dynamic;
@:invalid var _supportsCloseOnExec : Dynamic;
@:invalid var modeDir : Dynamic;
@:invalid var modeAppend : Dynamic;
@:invalid var modeExclusive : Dynamic;
@:invalid var modeTemporary : Dynamic;
@:invalid var modeSymlink : Dynamic;
@:invalid var modeDevice : Dynamic;
@:invalid var modeNamedPipe : Dynamic;
@:invalid var modeSocket : Dynamic;
@:invalid var modeSetuid : Dynamic;
@:invalid var modeSetgid : Dynamic;
@:invalid var modeCharDevice : Dynamic;
@:invalid var modeSticky : Dynamic;
@:invalid var modeIrregular : Dynamic;
@:invalid var modeType : Dynamic;
@:invalid var modePerm : Dynamic;
typedef T_timeout = stdgo._internal.os.Os.T_timeout;
typedef Signal = stdgo._internal.os.Os.Signal;
@:invalid typedef T_dirInfo = Dynamic;
@:invalid typedef SyscallError = Dynamic;
@:invalid typedef Process = Dynamic;
@:invalid typedef ProcAttr = Dynamic;
@:invalid typedef ProcessState = Dynamic;
@:invalid typedef LinkError = Dynamic;
@:invalid typedef T_fileWithoutReadFrom = Dynamic;
@:invalid typedef T_file = Dynamic;
@:invalid typedef T_unixDirent = Dynamic;
@:invalid typedef T_rawConn = Dynamic;
@:invalid typedef File = Dynamic;
@:invalid typedef T_fileStat = Dynamic;
@:invalid typedef T__struct_0_asInterface = Dynamic;
@:invalid typedef T__struct_0_static_extension = Dynamic;
typedef T__struct_0 = stdgo._internal.os.Os.T__struct_0;
typedef T_readdirMode = stdgo._internal.os.Os.T_readdirMode;
typedef DirEntry = stdgo._internal.os.Os.DirEntry;
typedef PathError = stdgo._internal.os.Os.PathError;
typedef T_syscallErrorType = stdgo._internal.os.Os.T_syscallErrorType;
typedef T_dirFS = stdgo._internal.os.Os.T_dirFS;
typedef T_newFileKind = stdgo._internal.os.Os.T_newFileKind;
typedef FileInfo = stdgo._internal.os.Os.FileInfo;
typedef FileMode = stdgo._internal.os.Os.FileMode;
function readDir(_name:stdgo.GoString):Void {}
function _readInt(_b:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoUIntptr, _size:stdgo.GoUIntptr):Void {}
function _readIntBE(_b:stdgo.Slice<stdgo.GoByte>, _size:stdgo.GoUIntptr):Void {}
function _readIntLE(_b:stdgo.Slice<stdgo.GoByte>, _size:stdgo.GoUIntptr):Void {}
function _direntIno(_buf:stdgo.Slice<stdgo.GoByte>):Void {}
function _direntReclen(_buf:stdgo.Slice<stdgo.GoByte>):Void {}
function _direntNamlen(_buf:stdgo.Slice<stdgo.GoByte>):Void {}
function _direntType(_buf:stdgo.Slice<stdgo.GoByte>):Void {}
function expand(_s:stdgo.GoString, _mapping:stdgo.GoString -> stdgo.GoString):Void {}
function expandEnv(_s:stdgo.GoString):Void {}
function _isShellSpecialVar(_c:stdgo.GoUInt8):Void {}
function _isAlphaNum(_c:stdgo.GoUInt8):Void {}
function _getShellName(_s:stdgo.GoString):Void {}
function getenv(_key:stdgo.GoString):Void {}
function lookupEnv(_key:stdgo.GoString):Void {}
function setenv(_key:stdgo.GoString, _value:stdgo.GoString):Void {}
function unsetenv(_key:stdgo.GoString):Void {}
function clearenv():Void {}
function environ():Void {}
function _errNoDeadline():Void {}
function _errDeadlineExceeded():Void {}
function newSyscallError(_syscall:stdgo.GoString, _err:stdgo.Error):Void {}
function isExist(_err:stdgo.Error):Void {}
function isNotExist(_err:stdgo.Error):Void {}
function isPermission(_err:stdgo.Error):Void {}
function isTimeout(_err:stdgo.Error):Void {}
function _underlyingErrorIs(_err:stdgo.Error, _target:stdgo.Error):Void {}
function _underlyingError(_err:stdgo.Error):Void {}
function _wrapSyscallError(_name:stdgo.GoString, _err:stdgo.Error):Void {}
function _newProcess(_pid:stdgo.GoInt, _handle:stdgo.GoUIntptr):Void {}
function getpid():Void {}
function getppid():Void {}
function findProcess(_pid:stdgo.GoInt):Void {}
function startProcess(_name:stdgo.GoString, _argv:stdgo.Slice<stdgo.GoString>, _attr:stdgo.Ref<ProcAttr>):Void {}
function _startProcess(_name:stdgo.GoString, _argv:stdgo.Slice<stdgo.GoString>, _attr:stdgo.Ref<ProcAttr>):Void {}
function _findProcess(_pid:stdgo.GoInt):Void {}
function executable():Void {}
function _executable():Void {}
function _genericReadFrom(_f:stdgo.Ref<File>, _r:stdgo._internal.io.Io.Reader):Void {}
function mkdir(_name:stdgo.GoString, _perm:FileMode):Void {}
function _setStickyBit(_name:stdgo.GoString):Void {}
function chdir(_dir:stdgo.GoString):Void {}
function open(_name:stdgo.GoString):Void {}
function create(_name:stdgo.GoString):Void {}
function openFile(_name:stdgo.GoString, _flag:stdgo.GoInt, _perm:FileMode):Void {}
function rename(_oldpath:stdgo.GoString, _newpath:stdgo.GoString):Void {}
function _fixCount(_n:stdgo.GoInt, _err:stdgo.Error):Void {}
function tempDir():Void {}
function userCacheDir():Void {}
function userConfigDir():Void {}
function userHomeDir():Void {}
function chmod(_name:stdgo.GoString, _mode:FileMode):Void {}
function dirFS(_dir:stdgo.GoString):Void {}
function _containsAny(_s:stdgo.GoString, _chars:stdgo.GoString):Void {}
function readFile(_name:stdgo.GoString):Void {}
function writeFile(_name:stdgo.GoString, _data:stdgo.Slice<stdgo.GoByte>, _perm:FileMode):Void {}
function _open(_path:stdgo.GoString, _flag:stdgo.GoInt, _perm:stdgo.GoUInt32):Void {}
function _syscallMode(_i:FileMode):Void {}
function _chmod(_name:stdgo.GoString, _mode:FileMode):Void {}
function chown(_name:stdgo.GoString, _uid:stdgo.GoInt, _gid:stdgo.GoInt):Void {}
function lchown(_name:stdgo.GoString, _uid:stdgo.GoInt, _gid:stdgo.GoInt):Void {}
function chtimes(_name:stdgo.GoString, _atime:stdgo._internal.time.Time.Time, _mtime:stdgo._internal.time.Time.Time):Void {}
function _ignoringEINTR(_fn:() -> stdgo.Error):Void {}
function _fixLongPath(_path:stdgo.GoString):Void {}
function _rename(_oldname:stdgo.GoString, _newname:stdgo.GoString):Void {}
function newFile(_fd:stdgo.GoUIntptr, _name:stdgo.GoString):Void {}
function _net_newUnixFile(_fd:stdgo.GoInt, _name:stdgo.GoString):Void {}
function _newFile(_fd:stdgo.GoInt, _name:stdgo.GoString, _kind:T_newFileKind):Void {}
function _sigpipe():Void {}
function _epipecheck(_file:stdgo.Ref<File>, _e:stdgo.Error):Void {}
function _openFileNolog(_name:stdgo.GoString, _flag:stdgo.GoInt, _perm:FileMode):Void {}
function truncate(_name:stdgo.GoString, _size:stdgo.GoInt64):Void {}
function remove(_name:stdgo.GoString):Void {}
function _tempDir():Void {}
function link(_oldname:stdgo.GoString, _newname:stdgo.GoString):Void {}
function symlink(_oldname:stdgo.GoString, _newname:stdgo.GoString):Void {}
function readlink(_name:stdgo.GoString):Void {}
function _newUnixDirent(_parent:stdgo.GoString, _name:stdgo.GoString, _typ:FileMode):Void {}
function getwd():Void {}
function mkdirAll(_path:stdgo.GoString, _perm:FileMode):Void {}
function removeAll(_path:stdgo.GoString):Void {}
function _endsWithDot(_path:stdgo.GoString):Void {}
function isPathSeparator(_c:stdgo.GoUInt8):Void {}
function _basename(_name:stdgo.GoString):Void {}
function _splitPath(_path:stdgo.GoString):Void {}
function _fixRootDirectory(_p:stdgo.GoString):Void {}
function pipe():Void {}
function _runtime_args():Void {}
function getuid():Void {}
function geteuid():Void {}
function getgid():Void {}
function getegid():Void {}
function getgroups():Void {}
function exit(_code:stdgo.GoInt):Void {}
function _runtime_beforeExit(_exitCode:stdgo.GoInt):Void {}
function _newRawConn(_file:stdgo.Ref<File>):Void {}
function _removeAll(_path:stdgo.GoString):Void {}
function stat(_name:stdgo.GoString):Void {}
function lstat(_name:stdgo.GoString):Void {}
function _fillFileStatFromSys(_fs:stdgo.Ref<T_fileStat>, _name:stdgo.GoString):Void {}
function _atime(_fi:FileInfo):Void {}
function _statNolog(_name:stdgo.GoString):Void {}
function _lstatNolog(_name:stdgo.GoString):Void {}
function _itox(_val:stdgo.GoInt):Void {}
function _uitox(_val:stdgo.GoUInt):Void {}
function hostname():Void {}
function _hostname():Void {}
function _fastrand():Void {}
function _nextRandom():Void {}
function createTemp(_dir:stdgo.GoString, _pattern:stdgo.GoString):Void {}
function _prefixAndSuffix(_pattern:stdgo.GoString):Void {}
function mkdirTemp(_dir:stdgo.GoString, _pattern:stdgo.GoString):Void {}
function _joinPath(_dir:stdgo.GoString, _name:stdgo.GoString):Void {}
function _lastIndex(_s:stdgo.GoString, _sep:stdgo.GoByte):Void {}
function getpagesize():Void {}
function sameFile(_fi1:FileInfo, _fi2:FileInfo):Void {}
function _sameFile(_fs1:stdgo.Ref<T_fileStat>, _fs2:stdgo.Ref<T_fileStat>):Void {}
@:invalid var _ : Dynamic;
@:invalid typedef T_dirInfo_asInterface = Dynamic;
@:invalid typedef T_dirInfo_static_extension = Dynamic;
@:invalid typedef SyscallError_asInterface = Dynamic;
@:invalid typedef SyscallError_static_extension = Dynamic;
@:invalid typedef Process_asInterface = Dynamic;
@:invalid typedef Process_static_extension = Dynamic;
@:invalid typedef ProcessState_asInterface = Dynamic;
@:invalid typedef ProcessState_static_extension = Dynamic;
@:invalid typedef LinkError_asInterface = Dynamic;
@:invalid typedef LinkError_static_extension = Dynamic;
@:invalid typedef T_fileWithoutReadFrom_asInterface = Dynamic;
@:invalid typedef T_fileWithoutReadFrom_static_extension = Dynamic;
@:invalid typedef T_file_asInterface = Dynamic;
@:invalid typedef T_file_static_extension = Dynamic;
@:invalid typedef T_unixDirent_asInterface = Dynamic;
@:invalid typedef T_unixDirent_static_extension = Dynamic;
@:invalid typedef T_rawConn_asInterface = Dynamic;
@:invalid typedef T_rawConn_static_extension = Dynamic;
@:invalid typedef File_asInterface = Dynamic;
@:invalid typedef File_static_extension = Dynamic;
@:invalid typedef T_fileStat_asInterface = Dynamic;
@:invalid typedef T_fileStat_static_extension = Dynamic;
@:invalid typedef T_dirFS_asInterface = Dynamic;
@:invalid typedef T_dirFS_static_extension = Dynamic;
