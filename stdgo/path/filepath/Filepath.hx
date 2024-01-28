package stdgo.path.filepath;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var errBadPattern : Dynamic;
@:invalid var skipDir : Dynamic;
@:invalid var skipAll : Dynamic;
@:invalid var _lstat : Dynamic;
@:invalid var lstatP : Dynamic;
@:invalid var separator : Dynamic;
@:invalid var listSeparator : Dynamic;
@:invalid typedef T_lazybuf = Dynamic;
@:invalid typedef T_statDirEntry = Dynamic;
typedef WalkFunc = stdgo._internal.path.filepath.Filepath.WalkFunc;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):Void {}
function _scanChunk(_pattern:stdgo.GoString):Void {}
function _matchChunk(_chunk:stdgo.GoString, _s:stdgo.GoString):Void {}
function _getEsc(_chunk:stdgo.GoString):Void {}
function glob(_pattern:stdgo.GoString):Void {}
function _globWithLimit(_pattern:stdgo.GoString, _depth:stdgo.GoInt):Void {}
function _cleanGlobPath(_path:stdgo.GoString):Void {}
function _cleanGlobPathWindows(_path:stdgo.GoString):Void {}
function _glob(_dir:stdgo.GoString, _pattern:stdgo.GoString, _matches:stdgo.Slice<stdgo.GoString>):Void {}
function _hasMeta(_path:stdgo.GoString):Void {}
function clean(_path:stdgo.GoString):Void {}
function isLocal(_path:stdgo.GoString):Void {}
function _unixIsLocal(_path:stdgo.GoString):Void {}
function toSlash(_path:stdgo.GoString):Void {}
function fromSlash(_path:stdgo.GoString):Void {}
function splitList(_path:stdgo.GoString):Void {}
function split(_path:stdgo.GoString):Void {}
function join(_elem:haxe.Rest<stdgo.GoString>):Void {}
function ext(_path:stdgo.GoString):Void {}
function evalSymlinks(_path:stdgo.GoString):Void {}
function abs(_path:stdgo.GoString):Void {}
function _unixAbs(_path:stdgo.GoString):Void {}
function rel(_basepath:stdgo.GoString, _targpath:stdgo.GoString):Void {}
function _walkDir(_path:stdgo.GoString, _d:stdgo._internal.io.fs.Fs.DirEntry, _walkDirFn:stdgo._internal.io.fs.Fs.WalkDirFunc):Void {}
function _walk(_path:stdgo.GoString, _info:stdgo._internal.io.fs.Fs.FileInfo, _walkFn:WalkFunc):Void {}
function walkDir(_root:stdgo.GoString, _fn:stdgo._internal.io.fs.Fs.WalkDirFunc):Void {}
function walk(_root:stdgo.GoString, _fn:WalkFunc):Void {}
function _readDir(_dirname:stdgo.GoString):Void {}
function _readDirNames(_dirname:stdgo.GoString):Void {}
function base(_path:stdgo.GoString):Void {}
function dir(_path:stdgo.GoString):Void {}
function volumeName(_path:stdgo.GoString):Void {}
function _isLocal(_path:stdgo.GoString):Void {}
function isAbs(_path:stdgo.GoString):Void {}
function _volumeNameLen(_path:stdgo.GoString):Void {}
function hasPrefix(_p:stdgo.GoString, _prefix:stdgo.GoString):Void {}
function _splitList(_path:stdgo.GoString):Void {}
function _abs(_path:stdgo.GoString):Void {}
function _join(_elem:stdgo.Slice<stdgo.GoString>):Void {}
function _sameWord(_a:stdgo.GoString, _b:stdgo.GoString):Void {}
function _walkSymlinks(_path:stdgo.GoString):Void {}
function _evalSymlinks(_path:stdgo.GoString):Void {}
@:invalid typedef T_lazybuf_asInterface = Dynamic;
@:invalid typedef T_lazybuf_static_extension = Dynamic;
@:invalid typedef T_statDirEntry_asInterface = Dynamic;
@:invalid typedef T_statDirEntry_static_extension = Dynamic;
