package stdgo.internal.poll;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var errNetClosing : Dynamic;
@:invalid var errFileClosing : Dynamic;
@:invalid var errNoDeadline : Dynamic;
@:invalid var errDeadlineExceeded : Dynamic;
@:invalid var errNotPollable : Dynamic;
@:invalid var testHookDidWritev : Dynamic;
@:invalid var closeFunc : Dynamic;
@:invalid var acceptFunc : Dynamic;
@:invalid var _mutexClosed : Dynamic;
@:invalid var _mutexRLock : Dynamic;
@:invalid var _mutexWLock : Dynamic;
@:invalid var _mutexRef : Dynamic;
@:invalid var _mutexRefMask : Dynamic;
@:invalid var _mutexRWait : Dynamic;
@:invalid var _mutexRMask : Dynamic;
@:invalid var _mutexWWait : Dynamic;
@:invalid var _mutexWMask : Dynamic;
@:invalid var _overflowMsg : Dynamic;
@:invalid var _maxRW : Dynamic;
@:invalid var _dupCloexecUnsupported : Dynamic;
@:invalid typedef T_errNetClosing = Dynamic;
@:invalid typedef DeadlineExceededError = Dynamic;
@:invalid typedef T_fdMutex = Dynamic;
@:invalid typedef T_pollDesc = Dynamic;
@:invalid typedef FD = Dynamic;
@:invalid typedef SysFile = Dynamic;
function _errClosing(_isFile:Bool):Void {}
function _consume(_v:stdgo.Ref<stdgo.Slice<stdgo.Slice<stdgo.GoByte>>>, _n:stdgo.GoInt64):Void {}
function _runtime_Semacquire(_sema:stdgo.Pointer<stdgo.GoUInt32>):Void {}
function _runtime_Semrelease(_sema:stdgo.Pointer<stdgo.GoUInt32>):Void {}
function _setDeadlineImpl(_fd:stdgo.Ref<FD>, _t:stdgo._internal.time.Time.Time, _mode:stdgo.GoInt):Void {}
function isPollDescriptor(_fd:stdgo.GoUIntptr):Void {}
function _ignoringEINTR(_fn:() -> stdgo.Error):Void {}
function dupCloseOnExec(_fd:stdgo.GoInt):Void {}
function _ignoringEINTRIO(_fn:(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; }, _fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>):Void {}
function _dupCloseOnExecOld(_fd:stdgo.GoInt):Void {}
function _accept(_s:stdgo.GoInt):Void {}
@:invalid typedef T_errNetClosing_asInterface = Dynamic;
@:invalid typedef T_errNetClosing_static_extension = Dynamic;
@:invalid typedef DeadlineExceededError_asInterface = Dynamic;
@:invalid typedef DeadlineExceededError_static_extension = Dynamic;
@:invalid typedef T_fdMutex_asInterface = Dynamic;
@:invalid typedef T_fdMutex_static_extension = Dynamic;
@:invalid typedef T_pollDesc_asInterface = Dynamic;
@:invalid typedef T_pollDesc_static_extension = Dynamic;
@:invalid typedef FD_asInterface = Dynamic;
@:invalid typedef FD_static_extension = Dynamic;
@:invalid typedef SysFile_asInterface = Dynamic;
@:invalid typedef SysFile_static_extension = Dynamic;
