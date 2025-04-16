package stdgo.context;
var canceled(get, set) : stdgo.Error;
private function get_canceled():stdgo.Error return stdgo._internal.context.Context_canceled.canceled;
private function set_canceled(v:stdgo.Error):stdgo.Error {
        stdgo._internal.context.Context_canceled.canceled = v;
        return v;
    }
var deadlineExceeded(get, set) : stdgo.Error;
private function get_deadlineExceeded():stdgo.Error return stdgo._internal.context.Context_deadlineexceeded.deadlineExceeded;
private function set_deadlineExceeded(v:stdgo.Error):stdgo.Error {
        stdgo._internal.context.Context_deadlineexceeded.deadlineExceeded = v;
        return v;
    }
typedef Context_ = stdgo._internal.context.Context_context.Context;
typedef CancelFunc = stdgo._internal.context.Context_cancelfunc.CancelFunc;
typedef CancelCauseFunc = stdgo._internal.context.Context_cancelcausefunc.CancelCauseFunc;
typedef CancelFuncPointer = stdgo._internal.context.Context_cancelfuncpointer.CancelFuncPointer;
typedef CancelCauseFuncPointer = stdgo._internal.context.Context_cancelcausefuncpointer.CancelCauseFuncPointer;
/**
    * Package context defines the Context type, which carries deadlines,
    * cancellation signals, and other request-scoped values across API boundaries
    * and between processes.
    * 
    * Incoming requests to a server should create a [Context], and outgoing
    * calls to servers should accept a Context. The chain of function
    * calls between them must propagate the Context, optionally replacing
    * it with a derived Context created using [WithCancel], [WithDeadline],
    * [WithTimeout], or [WithValue]. When a Context is canceled, all
    * Contexts derived from it are also canceled.
    * 
    * The [WithCancel], [WithDeadline], and [WithTimeout] functions take a
    * Context (the parent) and return a derived Context (the child) and a
    * [CancelFunc]. Calling the CancelFunc cancels the child and its
    * children, removes the parent's reference to the child, and stops
    * any associated timers. Failing to call the CancelFunc leaks the
    * child and its children until the parent is canceled or the timer
    * fires. The go vet tool checks that CancelFuncs are used on all
    * control-flow paths.
    * 
    * The [WithCancelCause] function returns a [CancelCauseFunc], which
    * takes an error and records it as the cancellation cause. Calling
    * [Cause] on the canceled context or any of its children retrieves
    * the cause. If no cause is specified, Cause(ctx) returns the same
    * value as ctx.Err().
    * 
    * Programs that use Contexts should follow these rules to keep interfaces
    * consistent across packages and enable static analysis tools to check context
    * propagation:
    * 
    * Do not store Contexts inside a struct type; instead, pass a Context
    * explicitly to each function that needs it. The Context should be the first
    * parameter, typically named ctx:
    * 
    * 	func DoSomething(ctx context.Context, arg Arg) error {
    * 		// ... use ctx ...
    * 	}
    * 
    * Do not pass a nil [Context], even if a function permits it. Pass [context.TODO]
    * if you are unsure about which Context to use.
    * 
    * Use context Values only for request-scoped data that transits processes and
    * APIs, not for passing optional parameters to functions.
    * 
    * The same Context may be passed to functions running in different goroutines;
    * Contexts are safe for simultaneous use by multiple goroutines.
    * 
    * See https://blog.golang.org/context for example code for a server that uses
    * Contexts.
**/
class Context {
    /**
        * Background returns a non-nil, empty [Context]. It is never canceled, has no
        * values, and has no deadline. It is typically used by the main function,
        * initialization, and tests, and as the top-level Context for incoming
        * requests.
    **/
    static public inline function background():stdgo._internal.context.Context_context.Context return stdgo._internal.context.Context_background.background();
    /**
        * TODO returns a non-nil, empty [Context]. Code should use context.TODO when
        * it's unclear which Context to use or it is not yet available (because the
        * surrounding function has not yet been extended to accept a Context
        * parameter).
    **/
    static public inline function tODO():stdgo._internal.context.Context_context.Context return stdgo._internal.context.Context_todo.tODO();
    /**
        * WithCancel returns a copy of parent with a new Done channel. The returned
        * context's Done channel is closed when the returned cancel function is called
        * or when the parent context's Done channel is closed, whichever happens first.
        * 
        * Canceling this context releases resources associated with it, so code should
        * call cancel as soon as the operations running in this Context complete.
    **/
    static public inline function withCancel(_parent:Context_):{ var _0 : stdgo._internal.context.Context_context.Context; var _1 : stdgo._internal.context.Context_cancelfunc.CancelFunc; } return stdgo._internal.context.Context_withcancel.withCancel(_parent);
    /**
        * WithCancelCause behaves like [WithCancel] but returns a [CancelCauseFunc] instead of a [CancelFunc].
        * Calling cancel with a non-nil error (the "cause") records that error in ctx;
        * it can then be retrieved using Cause(ctx).
        * Calling cancel with nil sets the cause to Canceled.
        * 
        * Example use:
        * 
        * 	ctx, cancel := context.WithCancelCause(parent)
        * 	cancel(myError)
        * 	ctx.Err() // returns context.Canceled
        * 	context.Cause(ctx) // returns myError
    **/
    static public inline function withCancelCause(_parent:Context_):{ var _0 : stdgo._internal.context.Context_context.Context; var _1 : stdgo._internal.context.Context_cancelcausefunc.CancelCauseFunc; } return stdgo._internal.context.Context_withcancelcause.withCancelCause(_parent);
    /**
        * Cause returns a non-nil error explaining why c was canceled.
        * The first cancellation of c or one of its parents sets the cause.
        * If that cancellation happened via a call to CancelCauseFunc(err),
        * then [Cause] returns err.
        * Otherwise Cause(c) returns the same value as c.Err().
        * Cause returns nil if c has not been canceled yet.
    **/
    static public inline function cause(_c:Context_):stdgo.Error return stdgo._internal.context.Context_cause.cause(_c);
    /**
        * AfterFunc arranges to call f in its own goroutine after ctx is done
        * (cancelled or timed out).
        * If ctx is already done, AfterFunc calls f immediately in its own goroutine.
        * 
        * Multiple calls to AfterFunc on a context operate independently;
        * one does not replace another.
        * 
        * Calling the returned stop function stops the association of ctx with f.
        * It returns true if the call stopped f from being run.
        * If stop returns false,
        * either the context is done and f has been started in its own goroutine;
        * or f was already stopped.
        * The stop function does not wait for f to complete before returning.
        * If the caller needs to know whether f is completed,
        * it must coordinate with f explicitly.
        * 
        * If ctx has a "AfterFunc(func()) func() bool" method,
        * AfterFunc will use it to schedule the call.
    **/
    static public inline function afterFunc(_ctx:Context_, _f:() -> Void):() -> Bool return stdgo._internal.context.Context_afterfunc.afterFunc(_ctx, _f);
    /**
        * WithoutCancel returns a copy of parent that is not canceled when parent is canceled.
        * The returned context returns no Deadline or Err, and its Done channel is nil.
        * Calling [Cause] on the returned context returns nil.
    **/
    static public inline function withoutCancel(_parent:Context_):stdgo._internal.context.Context_context.Context return stdgo._internal.context.Context_withoutcancel.withoutCancel(_parent);
    /**
        * WithDeadline returns a copy of the parent context with the deadline adjusted
        * to be no later than d. If the parent's deadline is already earlier than d,
        * WithDeadline(parent, d) is semantically equivalent to parent. The returned
        * [Context.Done] channel is closed when the deadline expires, when the returned
        * cancel function is called, or when the parent context's Done channel is
        * closed, whichever happens first.
        * 
        * Canceling this context releases resources associated with it, so code should
        * call cancel as soon as the operations running in this [Context] complete.
    **/
    static public inline function withDeadline(_parent:Context_, _d:stdgo._internal.time.Time_time.Time):{ var _0 : stdgo._internal.context.Context_context.Context; var _1 : stdgo._internal.context.Context_cancelfunc.CancelFunc; } return stdgo._internal.context.Context_withdeadline.withDeadline(_parent, _d);
    /**
        * WithDeadlineCause behaves like [WithDeadline] but also sets the cause of the
        * returned Context when the deadline is exceeded. The returned [CancelFunc] does
        * not set the cause.
    **/
    static public inline function withDeadlineCause(_parent:Context_, _d:stdgo._internal.time.Time_time.Time, _cause:stdgo.Error):{ var _0 : stdgo._internal.context.Context_context.Context; var _1 : stdgo._internal.context.Context_cancelfunc.CancelFunc; } return stdgo._internal.context.Context_withdeadlinecause.withDeadlineCause(_parent, _d, _cause);
    /**
        * WithTimeout returns WithDeadline(parent, time.Now().Add(timeout)).
        * 
        * Canceling this context releases resources associated with it, so code should
        * call cancel as soon as the operations running in this [Context] complete:
        * 
        * 	func slowOperationWithTimeout(ctx context.Context) (Result, error) {
        * 		ctx, cancel := context.WithTimeout(ctx, 100*time.Millisecond)
        * 		defer cancel()  // releases resources if slowOperation completes before timeout elapses
        * 		return slowOperation(ctx)
        * 	}
    **/
    static public inline function withTimeout(_parent:Context_, _timeout:stdgo._internal.time.Time_duration.Duration):{ var _0 : stdgo._internal.context.Context_context.Context; var _1 : stdgo._internal.context.Context_cancelfunc.CancelFunc; } return stdgo._internal.context.Context_withtimeout.withTimeout(_parent, _timeout);
    /**
        * WithTimeoutCause behaves like [WithTimeout] but also sets the cause of the
        * returned Context when the timeout expires. The returned [CancelFunc] does
        * not set the cause.
    **/
    static public inline function withTimeoutCause(_parent:Context_, _timeout:stdgo._internal.time.Time_duration.Duration, _cause:stdgo.Error):{ var _0 : stdgo._internal.context.Context_context.Context; var _1 : stdgo._internal.context.Context_cancelfunc.CancelFunc; } return stdgo._internal.context.Context_withtimeoutcause.withTimeoutCause(_parent, _timeout, _cause);
    /**
        * WithValue returns a copy of parent in which the value associated with key is
        * val.
        * 
        * Use context Values only for request-scoped data that transits processes and
        * APIs, not for passing optional parameters to functions.
        * 
        * The provided key must be comparable and should not be of type
        * string or any other built-in type to avoid collisions between
        * packages using context. Users of WithValue should define their own
        * types for keys. To avoid allocating when assigning to an
        * interface{}, context keys often have concrete type
        * struct{}. Alternatively, exported context key variables' static
        * type should be a pointer or interface.
    **/
    static public inline function withValue(_parent:Context_, _key:stdgo.AnyInterface, _val:stdgo.AnyInterface):stdgo._internal.context.Context_context.Context return stdgo._internal.context.Context_withvalue.withValue(_parent, _key, _val);
    static public inline function xTestParentFinishesChild(_t:stdgo._internal.context.Context_t_testingt.T_testingT):Void stdgo._internal.context.Context_xtestparentfinisheschild.xTestParentFinishesChild(_t);
    static public inline function xTestChildFinishesFirst(_t:stdgo._internal.context.Context_t_testingt.T_testingT):Void stdgo._internal.context.Context_xtestchildfinishesfirst.xTestChildFinishesFirst(_t);
    static public inline function xTestCancelRemoves(_t:stdgo._internal.context.Context_t_testingt.T_testingT):Void stdgo._internal.context.Context_xtestcancelremoves.xTestCancelRemoves(_t);
    static public inline function xTestCustomContextGoroutines(_t:stdgo._internal.context.Context_t_testingt.T_testingT):Void stdgo._internal.context.Context_xtestcustomcontextgoroutines.xTestCustomContextGoroutines(_t);
}
