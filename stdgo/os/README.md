# Module: `stdgo.os`

[(view library index)](../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _atime(_fi:stdgo.os.FileInfo):Void`](<#function-_atime>)

- [`function _basename(_name:stdgo.GoString):Void`](<#function-_basename>)

- [`function _chmod(_name:stdgo.GoString, _mode:stdgo.os.FileMode):Void`](<#function-_chmod>)

- [`function _containsAny(_s:stdgo.GoString, _chars:stdgo.GoString):Void`](<#function-_containsany>)

- [`function _direntIno(_buf:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_direntino>)

- [`function _direntNamlen(_buf:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_direntnamlen>)

- [`function _direntReclen(_buf:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_direntreclen>)

- [`function _direntType(_buf:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_direnttype>)

- [`function _endsWithDot(_path:stdgo.GoString):Void`](<#function-_endswithdot>)

- [`function _epipecheck(_file:stdgo.Ref<stdgo.os.File>, _e:stdgo.Error):Void`](<#function-_epipecheck>)

- [`function _errDeadlineExceeded():Void`](<#function-_errdeadlineexceeded>)

- [`function _errNoDeadline():Void`](<#function-_errnodeadline>)

- [`function _executable():Void`](<#function-_executable>)

- [`function _fastrand():Void`](<#function-_fastrand>)

- [`function _fillFileStatFromSys(_fs:stdgo.Ref<stdgo.os.T_fileStat>, _name:stdgo.GoString):Void`](<#function-_fillfilestatfromsys>)

- [`function _findProcess(_pid:stdgo.GoInt):Void`](<#function-_findprocess>)

- [`function _fixCount(_n:stdgo.GoInt, _err:stdgo.Error):Void`](<#function-_fixcount>)

- [`function _fixLongPath(_path:stdgo.GoString):Void`](<#function-_fixlongpath>)

- [`function _fixRootDirectory(_p:stdgo.GoString):Void`](<#function-_fixrootdirectory>)

- [`function _genericReadFrom(_f:stdgo.Ref<stdgo.os.File>, _r:stdgo._internal.io.Reader):Void`](<#function-_genericreadfrom>)

- [`function _getShellName(_s:stdgo.GoString):Void`](<#function-_getshellname>)

- [`function _hostname():Void`](<#function-_hostname>)

- [`function _ignoringEINTR(_fn:():stdgo.Error):Void`](<#function-_ignoringeintr>)

- [`function _isAlphaNum(_c:stdgo.GoUInt8):Void`](<#function-_isalphanum>)

- [`function _isShellSpecialVar(_c:stdgo.GoUInt8):Void`](<#function-_isshellspecialvar>)

- [`function _itox(_val:stdgo.GoInt):Void`](<#function-_itox>)

- [`function _joinPath(_dir:stdgo.GoString, _name:stdgo.GoString):Void`](<#function-_joinpath>)

- [`function _lastIndex(_s:stdgo.GoString, _sep:stdgo.GoByte):Void`](<#function-_lastindex>)

- [`function _lstatNolog(_name:stdgo.GoString):Void`](<#function-_lstatnolog>)

- [`function _net_newUnixFile(_fd:stdgo.GoInt, _name:stdgo.GoString):Void`](<#function-_net_newunixfile>)

- [`function _newFile(_fd:stdgo.GoInt, _name:stdgo.GoString, _kind:stdgo.os.T_newFileKind):Void`](<#function-_newfile>)

- [`function _newProcess(_pid:stdgo.GoInt, _handle:stdgo.GoUIntptr):Void`](<#function-_newprocess>)

- [`function _newRawConn(_file:stdgo.Ref<stdgo.os.File>):Void`](<#function-_newrawconn>)

- [`function _newUnixDirent(_parent:stdgo.GoString, _name:stdgo.GoString, _typ:stdgo.os.FileMode):Void`](<#function-_newunixdirent>)

- [`function _nextRandom():Void`](<#function-_nextrandom>)

- [`function _open(_path:stdgo.GoString, _flag:stdgo.GoInt, _perm:stdgo.GoUInt32):Void`](<#function-_open>)

- [`function _openFileNolog(_name:stdgo.GoString, _flag:stdgo.GoInt, _perm:stdgo.os.FileMode):Void`](<#function-_openfilenolog>)

- [`function _prefixAndSuffix(_pattern:stdgo.GoString):Void`](<#function-_prefixandsuffix>)

- [`function _readInt(_b:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoUIntptr, _size:stdgo.GoUIntptr):Void`](<#function-_readint>)

- [`function _readIntBE(_b:stdgo.Slice<stdgo.GoByte>, _size:stdgo.GoUIntptr):Void`](<#function-_readintbe>)

- [`function _readIntLE(_b:stdgo.Slice<stdgo.GoByte>, _size:stdgo.GoUIntptr):Void`](<#function-_readintle>)

- [`function _removeAll(_path:stdgo.GoString):Void`](<#function-_removeall>)

- [`function _rename(_oldname:stdgo.GoString, _newname:stdgo.GoString):Void`](<#function-_rename>)

- [`function _runtime_args():Void`](<#function-_runtime_args>)

- [`function _runtime_beforeExit(_exitCode:stdgo.GoInt):Void`](<#function-_runtime_beforeexit>)

- [`function _sameFile(_fs1:stdgo.Ref<stdgo.os.T_fileStat>, _fs2:stdgo.Ref<stdgo.os.T_fileStat>):Void`](<#function-_samefile>)

- [`function _setStickyBit(_name:stdgo.GoString):Void`](<#function-_setstickybit>)

- [`function _sigpipe():Void`](<#function-_sigpipe>)

- [`function _splitPath(_path:stdgo.GoString):Void`](<#function-_splitpath>)

- [`function _startProcess(_name:stdgo.GoString, _argv:stdgo.Slice<stdgo.GoString>, _attr:stdgo.Ref<stdgo.os.ProcAttr>):Void`](<#function-_startprocess>)

- [`function _statNolog(_name:stdgo.GoString):Void`](<#function-_statnolog>)

- [`function _syscallMode(_i:stdgo.os.FileMode):Void`](<#function-_syscallmode>)

- [`function _tempDir():Void`](<#function-_tempdir>)

- [`function _uitox(_val:stdgo.GoUInt):Void`](<#function-_uitox>)

- [`function _underlyingError(_err:stdgo.Error):Void`](<#function-_underlyingerror>)

- [`function _underlyingErrorIs(_err:stdgo.Error, _target:stdgo.Error):Void`](<#function-_underlyingerroris>)

- [`function _wrapSyscallError(_name:stdgo.GoString, _err:stdgo.Error):Void`](<#function-_wrapsyscallerror>)

- [`function chdir(_dir:stdgo.GoString):Void`](<#function-chdir>)

- [`function chmod(_name:stdgo.GoString, _mode:stdgo.os.FileMode):Void`](<#function-chmod>)

- [`function chown(_name:stdgo.GoString, _uid:stdgo.GoInt, _gid:stdgo.GoInt):Void`](<#function-chown>)

- [`function chtimes(_name:stdgo.GoString, _atime:stdgo._internal.time.Time, _mtime:stdgo._internal.time.Time):Void`](<#function-chtimes>)

- [`function clearenv():Void`](<#function-clearenv>)

- [`function create(_name:stdgo.GoString):Void`](<#function-create>)

- [`function createTemp(_dir:stdgo.GoString, _pattern:stdgo.GoString):Void`](<#function-createtemp>)

- [`function dirFS(_dir:stdgo.GoString):Void`](<#function-dirfs>)

- [`function environ():Void`](<#function-environ>)

- [`function executable():Void`](<#function-executable>)

- [`function exit(_code:stdgo.GoInt):Void`](<#function-exit>)

- [`function expand(_s:stdgo.GoString, _mapping:()):Void`](<#function-expand>)

- [`function expandEnv(_s:stdgo.GoString):Void`](<#function-expandenv>)

- [`function findProcess(_pid:stdgo.GoInt):Void`](<#function-findprocess>)

- [`function getegid():Void`](<#function-getegid>)

- [`function getenv(_key:stdgo.GoString):Void`](<#function-getenv>)

- [`function geteuid():Void`](<#function-geteuid>)

- [`function getgid():Void`](<#function-getgid>)

- [`function getgroups():Void`](<#function-getgroups>)

- [`function getpagesize():Void`](<#function-getpagesize>)

- [`function getpid():Void`](<#function-getpid>)

- [`function getppid():Void`](<#function-getppid>)

- [`function getuid():Void`](<#function-getuid>)

- [`function getwd():Void`](<#function-getwd>)

- [`function hostname():Void`](<#function-hostname>)

- [`function isExist(_err:stdgo.Error):Void`](<#function-isexist>)

- [`function isNotExist(_err:stdgo.Error):Void`](<#function-isnotexist>)

- [`function isPathSeparator(_c:stdgo.GoUInt8):Void`](<#function-ispathseparator>)

- [`function isPermission(_err:stdgo.Error):Void`](<#function-ispermission>)

- [`function isTimeout(_err:stdgo.Error):Void`](<#function-istimeout>)

- [`function lchown(_name:stdgo.GoString, _uid:stdgo.GoInt, _gid:stdgo.GoInt):Void`](<#function-lchown>)

- [`function link(_oldname:stdgo.GoString, _newname:stdgo.GoString):Void`](<#function-link>)

- [`function lookupEnv(_key:stdgo.GoString):Void`](<#function-lookupenv>)

- [`function lstat(_name:stdgo.GoString):Void`](<#function-lstat>)

- [`function mkdir(_name:stdgo.GoString, _perm:stdgo.os.FileMode):Void`](<#function-mkdir>)

- [`function mkdirAll(_path:stdgo.GoString, _perm:stdgo.os.FileMode):Void`](<#function-mkdirall>)

- [`function mkdirTemp(_dir:stdgo.GoString, _pattern:stdgo.GoString):Void`](<#function-mkdirtemp>)

- [`function newFile(_fd:stdgo.GoUIntptr, _name:stdgo.GoString):Void`](<#function-newfile>)

- [`function newSyscallError(_syscall:stdgo.GoString, _err:stdgo.Error):Void`](<#function-newsyscallerror>)

- [`function open(_name:stdgo.GoString):Void`](<#function-open>)

- [`function openFile(_name:stdgo.GoString, _flag:stdgo.GoInt, _perm:stdgo.os.FileMode):Void`](<#function-openfile>)

- [`function pipe():Void`](<#function-pipe>)

- [`function readDir(_name:stdgo.GoString):Void`](<#function-readdir>)

- [`function readFile(_name:stdgo.GoString):Void`](<#function-readfile>)

- [`function readlink(_name:stdgo.GoString):Void`](<#function-readlink>)

- [`function remove(_name:stdgo.GoString):Void`](<#function-remove>)

- [`function removeAll(_path:stdgo.GoString):Void`](<#function-removeall>)

- [`function rename(_oldpath:stdgo.GoString, _newpath:stdgo.GoString):Void`](<#function-rename>)

- [`function sameFile(_fi1:stdgo.os.FileInfo, _fi2:stdgo.os.FileInfo):Void`](<#function-samefile>)

- [`function setenv(_key:stdgo.GoString, _value:stdgo.GoString):Void`](<#function-setenv>)

- [`function startProcess(_name:stdgo.GoString, _argv:stdgo.Slice<stdgo.GoString>, _attr:stdgo.Ref<stdgo.os.ProcAttr>):Void`](<#function-startprocess>)

- [`function stat(_name:stdgo.GoString):Void`](<#function-stat>)

- [`function symlink(_oldname:stdgo.GoString, _newname:stdgo.GoString):Void`](<#function-symlink>)

- [`function tempDir():Void`](<#function-tempdir>)

- [`function truncate(_name:stdgo.GoString, _size:stdgo.GoInt64):Void`](<#function-truncate>)

- [`function unsetenv(_key:stdgo.GoString):Void`](<#function-unsetenv>)

- [`function userCacheDir():Void`](<#function-usercachedir>)

- [`function userConfigDir():Void`](<#function-userconfigdir>)

- [`function userHomeDir():Void`](<#function-userhomedir>)

- [`function writeFile(_name:stdgo.GoString, _data:stdgo.Slice<stdgo.GoByte>, _perm:stdgo.os.FileMode):Void`](<#function-writefile>)

- [typedef DirEntry](<#typedef-direntry>)

- [typedef File](<#typedef-file>)

- [typedef FileInfo](<#typedef-fileinfo>)

- [typedef FileMode](<#typedef-filemode>)

- [typedef File\_asInterface](<#typedef-file_asinterface>)

- [typedef File\_static\_extension](<#typedef-file_static_extension>)

- [typedef LinkError](<#typedef-linkerror>)

- [typedef LinkError\_asInterface](<#typedef-linkerror_asinterface>)

- [typedef LinkError\_static\_extension](<#typedef-linkerror_static_extension>)

- [typedef PathError](<#typedef-patherror>)

- [typedef ProcAttr](<#typedef-procattr>)

- [typedef Process](<#typedef-process>)

- [typedef ProcessState](<#typedef-processstate>)

- [typedef ProcessState\_asInterface](<#typedef-processstate_asinterface>)

- [typedef ProcessState\_static\_extension](<#typedef-processstate_static_extension>)

- [typedef Process\_asInterface](<#typedef-process_asinterface>)

- [typedef Process\_static\_extension](<#typedef-process_static_extension>)

- [typedef Signal](<#typedef-signal>)

- [typedef SyscallError](<#typedef-syscallerror>)

- [typedef SyscallError\_asInterface](<#typedef-syscallerror_asinterface>)

- [typedef SyscallError\_static\_extension](<#typedef-syscallerror_static_extension>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_0\_asInterface](<#typedef-t__struct_0_asinterface>)

- [typedef T\_\_struct\_0\_static\_extension](<#typedef-t__struct_0_static_extension>)

- [typedef T\_dirFS](<#typedef-t_dirfs>)

- [typedef T\_dirFS\_asInterface](<#typedef-t_dirfs_asinterface>)

- [typedef T\_dirFS\_static\_extension](<#typedef-t_dirfs_static_extension>)

- [typedef T\_dirInfo](<#typedef-t_dirinfo>)

- [typedef T\_dirInfo\_asInterface](<#typedef-t_dirinfo_asinterface>)

- [typedef T\_dirInfo\_static\_extension](<#typedef-t_dirinfo_static_extension>)

- [typedef T\_file](<#typedef-t_file>)

- [typedef T\_fileStat](<#typedef-t_filestat>)

- [typedef T\_fileStat\_asInterface](<#typedef-t_filestat_asinterface>)

- [typedef T\_fileStat\_static\_extension](<#typedef-t_filestat_static_extension>)

- [typedef T\_fileWithoutReadFrom](<#typedef-t_filewithoutreadfrom>)

- [typedef T\_fileWithoutReadFrom\_asInterface](<#typedef-t_filewithoutreadfrom_asinterface>)

- [typedef T\_fileWithoutReadFrom\_static\_extension](<#typedef-t_filewithoutreadfrom_static_extension>)

- [typedef T\_file\_asInterface](<#typedef-t_file_asinterface>)

- [typedef T\_file\_static\_extension](<#typedef-t_file_static_extension>)

- [typedef T\_newFileKind](<#typedef-t_newfilekind>)

- [typedef T\_rawConn](<#typedef-t_rawconn>)

- [typedef T\_rawConn\_asInterface](<#typedef-t_rawconn_asinterface>)

- [typedef T\_rawConn\_static\_extension](<#typedef-t_rawconn_static_extension>)

- [typedef T\_readdirMode](<#typedef-t_readdirmode>)

- [typedef T\_syscallErrorType](<#typedef-t_syscallerrortype>)

- [typedef T\_timeout](<#typedef-t_timeout>)

- [typedef T\_unixDirent](<#typedef-t_unixdirent>)

- [typedef T\_unixDirent\_asInterface](<#typedef-t_unixdirent_asinterface>)

- [typedef T\_unixDirent\_static\_extension](<#typedef-t_unixdirent_static_extension>)

# Variables


```haxe
import stdgo.os.Os
```


```haxe
var _:Dynamic
```


```haxe
var __UTIME_OMIT:Dynamic
```


```haxe
var __go2hxdoc__package:Dynamic
```


```haxe
var _blockSize:Dynamic
```


```haxe
var _checkWrapErr:Dynamic
```


```haxe
var _dirBufPool:Dynamic
```


```haxe
var _errPatternHasSeparator:Dynamic
```


```haxe
var _errWriteAtInAppendMode:Dynamic
```


```haxe
var _getwdCache:Dynamic
```


```haxe
var _hex:Dynamic
```


```haxe
var _isBigEndian:Dynamic
```


```haxe
var _kindNewFile:Dynamic
```


```haxe
var _kindNoPoll:Dynamic
```


```haxe
var _kindNonBlock:Dynamic
```


```haxe
var _kindOpenFile:Dynamic
```


```haxe
var _kindPipe:Dynamic
```


```haxe
var _lstat:Dynamic
```


```haxe
var _readdirDirEntry:Dynamic
```


```haxe
var _readdirFileInfo:Dynamic
```


```haxe
var _readdirName:Dynamic
```


```haxe
var _supportsCloseOnExec:Dynamic
```


```haxe
var _supportsCreateWithStickyBit:Dynamic
```


```haxe
var _testingForceReadDirLstat:Dynamic
```


```haxe
var args:Dynamic
```


```haxe
var atime:Dynamic
```


```haxe
var devNull:Dynamic
```


```haxe
var errClosed:Dynamic
```


```haxe
var errDeadlineExceeded:Dynamic
```


```haxe
var errExist:Dynamic
```


```haxe
var errInvalid:Dynamic
```


```haxe
var errNoDeadline:Dynamic
```


```haxe
var errNotExist:Dynamic
```


```haxe
var errPatternHasSeparator:Dynamic
```


```haxe
var errPermission:Dynamic
```


```haxe
var errProcessDone:Dynamic
```


```haxe
var errWriteAtInAppendMode:Dynamic
```


```haxe
var interrupt:Dynamic
```


```haxe
var kill:Dynamic
```


```haxe
var lstatP:Dynamic
```


```haxe
var modeAppend:Dynamic
```


```haxe
var modeCharDevice:Dynamic
```


```haxe
var modeDevice:Dynamic
```


```haxe
var modeDir:Dynamic
```


```haxe
var modeExclusive:Dynamic
```


```haxe
var modeIrregular:Dynamic
```


```haxe
var modeNamedPipe:Dynamic
```


```haxe
var modePerm:Dynamic
```


```haxe
var modeSetgid:Dynamic
```


```haxe
var modeSetuid:Dynamic
```


```haxe
var modeSocket:Dynamic
```


```haxe
var modeSticky:Dynamic
```


```haxe
var modeSymlink:Dynamic
```


```haxe
var modeTemporary:Dynamic
```


```haxe
var modeType:Dynamic
```


```haxe
var o_APPEND:Dynamic
```


```haxe
var o_CREATE:Dynamic
```


```haxe
var o_EXCL:Dynamic
```


```haxe
var o_RDONLY:Dynamic
```


```haxe
var o_RDWR:Dynamic
```


```haxe
var o_SYNC:Dynamic
```


```haxe
var o_TRUNC:Dynamic
```


```haxe
var o_WRONLY:Dynamic
```


```haxe
var pathListSeparator:Dynamic
```


```haxe
var pathSeparator:Dynamic
```


```haxe
var seek_CUR:Dynamic
```


```haxe
var seek_END:Dynamic
```


```haxe
var seek_SET:Dynamic
```


```haxe
var splitPath:Dynamic
```


```haxe
var stderr:Dynamic
```


```haxe
var stdin:Dynamic
```


```haxe
var stdout:Dynamic
```


```haxe
var testingForceReadDirLstat:Dynamic
```


# Functions


```haxe
import stdgo.os.Os
```


## function \_atime


```haxe
function _atime(_fi:stdgo.os.FileInfo):Void
```


[\(view code\)](<./Os.hx#L198>)


## function \_basename


```haxe
function _basename(_name:stdgo.GoString):Void
```


[\(view code\)](<./Os.hx#L181>)


## function \_chmod


```haxe
function _chmod(_name:stdgo.GoString, _mode:stdgo.os.FileMode):Void
```


[\(view code\)](<./Os.hx#L156>)


## function \_containsAny


```haxe
function _containsAny(_s:stdgo.GoString, _chars:stdgo.GoString):Void
```


[\(view code\)](<./Os.hx#L151>)


## function \_direntIno


```haxe
function _direntIno(_buf:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Os.hx#L102>)


## function \_direntNamlen


```haxe
function _direntNamlen(_buf:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Os.hx#L104>)


## function \_direntReclen


```haxe
function _direntReclen(_buf:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Os.hx#L103>)


## function \_direntType


```haxe
function _direntType(_buf:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Os.hx#L105>)


## function \_endsWithDot


```haxe
function _endsWithDot(_path:stdgo.GoString):Void
```


[\(view code\)](<./Os.hx#L179>)


## function \_epipecheck


```haxe
function _epipecheck(_file:stdgo.Ref<stdgo.os.File>, _e:stdgo.Error):Void
```


[\(view code\)](<./Os.hx#L167>)


## function \_errDeadlineExceeded


```haxe
function _errDeadlineExceeded():Void
```


[\(view code\)](<./Os.hx#L118>)


## function \_errNoDeadline


```haxe
function _errNoDeadline():Void
```


[\(view code\)](<./Os.hx#L117>)


## function \_executable


```haxe
function _executable():Void
```


[\(view code\)](<./Os.hx#L135>)


## function \_fastrand


```haxe
function _fastrand():Void
```


[\(view code\)](<./Os.hx#L205>)


## function \_fillFileStatFromSys


```haxe
function _fillFileStatFromSys(_fs:stdgo.Ref<stdgo.os.T_fileStat>, _name:stdgo.GoString):Void
```


[\(view code\)](<./Os.hx#L197>)


## function \_findProcess


```haxe
function _findProcess(_pid:stdgo.GoInt):Void
```


[\(view code\)](<./Os.hx#L133>)


## function \_fixCount


```haxe
function _fixCount(_n:stdgo.GoInt, _err:stdgo.Error):Void
```


[\(view code\)](<./Os.hx#L144>)


## function \_fixLongPath


```haxe
function _fixLongPath(_path:stdgo.GoString):Void
```


[\(view code\)](<./Os.hx#L161>)


## function \_fixRootDirectory


```haxe
function _fixRootDirectory(_p:stdgo.GoString):Void
```


[\(view code\)](<./Os.hx#L183>)


## function \_genericReadFrom


```haxe
function _genericReadFrom(_f:stdgo.Ref<stdgo.os.File>, _r:stdgo._internal.io.Reader):Void
```


[\(view code\)](<./Os.hx#L136>)


## function \_getShellName


```haxe
function _getShellName(_s:stdgo.GoString):Void
```


[\(view code\)](<./Os.hx#L110>)


## function \_hostname


```haxe
function _hostname():Void
```


[\(view code\)](<./Os.hx#L204>)


## function \_ignoringEINTR


```haxe
function _ignoringEINTR(_fn:():stdgo.Error):Void
```


[\(view code\)](<./Os.hx#L160>)


## function \_isAlphaNum


```haxe
function _isAlphaNum(_c:stdgo.GoUInt8):Void
```


[\(view code\)](<./Os.hx#L109>)


## function \_isShellSpecialVar


```haxe
function _isShellSpecialVar(_c:stdgo.GoUInt8):Void
```


[\(view code\)](<./Os.hx#L108>)


## function \_itox


```haxe
function _itox(_val:stdgo.GoInt):Void
```


[\(view code\)](<./Os.hx#L201>)


## function \_joinPath


```haxe
function _joinPath(_dir:stdgo.GoString, _name:stdgo.GoString):Void
```


[\(view code\)](<./Os.hx#L210>)


## function \_lastIndex


```haxe
function _lastIndex(_s:stdgo.GoString, _sep:stdgo.GoByte):Void
```


[\(view code\)](<./Os.hx#L211>)


## function \_lstatNolog


```haxe
function _lstatNolog(_name:stdgo.GoString):Void
```


[\(view code\)](<./Os.hx#L200>)


## function \_net\_newUnixFile


```haxe
function _net_newUnixFile(_fd:stdgo.GoInt, _name:stdgo.GoString):Void
```


[\(view code\)](<./Os.hx#L164>)


## function \_newFile


```haxe
function _newFile(_fd:stdgo.GoInt, _name:stdgo.GoString, _kind:stdgo.os.T_newFileKind):Void
```


[\(view code\)](<./Os.hx#L165>)


## function \_newProcess


```haxe
function _newProcess(_pid:stdgo.GoInt, _handle:stdgo.GoUIntptr):Void
```


[\(view code\)](<./Os.hx#L127>)


## function \_newRawConn


```haxe
function _newRawConn(_file:stdgo.Ref<stdgo.os.File>):Void
```


[\(view code\)](<./Os.hx#L193>)


## function \_newUnixDirent


```haxe
function _newUnixDirent(_parent:stdgo.GoString, _name:stdgo.GoString, _typ:stdgo.os.FileMode):Void
```


[\(view code\)](<./Os.hx#L175>)


## function \_nextRandom


```haxe
function _nextRandom():Void
```


[\(view code\)](<./Os.hx#L206>)


## function \_open


```haxe
function _open(_path:stdgo.GoString, _flag:stdgo.GoInt, _perm:stdgo.GoUInt32):Void
```


[\(view code\)](<./Os.hx#L154>)


## function \_openFileNolog


```haxe
function _openFileNolog(_name:stdgo.GoString, _flag:stdgo.GoInt, _perm:stdgo.os.FileMode):Void
```


[\(view code\)](<./Os.hx#L168>)


## function \_prefixAndSuffix


```haxe
function _prefixAndSuffix(_pattern:stdgo.GoString):Void
```


[\(view code\)](<./Os.hx#L208>)


## function \_readInt


```haxe
function _readInt(_b:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoUIntptr, _size:stdgo.GoUIntptr):Void
```


[\(view code\)](<./Os.hx#L99>)


## function \_readIntBE


```haxe
function _readIntBE(_b:stdgo.Slice<stdgo.GoByte>, _size:stdgo.GoUIntptr):Void
```


[\(view code\)](<./Os.hx#L100>)


## function \_readIntLE


```haxe
function _readIntLE(_b:stdgo.Slice<stdgo.GoByte>, _size:stdgo.GoUIntptr):Void
```


[\(view code\)](<./Os.hx#L101>)


## function \_removeAll


```haxe
function _removeAll(_path:stdgo.GoString):Void
```


[\(view code\)](<./Os.hx#L194>)


## function \_rename


```haxe
function _rename(_oldname:stdgo.GoString, _newname:stdgo.GoString):Void
```


[\(view code\)](<./Os.hx#L162>)


## function \_runtime\_args


```haxe
function _runtime_args():Void
```


[\(view code\)](<./Os.hx#L185>)


## function \_runtime\_beforeExit


```haxe
function _runtime_beforeExit(_exitCode:stdgo.GoInt):Void
```


[\(view code\)](<./Os.hx#L192>)


## function \_sameFile


```haxe
function _sameFile(_fs1:stdgo.Ref<stdgo.os.T_fileStat>, _fs2:stdgo.Ref<stdgo.os.T_fileStat>):Void
```


[\(view code\)](<./Os.hx#L214>)


## function \_setStickyBit


```haxe
function _setStickyBit(_name:stdgo.GoString):Void
```


[\(view code\)](<./Os.hx#L138>)


## function \_sigpipe


```haxe
function _sigpipe():Void
```


[\(view code\)](<./Os.hx#L166>)


## function \_splitPath


```haxe
function _splitPath(_path:stdgo.GoString):Void
```


[\(view code\)](<./Os.hx#L182>)


## function \_startProcess


```haxe
function _startProcess(_name:stdgo.GoString, _argv:stdgo.Slice<stdgo.GoString>, _attr:stdgo.Ref<stdgo.os.ProcAttr>):Void
```


[\(view code\)](<./Os.hx#L132>)


## function \_statNolog


```haxe
function _statNolog(_name:stdgo.GoString):Void
```


[\(view code\)](<./Os.hx#L199>)


## function \_syscallMode


```haxe
function _syscallMode(_i:stdgo.os.FileMode):Void
```


[\(view code\)](<./Os.hx#L155>)


## function \_tempDir


```haxe
function _tempDir():Void
```


[\(view code\)](<./Os.hx#L171>)


## function \_uitox


```haxe
function _uitox(_val:stdgo.GoUInt):Void
```


[\(view code\)](<./Os.hx#L202>)


## function \_underlyingError


```haxe
function _underlyingError(_err:stdgo.Error):Void
```


[\(view code\)](<./Os.hx#L125>)


## function \_underlyingErrorIs


```haxe
function _underlyingErrorIs(_err:stdgo.Error, _target:stdgo.Error):Void
```


[\(view code\)](<./Os.hx#L124>)


## function \_wrapSyscallError


```haxe
function _wrapSyscallError(_name:stdgo.GoString, _err:stdgo.Error):Void
```


[\(view code\)](<./Os.hx#L126>)


## function chdir


```haxe
function chdir(_dir:stdgo.GoString):Void
```


[\(view code\)](<./Os.hx#L139>)


## function chmod


```haxe
function chmod(_name:stdgo.GoString, _mode:stdgo.os.FileMode):Void
```


[\(view code\)](<./Os.hx#L149>)


## function chown


```haxe
function chown(_name:stdgo.GoString, _uid:stdgo.GoInt, _gid:stdgo.GoInt):Void
```


[\(view code\)](<./Os.hx#L157>)


## function chtimes


```haxe
function chtimes(_name:stdgo.GoString, _atime:stdgo._internal.time.Time, _mtime:stdgo._internal.time.Time):Void
```


[\(view code\)](<./Os.hx#L159>)


## function clearenv


```haxe
function clearenv():Void
```


[\(view code\)](<./Os.hx#L115>)


## function create


```haxe
function create(_name:stdgo.GoString):Void
```


[\(view code\)](<./Os.hx#L141>)


## function createTemp


```haxe
function createTemp(_dir:stdgo.GoString, _pattern:stdgo.GoString):Void
```


[\(view code\)](<./Os.hx#L207>)


## function dirFS


```haxe
function dirFS(_dir:stdgo.GoString):Void
```


[\(view code\)](<./Os.hx#L150>)


## function environ


```haxe
function environ():Void
```


[\(view code\)](<./Os.hx#L116>)


## function executable


```haxe
function executable():Void
```


[\(view code\)](<./Os.hx#L134>)


## function exit


```haxe
function exit(_code:stdgo.GoInt):Void
```


[\(view code\)](<./Os.hx#L191>)


## function expand


```haxe
function expand(_s:stdgo.GoString, _mapping:()):Void
```


[\(view code\)](<./Os.hx#L106>)


## function expandEnv


```haxe
function expandEnv(_s:stdgo.GoString):Void
```


[\(view code\)](<./Os.hx#L107>)


## function findProcess


```haxe
function findProcess(_pid:stdgo.GoInt):Void
```


[\(view code\)](<./Os.hx#L130>)


## function getegid


```haxe
function getegid():Void
```


[\(view code\)](<./Os.hx#L189>)


## function getenv


```haxe
function getenv(_key:stdgo.GoString):Void
```


[\(view code\)](<./Os.hx#L111>)


## function geteuid


```haxe
function geteuid():Void
```


[\(view code\)](<./Os.hx#L187>)


## function getgid


```haxe
function getgid():Void
```


[\(view code\)](<./Os.hx#L188>)


## function getgroups


```haxe
function getgroups():Void
```


[\(view code\)](<./Os.hx#L190>)


## function getpagesize


```haxe
function getpagesize():Void
```


[\(view code\)](<./Os.hx#L212>)


## function getpid


```haxe
function getpid():Void
```


[\(view code\)](<./Os.hx#L128>)


## function getppid


```haxe
function getppid():Void
```


[\(view code\)](<./Os.hx#L129>)


## function getuid


```haxe
function getuid():Void
```


[\(view code\)](<./Os.hx#L186>)


## function getwd


```haxe
function getwd():Void
```


[\(view code\)](<./Os.hx#L176>)


## function hostname


```haxe
function hostname():Void
```


[\(view code\)](<./Os.hx#L203>)


## function isExist


```haxe
function isExist(_err:stdgo.Error):Void
```


[\(view code\)](<./Os.hx#L120>)


## function isNotExist


```haxe
function isNotExist(_err:stdgo.Error):Void
```


[\(view code\)](<./Os.hx#L121>)


## function isPathSeparator


```haxe
function isPathSeparator(_c:stdgo.GoUInt8):Void
```


[\(view code\)](<./Os.hx#L180>)


## function isPermission


```haxe
function isPermission(_err:stdgo.Error):Void
```


[\(view code\)](<./Os.hx#L122>)


## function isTimeout


```haxe
function isTimeout(_err:stdgo.Error):Void
```


[\(view code\)](<./Os.hx#L123>)


## function lchown


```haxe
function lchown(_name:stdgo.GoString, _uid:stdgo.GoInt, _gid:stdgo.GoInt):Void
```


[\(view code\)](<./Os.hx#L158>)


## function link


```haxe
function link(_oldname:stdgo.GoString, _newname:stdgo.GoString):Void
```


[\(view code\)](<./Os.hx#L172>)


## function lookupEnv


```haxe
function lookupEnv(_key:stdgo.GoString):Void
```


[\(view code\)](<./Os.hx#L112>)


## function lstat


```haxe
function lstat(_name:stdgo.GoString):Void
```


[\(view code\)](<./Os.hx#L196>)


## function mkdir


```haxe
function mkdir(_name:stdgo.GoString, _perm:stdgo.os.FileMode):Void
```


[\(view code\)](<./Os.hx#L137>)


## function mkdirAll


```haxe
function mkdirAll(_path:stdgo.GoString, _perm:stdgo.os.FileMode):Void
```


[\(view code\)](<./Os.hx#L177>)


## function mkdirTemp


```haxe
function mkdirTemp(_dir:stdgo.GoString, _pattern:stdgo.GoString):Void
```


[\(view code\)](<./Os.hx#L209>)


## function newFile


```haxe
function newFile(_fd:stdgo.GoUIntptr, _name:stdgo.GoString):Void
```


[\(view code\)](<./Os.hx#L163>)


## function newSyscallError


```haxe
function newSyscallError(_syscall:stdgo.GoString, _err:stdgo.Error):Void
```


[\(view code\)](<./Os.hx#L119>)


## function open


```haxe
function open(_name:stdgo.GoString):Void
```


[\(view code\)](<./Os.hx#L140>)


## function openFile


```haxe
function openFile(_name:stdgo.GoString, _flag:stdgo.GoInt, _perm:stdgo.os.FileMode):Void
```


[\(view code\)](<./Os.hx#L142>)


## function pipe


```haxe
function pipe():Void
```


[\(view code\)](<./Os.hx#L184>)


## function readDir


```haxe
function readDir(_name:stdgo.GoString):Void
```


[\(view code\)](<./Os.hx#L98>)


## function readFile


```haxe
function readFile(_name:stdgo.GoString):Void
```


[\(view code\)](<./Os.hx#L152>)


## function readlink


```haxe
function readlink(_name:stdgo.GoString):Void
```


[\(view code\)](<./Os.hx#L174>)


## function remove


```haxe
function remove(_name:stdgo.GoString):Void
```


[\(view code\)](<./Os.hx#L170>)


## function removeAll


```haxe
function removeAll(_path:stdgo.GoString):Void
```


[\(view code\)](<./Os.hx#L178>)


## function rename


```haxe
function rename(_oldpath:stdgo.GoString, _newpath:stdgo.GoString):Void
```


[\(view code\)](<./Os.hx#L143>)


## function sameFile


```haxe
function sameFile(_fi1:stdgo.os.FileInfo, _fi2:stdgo.os.FileInfo):Void
```


[\(view code\)](<./Os.hx#L213>)


## function setenv


```haxe
function setenv(_key:stdgo.GoString, _value:stdgo.GoString):Void
```


[\(view code\)](<./Os.hx#L113>)


## function startProcess


```haxe
function startProcess(_name:stdgo.GoString, _argv:stdgo.Slice<stdgo.GoString>, _attr:stdgo.Ref<stdgo.os.ProcAttr>):Void
```


[\(view code\)](<./Os.hx#L131>)


## function stat


```haxe
function stat(_name:stdgo.GoString):Void
```


[\(view code\)](<./Os.hx#L195>)


## function symlink


```haxe
function symlink(_oldname:stdgo.GoString, _newname:stdgo.GoString):Void
```


[\(view code\)](<./Os.hx#L173>)


## function tempDir


```haxe
function tempDir():Void
```


[\(view code\)](<./Os.hx#L145>)


## function truncate


```haxe
function truncate(_name:stdgo.GoString, _size:stdgo.GoInt64):Void
```


[\(view code\)](<./Os.hx#L169>)


## function unsetenv


```haxe
function unsetenv(_key:stdgo.GoString):Void
```


[\(view code\)](<./Os.hx#L114>)


## function userCacheDir


```haxe
function userCacheDir():Void
```


[\(view code\)](<./Os.hx#L146>)


## function userConfigDir


```haxe
function userConfigDir():Void
```


[\(view code\)](<./Os.hx#L147>)


## function userHomeDir


```haxe
function userHomeDir():Void
```


[\(view code\)](<./Os.hx#L148>)


## function writeFile


```haxe
function writeFile(_name:stdgo.GoString, _data:stdgo.Slice<stdgo.GoByte>, _perm:stdgo.os.FileMode):Void
```


[\(view code\)](<./Os.hx#L153>)


# Typedefs


```haxe
import stdgo.os.*
```


## typedef DirEntry


```haxe
typedef DirEntry = stdgo._internal.os.DirEntry;
```


## typedef File


```haxe
typedef File = Dynamic;
```


## typedef FileInfo


```haxe
typedef FileInfo = stdgo._internal.os.FileInfo;
```


## typedef FileMode


```haxe
typedef FileMode = stdgo._internal.os.FileMode;
```


## typedef File\_asInterface


```haxe
typedef File_asInterface = Dynamic;
```


## typedef File\_static\_extension


```haxe
typedef File_static_extension = Dynamic;
```


## typedef LinkError


```haxe
typedef LinkError = Dynamic;
```


## typedef LinkError\_asInterface


```haxe
typedef LinkError_asInterface = Dynamic;
```


## typedef LinkError\_static\_extension


```haxe
typedef LinkError_static_extension = Dynamic;
```


## typedef PathError


```haxe
typedef PathError = stdgo._internal.os.PathError;
```


## typedef ProcAttr


```haxe
typedef ProcAttr = Dynamic;
```


## typedef Process


```haxe
typedef Process = Dynamic;
```


## typedef ProcessState


```haxe
typedef ProcessState = Dynamic;
```


## typedef ProcessState\_asInterface


```haxe
typedef ProcessState_asInterface = Dynamic;
```


## typedef ProcessState\_static\_extension


```haxe
typedef ProcessState_static_extension = Dynamic;
```


## typedef Process\_asInterface


```haxe
typedef Process_asInterface = Dynamic;
```


## typedef Process\_static\_extension


```haxe
typedef Process_static_extension = Dynamic;
```


## typedef Signal


```haxe
typedef Signal = stdgo._internal.os.Signal;
```


## typedef SyscallError


```haxe
typedef SyscallError = Dynamic;
```


## typedef SyscallError\_asInterface


```haxe
typedef SyscallError_asInterface = Dynamic;
```


## typedef SyscallError\_static\_extension


```haxe
typedef SyscallError_static_extension = Dynamic;
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = stdgo._internal.os.T__struct_0;
```


## typedef T\_\_struct\_0\_asInterface


```haxe
typedef T__struct_0_asInterface = Dynamic;
```


## typedef T\_\_struct\_0\_static\_extension


```haxe
typedef T__struct_0_static_extension = Dynamic;
```


## typedef T\_dirFS


```haxe
typedef T_dirFS = stdgo._internal.os.T_dirFS;
```


## typedef T\_dirFS\_asInterface


```haxe
typedef T_dirFS_asInterface = Dynamic;
```


## typedef T\_dirFS\_static\_extension


```haxe
typedef T_dirFS_static_extension = Dynamic;
```


## typedef T\_dirInfo


```haxe
typedef T_dirInfo = Dynamic;
```


## typedef T\_dirInfo\_asInterface


```haxe
typedef T_dirInfo_asInterface = Dynamic;
```


## typedef T\_dirInfo\_static\_extension


```haxe
typedef T_dirInfo_static_extension = Dynamic;
```


## typedef T\_file


```haxe
typedef T_file = Dynamic;
```


## typedef T\_fileStat


```haxe
typedef T_fileStat = Dynamic;
```


## typedef T\_fileStat\_asInterface


```haxe
typedef T_fileStat_asInterface = Dynamic;
```


## typedef T\_fileStat\_static\_extension


```haxe
typedef T_fileStat_static_extension = Dynamic;
```


## typedef T\_fileWithoutReadFrom


```haxe
typedef T_fileWithoutReadFrom = Dynamic;
```


## typedef T\_fileWithoutReadFrom\_asInterface


```haxe
typedef T_fileWithoutReadFrom_asInterface = Dynamic;
```


## typedef T\_fileWithoutReadFrom\_static\_extension


```haxe
typedef T_fileWithoutReadFrom_static_extension = Dynamic;
```


## typedef T\_file\_asInterface


```haxe
typedef T_file_asInterface = Dynamic;
```


## typedef T\_file\_static\_extension


```haxe
typedef T_file_static_extension = Dynamic;
```


## typedef T\_newFileKind


```haxe
typedef T_newFileKind = stdgo._internal.os.T_newFileKind;
```


## typedef T\_rawConn


```haxe
typedef T_rawConn = Dynamic;
```


## typedef T\_rawConn\_asInterface


```haxe
typedef T_rawConn_asInterface = Dynamic;
```


## typedef T\_rawConn\_static\_extension


```haxe
typedef T_rawConn_static_extension = Dynamic;
```


## typedef T\_readdirMode


```haxe
typedef T_readdirMode = stdgo._internal.os.T_readdirMode;
```


## typedef T\_syscallErrorType


```haxe
typedef T_syscallErrorType = stdgo._internal.os.T_syscallErrorType;
```


## typedef T\_timeout


```haxe
typedef T_timeout = stdgo._internal.os.T_timeout;
```


## typedef T\_unixDirent


```haxe
typedef T_unixDirent = Dynamic;
```


## typedef T\_unixDirent\_asInterface


```haxe
typedef T_unixDirent_asInterface = Dynamic;
```


## typedef T\_unixDirent\_static\_extension


```haxe
typedef T_unixDirent_static_extension = Dynamic;
```


