package stdgo.internal;
/**
    Package poll supports non-blocking I/O on file descriptors with polling.
    This supports I/O operations that block only a goroutine, not a thread.
    This is used by the net and os packages.
    It uses a poller built into the runtime, with support from the
    runtime scheduler.
**/
private var __go2hxdoc__package : Bool;
var errNetClosing(get, set) : stdgo._internal.internal.poll.Poll.T_errNetClosing;
private function get_errNetClosing():stdgo._internal.internal.poll.Poll.T_errNetClosing return stdgo._internal.internal.poll.Poll.errNetClosing;
private function set_errNetClosing(v:stdgo._internal.internal.poll.Poll.T_errNetClosing):stdgo._internal.internal.poll.Poll.T_errNetClosing return stdgo._internal.internal.poll.Poll.errNetClosing = v;
var errFileClosing(get, set) : stdgo.Error;
private function get_errFileClosing():stdgo.Error return stdgo._internal.internal.poll.Poll.errFileClosing;
private function set_errFileClosing(v:stdgo.Error):stdgo.Error return stdgo._internal.internal.poll.Poll.errFileClosing = v;
var errNoDeadline(get, set) : stdgo.Error;
private function get_errNoDeadline():stdgo.Error return stdgo._internal.internal.poll.Poll.errNoDeadline;
private function set_errNoDeadline(v:stdgo.Error):stdgo.Error return stdgo._internal.internal.poll.Poll.errNoDeadline = v;
var errDeadlineExceeded(get, set) : stdgo.Error;
private function get_errDeadlineExceeded():stdgo.Error return stdgo._internal.internal.poll.Poll.errDeadlineExceeded;
private function set_errDeadlineExceeded(v:stdgo.Error):stdgo.Error return stdgo._internal.internal.poll.Poll.errDeadlineExceeded = v;
var errNotPollable(get, set) : stdgo.Error;
private function get_errNotPollable():stdgo.Error return stdgo._internal.internal.poll.Poll.errNotPollable;
private function set_errNotPollable(v:stdgo.Error):stdgo.Error return stdgo._internal.internal.poll.Poll.errNotPollable = v;
var testHookDidWritev(get, set) : stdgo.GoInt -> Void;
private function get_testHookDidWritev():stdgo.GoInt -> Void return stdgo._internal.internal.poll.Poll.testHookDidWritev;
private function set_testHookDidWritev(v:stdgo.GoInt -> Void):stdgo.GoInt -> Void return stdgo._internal.internal.poll.Poll.testHookDidWritev = v;
var closeFunc(get, set) : stdgo.GoInt -> stdgo.Error;
private function get_closeFunc():stdgo.GoInt -> stdgo.Error return stdgo._internal.internal.poll.Poll.closeFunc;
private function set_closeFunc(v:stdgo.GoInt -> stdgo.Error):stdgo.GoInt -> stdgo.Error return stdgo._internal.internal.poll.Poll.closeFunc = v;
var acceptFunc(get, set) : stdgo.GoInt -> { var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall.Sockaddr; var _2 : stdgo.Error; };
private function get_acceptFunc():stdgo.GoInt -> { var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall.Sockaddr; var _2 : stdgo.Error; } return stdgo._internal.internal.poll.Poll.acceptFunc;
private function set_acceptFunc(v:stdgo.GoInt -> { var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall.Sockaddr; var _2 : stdgo.Error; }):stdgo.GoInt -> { var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall.Sockaddr; var _2 : stdgo.Error; } return stdgo._internal.internal.poll.Poll.acceptFunc = v;
@:forward @:forward.new abstract T_errNetClosing(stdgo._internal.internal.poll.Poll.T_errNetClosing) from stdgo._internal.internal.poll.Poll.T_errNetClosing to stdgo._internal.internal.poll.Poll.T_errNetClosing {

}
@:forward @:forward.new abstract DeadlineExceededError(stdgo._internal.internal.poll.Poll.DeadlineExceededError) from stdgo._internal.internal.poll.Poll.DeadlineExceededError to stdgo._internal.internal.poll.Poll.DeadlineExceededError {

}
@:forward @:forward.new abstract T_fdMutex(stdgo._internal.internal.poll.Poll.T_fdMutex) from stdgo._internal.internal.poll.Poll.T_fdMutex to stdgo._internal.internal.poll.Poll.T_fdMutex {

}
@:forward @:forward.new abstract T_pollDesc(stdgo._internal.internal.poll.Poll.T_pollDesc) from stdgo._internal.internal.poll.Poll.T_pollDesc to stdgo._internal.internal.poll.Poll.T_pollDesc {

}
@:forward @:forward.new abstract FD(stdgo._internal.internal.poll.Poll.FD) from stdgo._internal.internal.poll.Poll.FD to stdgo._internal.internal.poll.Poll.FD {

}
@:forward @:forward.new abstract SysFile(stdgo._internal.internal.poll.Poll.SysFile) from stdgo._internal.internal.poll.Poll.SysFile to stdgo._internal.internal.poll.Poll.SysFile {

}
@:forward @:forward.new abstract T_errNetClosing_asInterface(stdgo._internal.internal.poll.Poll.T_errNetClosing_asInterface) from stdgo._internal.internal.poll.Poll.T_errNetClosing_asInterface to stdgo._internal.internal.poll.Poll.T_errNetClosing_asInterface {

}
@:forward @:forward.new abstract T_errNetClosing_static_extension(stdgo._internal.internal.poll.Poll.T_errNetClosing_static_extension) from stdgo._internal.internal.poll.Poll.T_errNetClosing_static_extension to stdgo._internal.internal.poll.Poll.T_errNetClosing_static_extension {

}
@:forward @:forward.new abstract DeadlineExceededError_asInterface(stdgo._internal.internal.poll.Poll.DeadlineExceededError_asInterface) from stdgo._internal.internal.poll.Poll.DeadlineExceededError_asInterface to stdgo._internal.internal.poll.Poll.DeadlineExceededError_asInterface {

}
@:forward @:forward.new abstract DeadlineExceededError_static_extension(stdgo._internal.internal.poll.Poll.DeadlineExceededError_static_extension) from stdgo._internal.internal.poll.Poll.DeadlineExceededError_static_extension to stdgo._internal.internal.poll.Poll.DeadlineExceededError_static_extension {

}
@:forward @:forward.new abstract T_fdMutex_asInterface(stdgo._internal.internal.poll.Poll.T_fdMutex_asInterface) from stdgo._internal.internal.poll.Poll.T_fdMutex_asInterface to stdgo._internal.internal.poll.Poll.T_fdMutex_asInterface {

}
@:forward @:forward.new abstract T_fdMutex_static_extension(stdgo._internal.internal.poll.Poll.T_fdMutex_static_extension) from stdgo._internal.internal.poll.Poll.T_fdMutex_static_extension to stdgo._internal.internal.poll.Poll.T_fdMutex_static_extension {

}
@:forward @:forward.new abstract T_pollDesc_asInterface(stdgo._internal.internal.poll.Poll.T_pollDesc_asInterface) from stdgo._internal.internal.poll.Poll.T_pollDesc_asInterface to stdgo._internal.internal.poll.Poll.T_pollDesc_asInterface {

}
@:forward @:forward.new abstract T_pollDesc_static_extension(stdgo._internal.internal.poll.Poll.T_pollDesc_static_extension) from stdgo._internal.internal.poll.Poll.T_pollDesc_static_extension to stdgo._internal.internal.poll.Poll.T_pollDesc_static_extension {

}
@:forward @:forward.new abstract FD_asInterface(stdgo._internal.internal.poll.Poll.FD_asInterface) from stdgo._internal.internal.poll.Poll.FD_asInterface to stdgo._internal.internal.poll.Poll.FD_asInterface {

}
@:forward @:forward.new abstract FD_static_extension(stdgo._internal.internal.poll.Poll.FD_static_extension) from stdgo._internal.internal.poll.Poll.FD_static_extension to stdgo._internal.internal.poll.Poll.FD_static_extension {

}
@:forward @:forward.new abstract SysFile_asInterface(stdgo._internal.internal.poll.Poll.SysFile_asInterface) from stdgo._internal.internal.poll.Poll.SysFile_asInterface to stdgo._internal.internal.poll.Poll.SysFile_asInterface {

}
@:forward @:forward.new abstract SysFile_static_extension(stdgo._internal.internal.poll.Poll.SysFile_static_extension) from stdgo._internal.internal.poll.Poll.SysFile_static_extension to stdgo._internal.internal.poll.Poll.SysFile_static_extension {

}
class Poll {
    /**
        IsPollDescriptor reports whether fd is the descriptor being used by the poller.
        This is only used for testing.
    **/
    static public function isPollDescriptor(fd:stdgo.GoUIntptr):Bool {
        return stdgo._internal.internal.poll.Poll.isPollDescriptor(fd);
    }
    /**
        DupCloseOnExec dups fd and marks it close-on-exec.
    **/
    static public function dupCloseOnExec(fd:StdTypes.Int):stdgo.Tuple.Tuple3<StdTypes.Int, String, stdgo.Error> {
        return {
            final obj = stdgo._internal.internal.poll.Poll.dupCloseOnExec(fd);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
}
