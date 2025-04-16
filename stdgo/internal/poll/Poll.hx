package stdgo.internal.poll;
var errNetClosing(get, set) : stdgo._internal.internal.poll.Poll_t_errnetclosing.T_errNetClosing;
private function get_errNetClosing():stdgo._internal.internal.poll.Poll_t_errnetclosing.T_errNetClosing return stdgo._internal.internal.poll.Poll_errnetclosing.errNetClosing;
private function set_errNetClosing(v:stdgo._internal.internal.poll.Poll_t_errnetclosing.T_errNetClosing):stdgo._internal.internal.poll.Poll_t_errnetclosing.T_errNetClosing {
        stdgo._internal.internal.poll.Poll_errnetclosing.errNetClosing = v;
        return v;
    }
var errFileClosing(get, set) : stdgo.Error;
private function get_errFileClosing():stdgo.Error return stdgo._internal.internal.poll.Poll_errfileclosing.errFileClosing;
private function set_errFileClosing(v:stdgo.Error):stdgo.Error {
        stdgo._internal.internal.poll.Poll_errfileclosing.errFileClosing = v;
        return v;
    }
var errNoDeadline(get, set) : stdgo.Error;
private function get_errNoDeadline():stdgo.Error return stdgo._internal.internal.poll.Poll_errnodeadline.errNoDeadline;
private function set_errNoDeadline(v:stdgo.Error):stdgo.Error {
        stdgo._internal.internal.poll.Poll_errnodeadline.errNoDeadline = v;
        return v;
    }
var errDeadlineExceeded(get, set) : stdgo.Error;
private function get_errDeadlineExceeded():stdgo.Error return stdgo._internal.internal.poll.Poll_errdeadlineexceeded.errDeadlineExceeded;
private function set_errDeadlineExceeded(v:stdgo.Error):stdgo.Error {
        stdgo._internal.internal.poll.Poll_errdeadlineexceeded.errDeadlineExceeded = v;
        return v;
    }
var errNotPollable(get, set) : stdgo.Error;
private function get_errNotPollable():stdgo.Error return stdgo._internal.internal.poll.Poll_errnotpollable.errNotPollable;
private function set_errNotPollable(v:stdgo.Error):stdgo.Error {
        stdgo._internal.internal.poll.Poll_errnotpollable.errNotPollable = v;
        return v;
    }
var testHookDidWritev(get, set) : stdgo.GoInt -> Void;
private function get_testHookDidWritev():stdgo.GoInt -> Void return stdgo._internal.internal.poll.Poll_testhookdidwritev.testHookDidWritev;
private function set_testHookDidWritev(v:stdgo.GoInt -> Void):stdgo.GoInt -> Void {
        stdgo._internal.internal.poll.Poll_testhookdidwritev.testHookDidWritev = v;
        return v;
    }
var closeFunc(get, set) : stdgo.GoInt -> stdgo.Error;
private function get_closeFunc():stdgo.GoInt -> stdgo.Error return stdgo._internal.internal.poll.Poll_closefunc.closeFunc;
private function set_closeFunc(v:stdgo.GoInt -> stdgo.Error):stdgo.GoInt -> stdgo.Error {
        stdgo._internal.internal.poll.Poll_closefunc.closeFunc = v;
        return v;
    }
var acceptFunc(get, set) : stdgo.GoInt -> stdgo.Tuple.Tuple3<stdgo.GoInt, stdgo._internal.syscall.Syscall_sockaddr.Sockaddr, stdgo.Error>;
private function get_acceptFunc():stdgo.GoInt -> stdgo.Tuple.Tuple3<stdgo.GoInt, stdgo._internal.syscall.Syscall_sockaddr.Sockaddr, stdgo.Error> return stdgo._internal.internal.poll.Poll_acceptfunc.acceptFunc;
private function set_acceptFunc(v:stdgo.GoInt -> stdgo.Tuple.Tuple3<stdgo.GoInt, stdgo._internal.syscall.Syscall_sockaddr.Sockaddr, stdgo.Error>):stdgo.GoInt -> { var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _2 : stdgo.Error; } {
        stdgo._internal.internal.poll.Poll_acceptfunc.acceptFunc = v;
        return v;
    }
var consume(get, set) : (stdgo.Ref<stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>>, stdgo.GoInt64) -> Void;
private function get_consume():(stdgo.Ref<stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>>, stdgo.GoInt64) -> Void return stdgo._internal.internal.poll.Poll_consume.consume;
private function set_consume(v:(stdgo.Ref<stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>>, stdgo.GoInt64) -> Void):(stdgo.Ref<stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>>, stdgo.GoInt64) -> Void {
        stdgo._internal.internal.poll.Poll_consume.consume = v;
        return v;
    }
typedef XFDMutex = stdgo._internal.internal.poll.Poll_xfdmutex.XFDMutex;
typedef DeadlineExceededError = stdgo._internal.internal.poll.Poll_deadlineexceedederror.DeadlineExceededError;
typedef FD = stdgo._internal.internal.poll.Poll_fd.FD;
typedef SysFile = stdgo._internal.internal.poll.Poll_sysfile.SysFile;
typedef XFDMutexPointer = stdgo._internal.internal.poll.Poll_xfdmutexpointer.XFDMutexPointer;
typedef DeadlineExceededErrorPointer = stdgo._internal.internal.poll.Poll_deadlineexceedederrorpointer.DeadlineExceededErrorPointer;
typedef FDPointer = stdgo._internal.internal.poll.Poll_fdpointer.FDPointer;
typedef SysFilePointer = stdgo._internal.internal.poll.Poll_sysfilepointer.SysFilePointer;
/**
    * Package poll supports non-blocking I/O on file descriptors with polling.
    * This supports I/O operations that block only a goroutine, not a thread.
    * This is used by the net and os packages.
    * It uses a poller built into the runtime, with support from the
    * runtime scheduler.
**/
class Poll {
    /**
        * IsPollDescriptor reports whether fd is the descriptor being used by the poller.
        * This is only used for testing.
    **/
    static public inline function isPollDescriptor(_fd:stdgo.GoUIntptr):Bool return stdgo._internal.internal.poll.Poll_ispolldescriptor.isPollDescriptor(_fd);
    /**
        * DupCloseOnExec dups fd and marks it close-on-exec.
    **/
    static public inline function dupCloseOnExec(_fd:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return stdgo._internal.internal.poll.Poll_dupcloseonexec.dupCloseOnExec(_fd);
}
