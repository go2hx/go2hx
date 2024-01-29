package stdgo.internal.poll;
/**
    // Package poll supports non-blocking I/O on file descriptors with polling.
    // This supports I/O operations that block only a goroutine, not a thread.
    // This is used by the net and os packages.
    // It uses a poller built into the runtime, with support from the
    // runtime scheduler.
**/
private var __go2hxdoc__package : Bool;
var errNetClosing(get_errNetClosing, set_errNetClosing) : stdgo._internal.internal.poll.Poll.T_errNetClosing;
function get_errNetClosing():stdgo._internal.internal.poll.Poll.T_errNetClosing return stdgo._internal.internal.poll.Poll.errNetClosing;
function set_errNetClosing(v:stdgo._internal.internal.poll.Poll.T_errNetClosing):stdgo._internal.internal.poll.Poll.T_errNetClosing return stdgo._internal.internal.poll.Poll.errNetClosing = v;
var errFileClosing(get_errFileClosing, set_errFileClosing) : stdgo.Error;
function get_errFileClosing():stdgo.Error return stdgo._internal.internal.poll.Poll.errFileClosing;
function set_errFileClosing(v:stdgo.Error):stdgo.Error return stdgo._internal.internal.poll.Poll.errFileClosing = v;
var errNoDeadline(get_errNoDeadline, set_errNoDeadline) : stdgo.Error;
function get_errNoDeadline():stdgo.Error return stdgo._internal.internal.poll.Poll.errNoDeadline;
function set_errNoDeadline(v:stdgo.Error):stdgo.Error return stdgo._internal.internal.poll.Poll.errNoDeadline = v;
var errDeadlineExceeded(get_errDeadlineExceeded, set_errDeadlineExceeded) : stdgo.Error;
function get_errDeadlineExceeded():stdgo.Error return stdgo._internal.internal.poll.Poll.errDeadlineExceeded;
function set_errDeadlineExceeded(v:stdgo.Error):stdgo.Error return stdgo._internal.internal.poll.Poll.errDeadlineExceeded = v;
var errNotPollable(get_errNotPollable, set_errNotPollable) : stdgo.Error;
function get_errNotPollable():stdgo.Error return stdgo._internal.internal.poll.Poll.errNotPollable;
function set_errNotPollable(v:stdgo.Error):stdgo.Error return stdgo._internal.internal.poll.Poll.errNotPollable = v;
var testHookDidWritev(get_testHookDidWritev, set_testHookDidWritev) : stdgo.GoInt -> Void;
function get_testHookDidWritev():stdgo.GoInt -> Void return stdgo._internal.internal.poll.Poll.testHookDidWritev;
function set_testHookDidWritev(v:stdgo.GoInt -> Void):stdgo.GoInt -> Void return stdgo._internal.internal.poll.Poll.testHookDidWritev = v;
var closeFunc(get_closeFunc, set_closeFunc) : stdgo.GoInt -> stdgo.Error;
function get_closeFunc():stdgo.GoInt -> stdgo.Error return stdgo._internal.internal.poll.Poll.closeFunc;
function set_closeFunc(v:stdgo.GoInt -> stdgo.Error):stdgo.GoInt -> stdgo.Error return stdgo._internal.internal.poll.Poll.closeFunc = v;
var acceptFunc(get_acceptFunc, set_acceptFunc) : stdgo.GoInt -> { var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall.Sockaddr; var _2 : stdgo.Error; };
function get_acceptFunc():stdgo.GoInt -> { var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall.Sockaddr; var _2 : stdgo.Error; } return stdgo._internal.internal.poll.Poll.acceptFunc;
function set_acceptFunc(v:stdgo.GoInt -> { var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall.Sockaddr; var _2 : stdgo.Error; }):stdgo.GoInt -> { var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall.Sockaddr; var _2 : stdgo.Error; } return stdgo._internal.internal.poll.Poll.acceptFunc = v;
@:invalid typedef T_errNetClosing = Dynamic;
@:invalid typedef DeadlineExceededError = Dynamic;
@:invalid typedef T_fdMutex = Dynamic;
@:invalid typedef T_pollDesc = Dynamic;
@:invalid typedef FD = Dynamic;
@:invalid typedef SysFile = Dynamic;
/**
    // IsPollDescriptor reports whether fd is the descriptor being used by the poller.
    // This is only used for testing.
**/
inline function isPollDescriptor(fd:stdgo.GoUIntptr):Bool throw "not implemented";
/**
    // DupCloseOnExec dups fd and marks it close-on-exec.
**/
inline function dupCloseOnExec(fd:Int):stdgo.Tuple.Tuple3<Int, String, stdgo.Error> throw "not implemented";
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
