package stdgo.io.fs;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var errInvalid : Dynamic;
@:invalid var errPermission : Dynamic;
@:invalid var errExist : Dynamic;
@:invalid var errNotExist : Dynamic;
@:invalid var errClosed : Dynamic;
@:invalid var skipDir : Dynamic;
@:invalid var skipAll : Dynamic;
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
typedef FS = stdgo._internal.io.fs.Fs.FS;
typedef File = stdgo._internal.io.fs.Fs.File;
typedef DirEntry = stdgo._internal.io.fs.Fs.DirEntry;
typedef ReadDirFile = stdgo._internal.io.fs.Fs.ReadDirFile;
typedef FileInfo = stdgo._internal.io.fs.Fs.FileInfo;
typedef GlobFS = stdgo._internal.io.fs.Fs.GlobFS;
typedef ReadDirFS = stdgo._internal.io.fs.Fs.ReadDirFS;
typedef ReadFileFS = stdgo._internal.io.fs.Fs.ReadFileFS;
typedef StatFS = stdgo._internal.io.fs.Fs.StatFS;
typedef SubFS = stdgo._internal.io.fs.Fs.SubFS;
typedef T__interface_0 = stdgo._internal.io.fs.Fs.T__interface_0;
@:invalid typedef PathError = Dynamic;
@:invalid typedef T_dirInfo = Dynamic;
@:invalid typedef T_subFS = Dynamic;
@:invalid typedef T_statDirEntry = Dynamic;
typedef FileMode = stdgo._internal.io.fs.Fs.FileMode;
typedef WalkDirFunc = stdgo._internal.io.fs.Fs.WalkDirFunc;
function formatFileInfo(_info:FileInfo):Void {}
function formatDirEntry(_dir:DirEntry):Void {}
function validPath(_name:stdgo.GoString):Void {}
function _errInvalid():Void {}
function _errPermission():Void {}
function _errExist():Void {}
function _errNotExist():Void {}
function _errClosed():Void {}
function glob(_fsys:FS, _pattern:stdgo.GoString):Void {}
function _globWithLimit(_fsys:FS, _pattern:stdgo.GoString, _depth:stdgo.GoInt):Void {}
function _cleanGlobPath(_path:stdgo.GoString):Void {}
function _glob(_fs:FS, _dir:stdgo.GoString, _pattern:stdgo.GoString, _matches:stdgo.Slice<stdgo.GoString>):Void {}
function _hasMeta(_path:stdgo.GoString):Void {}
function readDir(_fsys:FS, _name:stdgo.GoString):Void {}
function fileInfoToDirEntry(_info:FileInfo):Void {}
function readFile(_fsys:FS, _name:stdgo.GoString):Void {}
function stat(_fsys:FS, _name:stdgo.GoString):Void {}
function sub(_fsys:FS, _dir:stdgo.GoString):Void {}
function _walkDir(_fsys:FS, _name:stdgo.GoString, _d:DirEntry, _walkDirFn:WalkDirFunc):Void {}
function walkDir(_fsys:FS, _root:stdgo.GoString, _fn:WalkDirFunc):Void {}
@:invalid typedef PathError_asInterface = Dynamic;
@:invalid typedef PathError_static_extension = Dynamic;
@:invalid typedef T_dirInfo_asInterface = Dynamic;
@:invalid typedef T_dirInfo_static_extension = Dynamic;
@:invalid typedef T_subFS_asInterface = Dynamic;
@:invalid typedef T_subFS_static_extension = Dynamic;
@:invalid typedef T_statDirEntry_asInterface = Dynamic;
@:invalid typedef T_statDirEntry_static_extension = Dynamic;
@:invalid typedef FileMode_asInterface = Dynamic;
@:invalid typedef FileMode_static_extension = Dynamic;
