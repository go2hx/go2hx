package stdgo.context;
/**
    // Package context defines the Context type, which carries deadlines,
    // cancellation signals, and other request-scoped values across API boundaries
    // and between processes.
    //
    // Incoming requests to a server should create a [Context], and outgoing
    // calls to servers should accept a Context. The chain of function
    // calls between them must propagate the Context, optionally replacing
    // it with a derived Context created using [WithCancel], [WithDeadline],
    // [WithTimeout], or [WithValue]. When a Context is canceled, all
    // Contexts derived from it are also canceled.
    //
    // The [WithCancel], [WithDeadline], and [WithTimeout] functions take a
    // Context (the parent) and return a derived Context (the child) and a
    // [CancelFunc]. Calling the CancelFunc cancels the child and its
    // children, removes the parent's reference to the child, and stops
    // any associated timers. Failing to call the CancelFunc leaks the
    // child and its children until the parent is canceled or the timer
    // fires. The go vet tool checks that CancelFuncs are used on all
    // control-flow paths.
    //
    // The [WithCancelCause] function returns a [CancelCauseFunc], which
    // takes an error and records it as the cancellation cause. Calling
    // [Cause] on the canceled context or any of its children retrieves
    // the cause. If no cause is specified, Cause(ctx) returns the same
    // value as ctx.Err().
    //
    // Programs that use Contexts should follow these rules to keep interfaces
    // consistent across packages and enable static analysis tools to check context
    // propagation:
    //
    // Do not store Contexts inside a struct type; instead, pass a Context
    // explicitly to each function that needs it. The Context should be the first
    // parameter, typically named ctx:
    //
    //	func DoSomething(ctx context.Context, arg Arg) error {
    //		// ... use ctx ...
    //	}
    //
    // Do not pass a nil [Context], even if a function permits it. Pass [context.TODO]
    // if you are unsure about which Context to use.
    //
    // Use context Values only for request-scoped data that transits processes and
    // APIs, not for passing optional parameters to functions.
    //
    // The same Context may be passed to functions running in different goroutines;
    // Contexts are safe for simultaneous use by multiple goroutines.
    //
    // See https://blog.golang.org/context for example code for a server that uses
    // Contexts.
**/
private var __go2hxdoc__package : Bool;
/**
    // Canceled is the error returned by [Context.Err] when the context is canceled.
    
    
**/
var canceled : stdgo.Error = (null : stdgo.Error);
/**
    // DeadlineExceeded is the error returned by [Context.Err] when the context's
    // deadline passes.
    
    
**/
var deadlineExceeded : stdgo.Error = (null : stdgo.Error);
/**
    // closedchan is a reusable closed channel.
    
    
**/
var _closedchan : stdgo.Chan<T_deadlineExceededError> = (null : stdgo.Chan<T_deadlineExceededError>);
/**
    // goroutines counts the number of goroutines ever created; for testing.
    
    
**/
var _goroutines : stdgo.sync.atomic_.Atomic_.Int32 = ({} : stdgo.sync.atomic_.Atomic_.Int32);
/**
    // &cancelCtxKey is the key that a cancelCtx returns itself for.
    
    
**/
var _cancelCtxKey : stdgo.GoInt = (0 : stdgo.GoInt);
/**
    // A Context carries a deadline, a cancellation signal, and other values across
    // API boundaries.
    //
    // Context's methods may be called by multiple goroutines simultaneously.
    
    
**/
typedef Context = stdgo.StructType & {
    /**
        // Deadline returns the time when work done on behalf of this context
        // should be canceled. Deadline returns ok==false when no deadline is
        // set. Successive calls to Deadline return the same results.
        
        
    **/
    public dynamic function deadline():{ var _0 : stdgo.time.Time.Time; var _1 : Bool; };
    /**
        // Done returns a channel that's closed when work done on behalf of this
        // context should be canceled. Done may return nil if this context can
        // never be canceled. Successive calls to Done return the same value.
        // The close of the Done channel may happen asynchronously,
        // after the cancel function returns.
        //
        // WithCancel arranges for Done to be closed when cancel is called;
        // WithDeadline arranges for Done to be closed when the deadline
        // expires; WithTimeout arranges for Done to be closed when the timeout
        // elapses.
        //
        // Done is provided for use in select statements:
        //
        //  // Stream generates values with DoSomething and sends them to out
        //  // until DoSomething returns an error or ctx.Done is closed.
        //  func Stream(ctx context.Context, out chan<- Value) error {
        //  	for {
        //  		v, err := DoSomething(ctx)
        //  		if err != nil {
        //  			return err
        //  		}
        //  		select {
        //  		case <-ctx.Done():
        //  			return ctx.Err()
        //  		case out <- v:
        //  		}
        //  	}
        //  }
        //
        // See https://blog.golang.org/pipelines for more examples of how to use
        // a Done channel for cancellation.
        
        
    **/
    public dynamic function done():stdgo.Chan<T__struct_0>;
    /**
        // If Done is not yet closed, Err returns nil.
        // If Done is closed, Err returns a non-nil error explaining why:
        // Canceled if the context was canceled
        // or DeadlineExceeded if the context's deadline passed.
        // After Err returns a non-nil error, successive calls to Err return the same error.
        
        
    **/
    public dynamic function err():stdgo.Error;
    /**
        // Value returns the value associated with this context for key, or nil
        // if no value is associated with key. Successive calls to Value with
        // the same key returns the same result.
        //
        // Use context values only for request-scoped data that transits
        // processes and API boundaries, not for passing optional parameters to
        // functions.
        //
        // A key identifies a specific value in a Context. Functions that wish
        // to store values in Context typically allocate a key in a global
        // variable then use that key as the argument to context.WithValue and
        // Context.Value. A key can be any type that supports equality;
        // packages should define keys as an unexported type to avoid
        // collisions.
        //
        // Packages that define a Context key should provide type-safe accessors
        // for the values stored using that key:
        //
        // 	// Package user defines a User type that's stored in Contexts.
        // 	package user
        //
        // 	import "context"
        //
        // 	// User is the type of value stored in the Contexts.
        // 	type User struct {...}
        //
        // 	// key is an unexported type for keys defined in this package.
        // 	// This prevents collisions with keys defined in other packages.
        // 	type key int
        //
        // 	// userKey is the key for user.User values in Contexts. It is
        // 	// unexported; clients use user.NewContext and user.FromContext
        // 	// instead of using this key directly.
        // 	var userKey key
        //
        // 	// NewContext returns a new Context that carries value u.
        // 	func NewContext(ctx context.Context, u *User) context.Context {
        // 		return context.WithValue(ctx, userKey, u)
        // 	}
        //
        // 	// FromContext returns the User value stored in ctx, if any.
        // 	func FromContext(ctx context.Context) (*User, bool) {
        // 		u, ok := ctx.Value(userKey).(*User)
        // 		return u, ok
        // 	}
        
        
    **/
    public dynamic function value(_key:stdgo.AnyInterface):stdgo.AnyInterface;
};
/**
    
    
    
**/
typedef T_afterFuncer = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function afterFunc(_0:() -> Void):() -> Bool;
};
/**
    // A canceler is a context type that can be canceled directly. The
    // implementations are *cancelCtx and *timerCtx.
    
    
**/
typedef T_canceler = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function _cancel(_removeFromParent:Bool, _err:stdgo.Error, _cause:stdgo.Error):Void;
    /**
        
        
        
    **/
    public dynamic function done():stdgo.Chan<T__struct_0>;
};
/**
    
    
    
**/
typedef T_stringer = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function string():stdgo.GoString;
};
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.context.Context.T_deadlineExceededError_static_extension) class T_deadlineExceededError {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_deadlineExceededError();
    }
}
/**
    // An emptyCtx is never canceled, has no values, and has no deadline.
    // It is the common base of backgroundCtx and todoCtx.
    
    
**/
@:structInit @:private @:using(stdgo.context.Context.T_emptyCtx_static_extension) class T_emptyCtx {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_emptyCtx();
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.context.Context.T_backgroundCtx_static_extension) class T_backgroundCtx {
    @:embedded
    public var _emptyCtx : stdgo.context.Context.T_emptyCtx = ({} : stdgo.context.Context.T_emptyCtx);
    public function new(?_emptyCtx:stdgo.context.Context.T_emptyCtx) {
        if (_emptyCtx != null) this._emptyCtx = _emptyCtx;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function deadline():{ var _0 : stdgo.time.Time.Time; var _1 : Bool; } return @:typeType null;
    @:embedded
    public function done():stdgo.Chan<T_deadlineExceededError> return (null : stdgo.Chan<T_deadlineExceededError>);
    @:embedded
    public function err():stdgo.Error return (null : stdgo.Error);
    @:embedded
    public function value(_key_:stdgo.AnyInterface):stdgo.AnyInterface return (null : stdgo.AnyInterface);
    public function __copy__() {
        return new T_backgroundCtx(_emptyCtx);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.context.Context.T_todoCtx_static_extension) class T_todoCtx {
    @:embedded
    public var _emptyCtx : stdgo.context.Context.T_emptyCtx = ({} : stdgo.context.Context.T_emptyCtx);
    public function new(?_emptyCtx:stdgo.context.Context.T_emptyCtx) {
        if (_emptyCtx != null) this._emptyCtx = _emptyCtx;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function deadline():{ var _0 : stdgo.time.Time.Time; var _1 : Bool; } return @:typeType null;
    @:embedded
    public function done():stdgo.Chan<T_deadlineExceededError> return (null : stdgo.Chan<T_deadlineExceededError>);
    @:embedded
    public function err():stdgo.Error return (null : stdgo.Error);
    @:embedded
    public function value(_key_:stdgo.AnyInterface):stdgo.AnyInterface return (null : stdgo.AnyInterface);
    public function __copy__() {
        return new T_todoCtx(_emptyCtx);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.context.Context.T_afterFuncCtx_static_extension) class T_afterFuncCtx {
    @:embedded
    public var _cancelCtx : stdgo.context.Context.T_cancelCtx = ({} : stdgo.context.Context.T_cancelCtx);
    public var _once : stdgo.sync.Sync.Once = ({} : stdgo.sync.Sync.Once);
    public var _f : () -> Void = null;
    public function new(?_cancelCtx:stdgo.context.Context.T_cancelCtx, ?_once:stdgo.sync.Sync.Once, ?_f:() -> Void) {
        if (_cancelCtx != null) this._cancelCtx = _cancelCtx;
        if (_once != null) this._once = _once;
        if (_f != null) this._f = _f;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function deadline():{ var _0 : stdgo.time.Time.Time; var _1 : Bool; } return @:typeType null;
    @:embedded
    public function done():stdgo.Chan<T_deadlineExceededError> return (null : stdgo.Chan<T_deadlineExceededError>);
    @:embedded
    public function err():stdgo.Error return (null : stdgo.Error);
    @:embedded
    public function string():stdgo.GoString return ("" : stdgo.GoString);
    @:embedded
    public function value(_key_:stdgo.AnyInterface):stdgo.AnyInterface return (null : stdgo.AnyInterface);
    @:embedded
    public function _propagateCancel(_parent:stdgo.context.Context.Context, _child:stdgo.context.Context.T_canceler) @:typeType null;
    public function __copy__() {
        return new T_afterFuncCtx(_cancelCtx, _once, _f);
    }
}
/**
    // A stopCtx is used as the parent context of a cancelCtx when
    // an AfterFunc has been registered with the parent.
    // It holds the stop function used to unregister the AfterFunc.
    
    
**/
@:structInit @:private @:using(stdgo.context.Context.T_stopCtx_static_extension) class T_stopCtx {
    @:embedded
    public var context : stdgo.context.Context.Context = (null : stdgo.context.Context.Context);
    public var _stop : () -> Bool = null;
    public function new(?context:stdgo.context.Context.Context, ?_stop:() -> Bool) {
        if (context != null) this.context = context;
        if (_stop != null) this._stop = _stop;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function deadline():{ var _0 : stdgo.time.Time.Time; var _1 : Bool; } return @:typeType null;
    @:embedded
    public function done():stdgo.Chan<T_deadlineExceededError> return (null : stdgo.Chan<T_deadlineExceededError>);
    @:embedded
    public function err():stdgo.Error return (null : stdgo.Error);
    @:embedded
    public function value(_key_:stdgo.AnyInterface):stdgo.AnyInterface return (null : stdgo.AnyInterface);
    public function __copy__() {
        return new T_stopCtx(context, _stop);
    }
}
/**
    // A cancelCtx can be canceled. When canceled, it also cancels any children
    // that implement canceler.
    
    
**/
@:structInit @:private @:using(stdgo.context.Context.T_cancelCtx_static_extension) class T_cancelCtx {
    @:embedded
    public var context : stdgo.context.Context.Context = (null : stdgo.context.Context.Context);
    public var _mu : stdgo.sync.Sync.Mutex = ({} : stdgo.sync.Sync.Mutex);
    public var _done : stdgo.sync.atomic_.Atomic_.Value = ({} : stdgo.sync.atomic_.Atomic_.Value);
    public var _children : stdgo.GoMap<stdgo.context.Context.T_canceler, T_deadlineExceededError> = (null : stdgo.GoMap<stdgo.context.Context.T_canceler, T_deadlineExceededError>);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _cause : stdgo.Error = (null : stdgo.Error);
    public function new(?context:stdgo.context.Context.Context, ?_mu:stdgo.sync.Sync.Mutex, ?_done:stdgo.sync.atomic_.Atomic_.Value, ?_children:stdgo.GoMap<stdgo.context.Context.T_canceler, T_deadlineExceededError>, ?_err:stdgo.Error, ?_cause:stdgo.Error) {
        if (context != null) this.context = context;
        if (_mu != null) this._mu = _mu;
        if (_done != null) this._done = _done;
        if (_children != null) this._children = _children;
        if (_err != null) this._err = _err;
        if (_cause != null) this._cause = _cause;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function deadline():{ var _0 : stdgo.time.Time.Time; var _1 : Bool; } return @:typeType null;
    public function __copy__() {
        return new T_cancelCtx(context, _mu, _done, _children, _err, _cause);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.context.Context.T_withoutCancelCtx_static_extension) class T_withoutCancelCtx {
    public var _c : stdgo.context.Context.Context = (null : stdgo.context.Context.Context);
    public function new(?_c:stdgo.context.Context.Context) {
        if (_c != null) this._c = _c;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_withoutCancelCtx(_c);
    }
}
/**
    // A timerCtx carries a timer and a deadline. It embeds a cancelCtx to
    // implement Done and Err. It implements cancel by stopping its timer then
    // delegating to cancelCtx.cancel.
    
    
**/
@:structInit @:private @:using(stdgo.context.Context.T_timerCtx_static_extension) class T_timerCtx {
    @:embedded
    public var _cancelCtx : stdgo.context.Context.T_cancelCtx = ({} : stdgo.context.Context.T_cancelCtx);
    public var _timer : stdgo.Ref<stdgo.time.Time.Timer> = (null : stdgo.Ref<stdgo.time.Time.Timer>);
    public var _deadline : stdgo.time.Time.Time = ({} : stdgo.time.Time.Time);
    public function new(?_cancelCtx:stdgo.context.Context.T_cancelCtx, ?_timer:stdgo.Ref<stdgo.time.Time.Timer>, ?_deadline:stdgo.time.Time.Time) {
        if (_cancelCtx != null) this._cancelCtx = _cancelCtx;
        if (_timer != null) this._timer = _timer;
        if (_deadline != null) this._deadline = _deadline;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function done():stdgo.Chan<T_deadlineExceededError> return (null : stdgo.Chan<T_deadlineExceededError>);
    @:embedded
    public function err():stdgo.Error return (null : stdgo.Error);
    @:embedded
    public function value(_key_:stdgo.AnyInterface):stdgo.AnyInterface return (null : stdgo.AnyInterface);
    @:embedded
    public function _propagateCancel(_parent:stdgo.context.Context.Context, _child:stdgo.context.Context.T_canceler) @:typeType null;
    public function __copy__() {
        return new T_timerCtx(_cancelCtx, _timer, _deadline);
    }
}
/**
    // A valueCtx carries a key-value pair. It implements Value for that key and
    // delegates all other calls to the embedded Context.
    
    
**/
@:structInit @:private @:using(stdgo.context.Context.T_valueCtx_static_extension) class T_valueCtx {
    @:embedded
    public var context : stdgo.context.Context.Context = (null : stdgo.context.Context.Context);
    public var _key : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _val : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?context:stdgo.context.Context.Context, ?_key:stdgo.AnyInterface, ?_val:stdgo.AnyInterface) {
        if (context != null) this.context = context;
        if (_key != null) this._key = _key;
        if (_val != null) this._val = _val;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function deadline():{ var _0 : stdgo.time.Time.Time; var _1 : Bool; } return @:typeType null;
    @:embedded
    public function done():stdgo.Chan<T_deadlineExceededError> return (null : stdgo.Chan<T_deadlineExceededError>);
    @:embedded
    public function err():stdgo.Error return (null : stdgo.Error);
    public function __copy__() {
        return new T_valueCtx(context, _key, _val);
    }
}
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.context.Context.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo.context.Context.T__struct_0_static_extension) typedef T__struct_0 = {};
/**
    // A CancelFunc tells an operation to abandon its work.
    // A CancelFunc does not wait for the work to stop.
    // A CancelFunc may be called by multiple goroutines simultaneously.
    // After the first call, subsequent calls to a CancelFunc do nothing.
**/
@:named typedef CancelFunc = () -> Void;
/**
    // A CancelCauseFunc behaves like a [CancelFunc] but additionally sets the cancellation cause.
    // This cause can be retrieved by calling [Cause] on the canceled Context or on
    // any of its derived Contexts.
    //
    // If the context has already been canceled, CancelCauseFunc does not set the cause.
    // For example, if childContext is derived from parentContext:
    //   - if parentContext is canceled with cause1 before childContext is canceled with cause2,
    //     then Cause(parentContext) == Cause(childContext) == cause1
    //   - if childContext is canceled with cause2 before parentContext is canceled with cause1,
    //     then Cause(parentContext) == cause1 and Cause(childContext) == cause2
**/
@:named typedef CancelCauseFunc = stdgo.Error -> Void;
/**
    // Background returns a non-nil, empty [Context]. It is never canceled, has no
    // values, and has no deadline. It is typically used by the main function,
    // initialization, and tests, and as the top-level Context for incoming
    // requests.
**/
function background():Context throw ":context.background is not yet implemented";
/**
    // TODO returns a non-nil, empty [Context]. Code should use context.TODO when
    // it's unclear which Context to use or it is not yet available (because the
    // surrounding function has not yet been extended to accept a Context
    // parameter).
**/
function todo():Context throw ":context.todo is not yet implemented";
/**
    // WithCancel returns a copy of parent with a new Done channel. The returned
    // context's Done channel is closed when the returned cancel function is called
    // or when the parent context's Done channel is closed, whichever happens first.
    //
    // Canceling this context releases resources associated with it, so code should
    // call cancel as soon as the operations running in this Context complete.
**/
function withCancel(_parent:Context):{ var _0 : Context; var _1 : CancelFunc; } throw ":context.withCancel is not yet implemented";
/**
    // WithCancelCause behaves like [WithCancel] but returns a [CancelCauseFunc] instead of a [CancelFunc].
    // Calling cancel with a non-nil error (the "cause") records that error in ctx;
    // it can then be retrieved using Cause(ctx).
    // Calling cancel with nil sets the cause to Canceled.
    //
    // Example use:
    //
    //	ctx, cancel := context.WithCancelCause(parent)
    //	cancel(myError)
    //	ctx.Err() // returns context.Canceled
    //	context.Cause(ctx) // returns myError
**/
function withCancelCause(_parent:Context):{ var _0 : Context; var _1 : CancelCauseFunc; } throw ":context.withCancelCause is not yet implemented";
function _withCancel(_parent:Context):stdgo.Ref<T_cancelCtx> throw ":context._withCancel is not yet implemented";
/**
    // Cause returns a non-nil error explaining why c was canceled.
    // The first cancellation of c or one of its parents sets the cause.
    // If that cancellation happened via a call to CancelCauseFunc(err),
    // then [Cause] returns err.
    // Otherwise Cause(c) returns the same value as c.Err().
    // Cause returns nil if c has not been canceled yet.
**/
function cause(_c:Context):stdgo.Error throw ":context.cause is not yet implemented";
/**
    // AfterFunc arranges to call f in its own goroutine after ctx is done
    // (cancelled or timed out).
    // If ctx is already done, AfterFunc calls f immediately in its own goroutine.
    //
    // Multiple calls to AfterFunc on a context operate independently;
    // one does not replace another.
    //
    // Calling the returned stop function stops the association of ctx with f.
    // It returns true if the call stopped f from being run.
    // If stop returns false,
    // either the context is done and f has been started in its own goroutine;
    // or f was already stopped.
    // The stop function does not wait for f to complete before returning.
    // If the caller needs to know whether f is completed,
    // it must coordinate with f explicitly.
    //
    // If ctx has a "AfterFunc(func()) func() bool" method,
    // AfterFunc will use it to schedule the call.
**/
function afterFunc(_ctx:Context, _f:() -> Void):() -> Bool throw ":context.afterFunc is not yet implemented";
/**
    // parentCancelCtx returns the underlying *cancelCtx for parent.
    // It does this by looking up parent.Value(&cancelCtxKey) to find
    // the innermost enclosing *cancelCtx and then checking whether
    // parent.Done() matches that *cancelCtx. (If not, the *cancelCtx
    // has been wrapped in a custom implementation providing a
    // different done channel, in which case we should not bypass it.)
**/
function _parentCancelCtx(_parent:Context):{ var _0 : stdgo.Ref<T_cancelCtx>; var _1 : Bool; } throw ":context._parentCancelCtx is not yet implemented";
/**
    // removeChild removes a context from its parent.
**/
function _removeChild(_parent:Context, _child:T_canceler):Void throw ":context._removeChild is not yet implemented";
function _contextName(_c:Context):stdgo.GoString throw ":context._contextName is not yet implemented";
/**
    // WithoutCancel returns a copy of parent that is not canceled when parent is canceled.
    // The returned context returns no Deadline or Err, and its Done channel is nil.
    // Calling [Cause] on the returned context returns nil.
**/
function withoutCancel(_parent:Context):Context throw ":context.withoutCancel is not yet implemented";
/**
    // WithDeadline returns a copy of the parent context with the deadline adjusted
    // to be no later than d. If the parent's deadline is already earlier than d,
    // WithDeadline(parent, d) is semantically equivalent to parent. The returned
    // [Context.Done] channel is closed when the deadline expires, when the returned
    // cancel function is called, or when the parent context's Done channel is
    // closed, whichever happens first.
    //
    // Canceling this context releases resources associated with it, so code should
    // call cancel as soon as the operations running in this [Context] complete.
**/
function withDeadline(_parent:Context, _d:stdgo.time.Time.Time):{ var _0 : Context; var _1 : CancelFunc; } throw ":context.withDeadline is not yet implemented";
/**
    // WithDeadlineCause behaves like [WithDeadline] but also sets the cause of the
    // returned Context when the deadline is exceeded. The returned [CancelFunc] does
    // not set the cause.
**/
function withDeadlineCause(_parent:Context, _d:stdgo.time.Time.Time, _cause:stdgo.Error):{ var _0 : Context; var _1 : CancelFunc; } throw ":context.withDeadlineCause is not yet implemented";
/**
    // WithTimeout returns WithDeadline(parent, time.Now().Add(timeout)).
    //
    // Canceling this context releases resources associated with it, so code should
    // call cancel as soon as the operations running in this [Context] complete:
    //
    //	func slowOperationWithTimeout(ctx context.Context) (Result, error) {
    //		ctx, cancel := context.WithTimeout(ctx, 100*time.Millisecond)
    //		defer cancel()  // releases resources if slowOperation completes before timeout elapses
    //		return slowOperation(ctx)
    //	}
**/
function withTimeout(_parent:Context, _timeout:stdgo.time.Time.Duration):{ var _0 : Context; var _1 : CancelFunc; } throw ":context.withTimeout is not yet implemented";
/**
    // WithTimeoutCause behaves like [WithTimeout] but also sets the cause of the
    // returned Context when the timeout expires. The returned [CancelFunc] does
    // not set the cause.
**/
function withTimeoutCause(_parent:Context, _timeout:stdgo.time.Time.Duration, _cause:stdgo.Error):{ var _0 : Context; var _1 : CancelFunc; } throw ":context.withTimeoutCause is not yet implemented";
/**
    // WithValue returns a copy of parent in which the value associated with key is
    // val.
    //
    // Use context Values only for request-scoped data that transits processes and
    // APIs, not for passing optional parameters to functions.
    //
    // The provided key must be comparable and should not be of type
    // string or any other built-in type to avoid collisions between
    // packages using context. Users of WithValue should define their own
    // types for keys. To avoid allocating when assigning to an
    // interface{}, context keys often have concrete type
    // struct{}. Alternatively, exported context key variables' static
    // type should be a pointer or interface.
**/
function withValue(_parent:Context, _key:stdgo.AnyInterface, _val:stdgo.AnyInterface):Context throw ":context.withValue is not yet implemented";
/**
    // stringify tries a bit to stringify v, without using fmt, since we don't
    // want context depending on the unicode tables. This is only used by
    // *valueCtx.String().
**/
function _stringify(_v:stdgo.AnyInterface):stdgo.GoString throw ":context._stringify is not yet implemented";
function _value(_c:Context, _key:stdgo.AnyInterface):stdgo.AnyInterface throw ":context._value is not yet implemented";
class T_deadlineExceededError_asInterface {
    @:keep
    public dynamic function temporary():Bool return __self__.value.temporary();
    @:keep
    public dynamic function timeout():Bool return __self__.value.timeout();
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_deadlineExceededError>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.context.Context.T_deadlineExceededError_asInterface) class T_deadlineExceededError_static_extension {
    @:keep
    static public function temporary( _:T_deadlineExceededError):Bool throw "T_deadlineExceededError:context.temporary is not yet implemented";
    @:keep
    static public function timeout( _:T_deadlineExceededError):Bool throw "T_deadlineExceededError:context.timeout is not yet implemented";
    @:keep
    static public function error( _:T_deadlineExceededError):stdgo.GoString throw "T_deadlineExceededError:context.error is not yet implemented";
}
class T_emptyCtx_asInterface {
    @:keep
    public dynamic function value(_key:stdgo.AnyInterface):stdgo.AnyInterface return __self__.value.value(_key);
    @:keep
    public dynamic function err():stdgo.Error return __self__.value.err();
    @:keep
    public dynamic function done():stdgo.Chan<T__struct_0> return __self__.value.done();
    @:keep
    public dynamic function deadline():{ var _0 : stdgo.time.Time.Time; var _1 : Bool; } return __self__.value.deadline();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_emptyCtx>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.context.Context.T_emptyCtx_asInterface) class T_emptyCtx_static_extension {
    @:keep
    static public function value( _:T_emptyCtx, _key:stdgo.AnyInterface):stdgo.AnyInterface throw "T_emptyCtx:context.value is not yet implemented";
    @:keep
    static public function err( _:T_emptyCtx):stdgo.Error throw "T_emptyCtx:context.err is not yet implemented";
    @:keep
    static public function done( _:T_emptyCtx):stdgo.Chan<T__struct_0> throw "T_emptyCtx:context.done is not yet implemented";
    @:keep
    static public function deadline( _:T_emptyCtx):{ var _0 : stdgo.time.Time.Time; var _1 : Bool; } throw "T_emptyCtx:context.deadline is not yet implemented";
}
class T_backgroundCtx_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:embedded
    public dynamic function value(_key_:stdgo.AnyInterface):stdgo.AnyInterface return __self__.value.value(_key_);
    @:embedded
    public dynamic function err():stdgo.Error return __self__.value.err();
    @:embedded
    public dynamic function done():stdgo.Chan<T_deadlineExceededError> return __self__.value.done();
    @:embedded
    public dynamic function deadline():{ var _0 : stdgo.time.Time.Time; var _1 : Bool; } return __self__.value.deadline();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_backgroundCtx>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.context.Context.T_backgroundCtx_asInterface) class T_backgroundCtx_static_extension {
    @:keep
    static public function string( _:T_backgroundCtx):stdgo.GoString throw "T_backgroundCtx:context.string is not yet implemented";
    @:embedded
    public static function value( __self__:T_backgroundCtx, _key_:stdgo.AnyInterface):stdgo.AnyInterface return __self__.value(_key_);
    @:embedded
    public static function err( __self__:T_backgroundCtx):stdgo.Error return __self__.err();
    @:embedded
    public static function done( __self__:T_backgroundCtx):stdgo.Chan<T_deadlineExceededError> return __self__.done();
    @:embedded
    public static function deadline( __self__:T_backgroundCtx):{ var _0 : stdgo.time.Time.Time; var _1 : Bool; } return __self__.deadline();
}
class T_todoCtx_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:embedded
    public dynamic function value(_key_:stdgo.AnyInterface):stdgo.AnyInterface return __self__.value.value(_key_);
    @:embedded
    public dynamic function err():stdgo.Error return __self__.value.err();
    @:embedded
    public dynamic function done():stdgo.Chan<T_deadlineExceededError> return __self__.value.done();
    @:embedded
    public dynamic function deadline():{ var _0 : stdgo.time.Time.Time; var _1 : Bool; } return __self__.value.deadline();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_todoCtx>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.context.Context.T_todoCtx_asInterface) class T_todoCtx_static_extension {
    @:keep
    static public function string( _:T_todoCtx):stdgo.GoString throw "T_todoCtx:context.string is not yet implemented";
    @:embedded
    public static function value( __self__:T_todoCtx, _key_:stdgo.AnyInterface):stdgo.AnyInterface return __self__.value(_key_);
    @:embedded
    public static function err( __self__:T_todoCtx):stdgo.Error return __self__.err();
    @:embedded
    public static function done( __self__:T_todoCtx):stdgo.Chan<T_deadlineExceededError> return __self__.done();
    @:embedded
    public static function deadline( __self__:T_todoCtx):{ var _0 : stdgo.time.Time.Time; var _1 : Bool; } return __self__.deadline();
}
class T_afterFuncCtx_asInterface {
    @:keep
    public dynamic function _cancel(_removeFromParent:Bool, _err:stdgo.Error, _cause:stdgo.Error):Void __self__.value._cancel(_removeFromParent, _err, _cause);
    @:embedded
    public dynamic function _propagateCancel(_parent:stdgo.context.Context.Context, _child:stdgo.context.Context.T_canceler):Void __self__.value._propagateCancel(_parent, _child);
    @:embedded
    public dynamic function value(_key_:stdgo.AnyInterface):stdgo.AnyInterface return __self__.value.value(_key_);
    @:embedded
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:embedded
    public dynamic function err():stdgo.Error return __self__.value.err();
    @:embedded
    public dynamic function done():stdgo.Chan<T_deadlineExceededError> return __self__.value.done();
    @:embedded
    public dynamic function deadline():{ var _0 : stdgo.time.Time.Time; var _1 : Bool; } return __self__.value.deadline();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_afterFuncCtx>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.context.Context.T_afterFuncCtx_asInterface) class T_afterFuncCtx_static_extension {
    @:keep
    static public function _cancel( _a:stdgo.Ref<T_afterFuncCtx>, _removeFromParent:Bool, _err:stdgo.Error, _cause:stdgo.Error):Void throw "T_afterFuncCtx:context._cancel is not yet implemented";
    @:embedded
    public static function _propagateCancel( __self__:T_afterFuncCtx, _parent:stdgo.context.Context.Context, _child:stdgo.context.Context.T_canceler) __self__._propagateCancel(_parent, _child);
    @:embedded
    public static function value( __self__:T_afterFuncCtx, _key_:stdgo.AnyInterface):stdgo.AnyInterface return __self__.value(_key_);
    @:embedded
    public static function string( __self__:T_afterFuncCtx):stdgo.GoString return __self__.string();
    @:embedded
    public static function err( __self__:T_afterFuncCtx):stdgo.Error return __self__.err();
    @:embedded
    public static function done( __self__:T_afterFuncCtx):stdgo.Chan<T_deadlineExceededError> return __self__.done();
    @:embedded
    public static function deadline( __self__:T_afterFuncCtx):{ var _0 : stdgo.time.Time.Time; var _1 : Bool; } return __self__.deadline();
}
class T_stopCtx_asInterface {
    @:embedded
    public dynamic function value(_key_:stdgo.AnyInterface):stdgo.AnyInterface return __self__.value.value(_key_);
    @:embedded
    public dynamic function err():stdgo.Error return __self__.value.err();
    @:embedded
    public dynamic function done():stdgo.Chan<T_deadlineExceededError> return __self__.value.done();
    @:embedded
    public dynamic function deadline():{ var _0 : stdgo.time.Time.Time; var _1 : Bool; } return __self__.value.deadline();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_stopCtx>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.context.Context.T_stopCtx_asInterface) class T_stopCtx_static_extension {
    @:embedded
    public static function value( __self__:T_stopCtx, _key_:stdgo.AnyInterface):stdgo.AnyInterface return __self__.value(_key_);
    @:embedded
    public static function err( __self__:T_stopCtx):stdgo.Error return __self__.err();
    @:embedded
    public static function done( __self__:T_stopCtx):stdgo.Chan<T_deadlineExceededError> return __self__.done();
    @:embedded
    public static function deadline( __self__:T_stopCtx):{ var _0 : stdgo.time.Time.Time; var _1 : Bool; } return __self__.deadline();
}
class T_cancelCtx_asInterface {
    /**
        // cancel closes c.done, cancels each of c's children, and, if
        // removeFromParent is true, removes c from its parent's children.
        // cancel sets c.cause to cause if this is the first time c is canceled.
    **/
    @:keep
    public dynamic function _cancel(_removeFromParent:Bool, _err:stdgo.Error, _cause:stdgo.Error):Void __self__.value._cancel(_removeFromParent, _err, _cause);
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    /**
        // propagateCancel arranges for child to be canceled when parent is.
        // It sets the parent context of cancelCtx.
    **/
    @:keep
    public dynamic function _propagateCancel(_parent:Context, _child:T_canceler):Void __self__.value._propagateCancel(_parent, _child);
    @:keep
    public dynamic function err():stdgo.Error return __self__.value.err();
    @:keep
    public dynamic function done():stdgo.Chan<T__struct_0> return __self__.value.done();
    @:keep
    public dynamic function value(_key:stdgo.AnyInterface):stdgo.AnyInterface return __self__.value.value(_key);
    @:embedded
    public dynamic function deadline():{ var _0 : stdgo.time.Time.Time; var _1 : Bool; } return __self__.value.deadline();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_cancelCtx>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.context.Context.T_cancelCtx_asInterface) class T_cancelCtx_static_extension {
    /**
        // cancel closes c.done, cancels each of c's children, and, if
        // removeFromParent is true, removes c from its parent's children.
        // cancel sets c.cause to cause if this is the first time c is canceled.
    **/
    @:keep
    static public function _cancel( _c:stdgo.Ref<T_cancelCtx>, _removeFromParent:Bool, _err:stdgo.Error, _cause:stdgo.Error):Void throw "T_cancelCtx:context._cancel is not yet implemented";
    @:keep
    static public function string( _c:stdgo.Ref<T_cancelCtx>):stdgo.GoString throw "T_cancelCtx:context.string is not yet implemented";
    /**
        // propagateCancel arranges for child to be canceled when parent is.
        // It sets the parent context of cancelCtx.
    **/
    @:keep
    static public function _propagateCancel( _c:stdgo.Ref<T_cancelCtx>, _parent:Context, _child:T_canceler):Void throw "T_cancelCtx:context._propagateCancel is not yet implemented";
    @:keep
    static public function err( _c:stdgo.Ref<T_cancelCtx>):stdgo.Error throw "T_cancelCtx:context.err is not yet implemented";
    @:keep
    static public function done( _c:stdgo.Ref<T_cancelCtx>):stdgo.Chan<T__struct_0> throw "T_cancelCtx:context.done is not yet implemented";
    @:keep
    static public function value( _c:stdgo.Ref<T_cancelCtx>, _key:stdgo.AnyInterface):stdgo.AnyInterface throw "T_cancelCtx:context.value is not yet implemented";
    @:embedded
    public static function deadline( __self__:T_cancelCtx):{ var _0 : stdgo.time.Time.Time; var _1 : Bool; } return __self__.deadline();
}
class T_withoutCancelCtx_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function value(_key:stdgo.AnyInterface):stdgo.AnyInterface return __self__.value.value(_key);
    @:keep
    public dynamic function err():stdgo.Error return __self__.value.err();
    @:keep
    public dynamic function done():stdgo.Chan<T__struct_0> return __self__.value.done();
    @:keep
    public dynamic function deadline():{ var _0 : stdgo.time.Time.Time; var _1 : Bool; } return __self__.value.deadline();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_withoutCancelCtx>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.context.Context.T_withoutCancelCtx_asInterface) class T_withoutCancelCtx_static_extension {
    @:keep
    static public function string( _c:T_withoutCancelCtx):stdgo.GoString throw "T_withoutCancelCtx:context.string is not yet implemented";
    @:keep
    static public function value( _c:T_withoutCancelCtx, _key:stdgo.AnyInterface):stdgo.AnyInterface throw "T_withoutCancelCtx:context.value is not yet implemented";
    @:keep
    static public function err( _:T_withoutCancelCtx):stdgo.Error throw "T_withoutCancelCtx:context.err is not yet implemented";
    @:keep
    static public function done( _:T_withoutCancelCtx):stdgo.Chan<T__struct_0> throw "T_withoutCancelCtx:context.done is not yet implemented";
    @:keep
    static public function deadline( _:T_withoutCancelCtx):{ var _0 : stdgo.time.Time.Time; var _1 : Bool; } throw "T_withoutCancelCtx:context.deadline is not yet implemented";
}
class T_timerCtx_asInterface {
    @:keep
    public dynamic function _cancel(_removeFromParent:Bool, _err:stdgo.Error, _cause:stdgo.Error):Void __self__.value._cancel(_removeFromParent, _err, _cause);
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function deadline():{ var _0 : stdgo.time.Time.Time; var _1 : Bool; } return __self__.value.deadline();
    @:embedded
    public dynamic function _propagateCancel(_parent:stdgo.context.Context.Context, _child:stdgo.context.Context.T_canceler):Void __self__.value._propagateCancel(_parent, _child);
    @:embedded
    public dynamic function value(_key_:stdgo.AnyInterface):stdgo.AnyInterface return __self__.value.value(_key_);
    @:embedded
    public dynamic function err():stdgo.Error return __self__.value.err();
    @:embedded
    public dynamic function done():stdgo.Chan<T_deadlineExceededError> return __self__.value.done();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_timerCtx>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.context.Context.T_timerCtx_asInterface) class T_timerCtx_static_extension {
    @:keep
    static public function _cancel( _c:stdgo.Ref<T_timerCtx>, _removeFromParent:Bool, _err:stdgo.Error, _cause:stdgo.Error):Void throw "T_timerCtx:context._cancel is not yet implemented";
    @:keep
    static public function string( _c:stdgo.Ref<T_timerCtx>):stdgo.GoString throw "T_timerCtx:context.string is not yet implemented";
    @:keep
    static public function deadline( _c:stdgo.Ref<T_timerCtx>):{ var _0 : stdgo.time.Time.Time; var _1 : Bool; } throw "T_timerCtx:context.deadline is not yet implemented";
    @:embedded
    public static function _propagateCancel( __self__:T_timerCtx, _parent:stdgo.context.Context.Context, _child:stdgo.context.Context.T_canceler) __self__._propagateCancel(_parent, _child);
    @:embedded
    public static function value( __self__:T_timerCtx, _key_:stdgo.AnyInterface):stdgo.AnyInterface return __self__.value(_key_);
    @:embedded
    public static function err( __self__:T_timerCtx):stdgo.Error return __self__.err();
    @:embedded
    public static function done( __self__:T_timerCtx):stdgo.Chan<T_deadlineExceededError> return __self__.done();
}
class T_valueCtx_asInterface {
    @:keep
    public dynamic function value(_key:stdgo.AnyInterface):stdgo.AnyInterface return __self__.value.value(_key);
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:embedded
    public dynamic function err():stdgo.Error return __self__.value.err();
    @:embedded
    public dynamic function done():stdgo.Chan<T_deadlineExceededError> return __self__.value.done();
    @:embedded
    public dynamic function deadline():{ var _0 : stdgo.time.Time.Time; var _1 : Bool; } return __self__.value.deadline();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_valueCtx>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.context.Context.T_valueCtx_asInterface) class T_valueCtx_static_extension {
    @:keep
    static public function value( _c:stdgo.Ref<T_valueCtx>, _key:stdgo.AnyInterface):stdgo.AnyInterface throw "T_valueCtx:context.value is not yet implemented";
    @:keep
    static public function string( _c:stdgo.Ref<T_valueCtx>):stdgo.GoString throw "T_valueCtx:context.string is not yet implemented";
    @:embedded
    public static function err( __self__:T_valueCtx):stdgo.Error return __self__.err();
    @:embedded
    public static function done( __self__:T_valueCtx):stdgo.Chan<T_deadlineExceededError> return __self__.done();
    @:embedded
    public static function deadline( __self__:T_valueCtx):{ var _0 : stdgo.time.Time.Time; var _1 : Bool; } return __self__.deadline();
}
