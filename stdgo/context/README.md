# Module: `stdgo.context`

[(view library index)](../stdgo.md)


# Overview



Package context defines the Context type, which carries deadlines,
cancellation signals, and other request\-scoped values across API boundaries
and between processes.  


Incoming requests to a server should create a \[Context\], and outgoing
calls to servers should accept a Context. The chain of function
calls between them must propagate the Context, optionally replacing
it with a derived Context created using \[WithCancel\], \[WithDeadline\],
\[WithTimeout\], or \[WithValue\]. When a Context is canceled, all
Contexts derived from it are also canceled.  


The \[WithCancel\], \[WithDeadline\], and \[WithTimeout\] functions take a
Context \(the parent\) and return a derived Context \(the child\) and a
\[CancelFunc\]. Calling the CancelFunc cancels the child and its
children, removes the parent's reference to the child, and stops
any associated timers. Failing to call the CancelFunc leaks the
child and its children until the parent is canceled or the timer
fires. The go vet tool checks that CancelFuncs are used on all
control\-flow paths.  


The \[WithCancelCause\] function returns a \[CancelCauseFunc\], which
takes an error and records it as the cancellation cause. Calling
\[Cause\] on the canceled context or any of its children retrieves
the cause. If no cause is specified, Cause\(ctx\) returns the same
value as ctx.Err\(\).  


Programs that use Contexts should follow these rules to keep interfaces
consistent across packages and enable static analysis tools to check context
propagation:  


Do not store Contexts inside a struct type; instead, pass a Context
explicitly to each function that needs it. The Context should be the first
parameter, typically named ctx:  

```
	func DoSomething(ctx context.Context, arg Arg) error {
		// ... use ctx ...
	}
```

Do not pass a nil \[Context\], even if a function permits it. Pass \[context.TODO\]
if you are unsure about which Context to use.  


Use context Values only for request\-scoped data that transits processes and
APIs, not for passing optional parameters to functions.  


The same Context may be passed to functions running in different goroutines;
Contexts are safe for simultaneous use by multiple goroutines.  


See https://blog.golang.org/context for example code for a server that uses
Contexts.  

# Index


- [Variables](<#variables>)

- [`function afterFunc(ctx:stdgo.context.Context, f:():Void):():Bool`](<#function-afterfunc>)

- [`function background():stdgo.context.Context`](<#function-background>)

- [`function cause(c:stdgo.context.Context):stdgo.Error`](<#function-cause>)

- [`function get_canceled():stdgo.Error`](<#function-get_canceled>)

- [`function get_deadlineExceeded():stdgo.Error`](<#function-get_deadlineexceeded>)

- [`function set_canceled(v:stdgo.Error):stdgo.Error`](<#function-set_canceled>)

- [`function set_deadlineExceeded(v:stdgo.Error):stdgo.Error`](<#function-set_deadlineexceeded>)

- [`function todo():stdgo.context.Context`](<#function-todo>)

- [`function withCancel(parent:stdgo.context.Context):stdgo.Tuple<stdgo.context.Context, stdgo.context.CancelFunc>`](<#function-withcancel>)

- [`function withCancelCause(parent:stdgo.context.Context):stdgo.Tuple<stdgo.context.Context, stdgo.context.CancelCauseFunc>`](<#function-withcancelcause>)

- [`function withDeadline(parent:stdgo.context.Context, d:stdgo._internal.time.Time):stdgo.Tuple<stdgo.context.Context, stdgo.context.CancelFunc>`](<#function-withdeadline>)

- [`function withDeadlineCause(parent:stdgo.context.Context, d:stdgo._internal.time.Time, cause:stdgo.Error):stdgo.Tuple<stdgo.context.Context, stdgo.context.CancelFunc>`](<#function-withdeadlinecause>)

- [`function withTimeout(parent:stdgo.context.Context, timeout:stdgo._internal.time.Duration):stdgo.Tuple<stdgo.context.Context, stdgo.context.CancelFunc>`](<#function-withtimeout>)

- [`function withTimeoutCause(parent:stdgo.context.Context, timeout:stdgo._internal.time.Duration, cause:stdgo.Error):stdgo.Tuple<stdgo.context.Context, stdgo.context.CancelFunc>`](<#function-withtimeoutcause>)

- [`function withValue(parent:stdgo.context.Context, key:stdgo.AnyInterface, val:stdgo.AnyInterface):stdgo.context.Context`](<#function-withvalue>)

- [`function withoutCancel(parent:stdgo.context.Context):stdgo.context.Context`](<#function-withoutcancel>)

- [typedef CancelCauseFunc](<#typedef-cancelcausefunc>)

- [typedef CancelFunc](<#typedef-cancelfunc>)

- [typedef Context](<#typedef-context>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_0\_asInterface](<#typedef-t__struct_0_asinterface>)

- [typedef T\_\_struct\_0\_static\_extension](<#typedef-t__struct_0_static_extension>)

- [typedef T\_afterFuncCtx](<#typedef-t_afterfuncctx>)

- [typedef T\_afterFuncCtx\_asInterface](<#typedef-t_afterfuncctx_asinterface>)

- [typedef T\_afterFuncCtx\_static\_extension](<#typedef-t_afterfuncctx_static_extension>)

- [typedef T\_afterFuncer](<#typedef-t_afterfuncer>)

- [typedef T\_backgroundCtx](<#typedef-t_backgroundctx>)

- [typedef T\_backgroundCtx\_asInterface](<#typedef-t_backgroundctx_asinterface>)

- [typedef T\_backgroundCtx\_static\_extension](<#typedef-t_backgroundctx_static_extension>)

- [typedef T\_cancelCtx](<#typedef-t_cancelctx>)

- [typedef T\_cancelCtx\_asInterface](<#typedef-t_cancelctx_asinterface>)

- [typedef T\_cancelCtx\_static\_extension](<#typedef-t_cancelctx_static_extension>)

- [typedef T\_canceler](<#typedef-t_canceler>)

- [typedef T\_deadlineExceededError](<#typedef-t_deadlineexceedederror>)

- [typedef T\_deadlineExceededError\_asInterface](<#typedef-t_deadlineexceedederror_asinterface>)

- [typedef T\_deadlineExceededError\_static\_extension](<#typedef-t_deadlineexceedederror_static_extension>)

- [typedef T\_emptyCtx](<#typedef-t_emptyctx>)

- [typedef T\_emptyCtx\_asInterface](<#typedef-t_emptyctx_asinterface>)

- [typedef T\_emptyCtx\_static\_extension](<#typedef-t_emptyctx_static_extension>)

- [typedef T\_stopCtx](<#typedef-t_stopctx>)

- [typedef T\_stopCtx\_asInterface](<#typedef-t_stopctx_asinterface>)

- [typedef T\_stopCtx\_static\_extension](<#typedef-t_stopctx_static_extension>)

- [typedef T\_stringer](<#typedef-t_stringer>)

- [typedef T\_timerCtx](<#typedef-t_timerctx>)

- [typedef T\_timerCtx\_asInterface](<#typedef-t_timerctx_asinterface>)

- [typedef T\_timerCtx\_static\_extension](<#typedef-t_timerctx_static_extension>)

- [typedef T\_todoCtx](<#typedef-t_todoctx>)

- [typedef T\_todoCtx\_asInterface](<#typedef-t_todoctx_asinterface>)

- [typedef T\_todoCtx\_static\_extension](<#typedef-t_todoctx_static_extension>)

- [typedef T\_valueCtx](<#typedef-t_valuectx>)

- [typedef T\_valueCtx\_asInterface](<#typedef-t_valuectx_asinterface>)

- [typedef T\_valueCtx\_static\_extension](<#typedef-t_valuectx_static_extension>)

- [typedef T\_withoutCancelCtx](<#typedef-t_withoutcancelctx>)

- [typedef T\_withoutCancelCtx\_asInterface](<#typedef-t_withoutcancelctx_asinterface>)

- [typedef T\_withoutCancelCtx\_static\_extension](<#typedef-t_withoutcancelctx_static_extension>)

# Variables


```haxe
import stdgo.context.Context
```


```haxe
var canceled:stdgo.Error
```


```haxe
var deadlineExceeded:stdgo.Error
```


# Functions


```haxe
import stdgo.context.Context
```


## function afterFunc


```haxe
function afterFunc(ctx:stdgo.context.Context, f:():Void):():Bool
```



AfterFunc arranges to call f in its own goroutine after ctx is done
\(cancelled or timed out\).
If ctx is already done, AfterFunc calls f immediately in its own goroutine.  


Multiple calls to AfterFunc on a context operate independently;
one does not replace another.  


Calling the returned stop function stops the association of ctx with f.
It returns true if the call stopped f from being run.
If stop returns false,
either the context is done and f has been started in its own goroutine;
or f was already stopped.
The stop function does not wait for f to complete before returning.
If the caller needs to know whether f is completed,
it must coordinate with f explicitly.  


If ctx has a "AfterFunc\(func\(\)\) func\(\) bool" method,
AfterFunc will use it to schedule the call.  

[\(view code\)](<./Context.hx#L145>)


## function background


```haxe
function background():stdgo.context.Context
```



Background returns a non\-nil, empty \[Context\]. It is never canceled, has no
values, and has no deadline. It is typically used by the main function,
initialization, and tests, and as the top\-level Context for incoming
requests.  

[\(view code\)](<./Context.hx#L85>)


## function cause


```haxe
function cause(c:stdgo.context.Context):stdgo.Error
```



Cause returns a non\-nil error explaining why c was canceled.
The first cancellation of c or one of its parents sets the cause.
If that cancellation happened via a call to CancelCauseFunc\(err\),
then \[Cause\] returns err.
Otherwise Cause\(c\) returns the same value as c.Err\(\).
Cause returns nil if c has not been canceled yet.  

[\(view code\)](<./Context.hx#L124>)


## function get\_canceled


```haxe
function get_canceled():stdgo.Error
```


[\(view code\)](<./Context.hx#L55>)


## function get\_deadlineExceeded


```haxe
function get_deadlineExceeded():stdgo.Error
```


[\(view code\)](<./Context.hx#L58>)


## function set\_canceled


```haxe
function set_canceled(v:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Context.hx#L56>)


## function set\_deadlineExceeded


```haxe
function set_deadlineExceeded(v:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Context.hx#L59>)


## function todo


```haxe
function todo():stdgo.context.Context
```



TODO returns a non\-nil, empty \[Context\]. Code should use context.TODO when
it's unclear which Context to use or it is not yet available \(because the
surrounding function has not yet been extended to accept a Context
parameter\).  

[\(view code\)](<./Context.hx#L92>)


## function withCancel


```haxe
function withCancel(parent:stdgo.context.Context):stdgo.Tuple<stdgo.context.Context, stdgo.context.CancelFunc>
```



WithCancel returns a copy of parent with a new Done channel. The returned
context's Done channel is closed when the returned cancel function is called
or when the parent context's Done channel is closed, whichever happens first.  


Canceling this context releases resources associated with it, so code should
call cancel as soon as the operations running in this Context complete.  

[\(view code\)](<./Context.hx#L101>)


## function withCancelCause


```haxe
function withCancelCause(parent:stdgo.context.Context):stdgo.Tuple<stdgo.context.Context, stdgo.context.CancelCauseFunc>
```



WithCancelCause behaves like \[WithCancel\] but returns a \[CancelCauseFunc\] instead of a \[CancelFunc\].
Calling cancel with a non\-nil error \(the "cause"\) records that error in ctx;
it can then be retrieved using Cause\(ctx\).
Calling cancel with nil sets the cause to Canceled.  


Example use:  

```
	ctx, cancel := context.WithCancelCause(parent)
	cancel(myError)
	ctx.Err() // returns context.Canceled
	context.Cause(ctx) // returns myError
```
[\(view code\)](<./Context.hx#L115>)


## function withDeadline


```haxe
function withDeadline(parent:stdgo.context.Context, d:stdgo._internal.time.Time):stdgo.Tuple<stdgo.context.Context, stdgo.context.CancelFunc>
```



WithDeadline returns a copy of the parent context with the deadline adjusted
to be no later than d. If the parent's deadline is already earlier than d,
WithDeadline\(parent, d\) is semantically equivalent to parent. The returned
\[Context.Done\] channel is closed when the deadline expires, when the returned
cancel function is called, or when the parent context's Done channel is
closed, whichever happens first.  


Canceling this context releases resources associated with it, so code should
call cancel as soon as the operations running in this \[Context\] complete.  

[\(view code\)](<./Context.hx#L163>)


## function withDeadlineCause


```haxe
function withDeadlineCause(parent:stdgo.context.Context, d:stdgo._internal.time.Time, cause:stdgo.Error):stdgo.Tuple<stdgo.context.Context, stdgo.context.CancelFunc>
```



WithDeadlineCause behaves like \[WithDeadline\] but also sets the cause of the
returned Context when the deadline is exceeded. The returned \[CancelFunc\] does
not set the cause.  

[\(view code\)](<./Context.hx#L169>)


## function withTimeout


```haxe
function withTimeout(parent:stdgo.context.Context, timeout:stdgo._internal.time.Duration):stdgo.Tuple<stdgo.context.Context, stdgo.context.CancelFunc>
```



WithTimeout returns WithDeadline\(parent, time.Now\(\).Add\(timeout\)\).  


Canceling this context releases resources associated with it, so code should
call cancel as soon as the operations running in this \[Context\] complete:  

```
	func slowOperationWithTimeout(ctx context.Context) (Result, error) {
		ctx, cancel := context.WithTimeout(ctx, 100*time.Millisecond)
		defer cancel()  // releases resources if slowOperation completes before timeout elapses
		return slowOperation(ctx)
	}
```
[\(view code\)](<./Context.hx#L182>)


## function withTimeoutCause


```haxe
function withTimeoutCause(parent:stdgo.context.Context, timeout:stdgo._internal.time.Duration, cause:stdgo.Error):stdgo.Tuple<stdgo.context.Context, stdgo.context.CancelFunc>
```



WithTimeoutCause behaves like \[WithTimeout\] but also sets the cause of the
returned Context when the timeout expires. The returned \[CancelFunc\] does
not set the cause.  

[\(view code\)](<./Context.hx#L188>)


## function withValue


```haxe
function withValue(parent:stdgo.context.Context, key:stdgo.AnyInterface, val:stdgo.AnyInterface):stdgo.context.Context
```



WithValue returns a copy of parent in which the value associated with key is
val.  


Use context Values only for request\-scoped data that transits processes and
APIs, not for passing optional parameters to functions.  


The provided key must be comparable and should not be of type
string or any other built\-in type to avoid collisions between
packages using context. Users of WithValue should define their own
types for keys. To avoid allocating when assigning to an
interface\{\}, context keys often have concrete type
struct\{\}. Alternatively, exported context key variables' static
type should be a pointer or interface.  

[\(view code\)](<./Context.hx#L204>)


## function withoutCancel


```haxe
function withoutCancel(parent:stdgo.context.Context):stdgo.context.Context
```



WithoutCancel returns a copy of parent that is not canceled when parent is canceled.
The returned context returns no Deadline or Err, and its Done channel is nil.
Calling \[Cause\] on the returned context returns nil.  

[\(view code\)](<./Context.hx#L151>)


# Typedefs


```haxe
import stdgo.context.*
```


## typedef CancelCauseFunc


```haxe
typedef CancelCauseFunc = stdgo._internal.context.CancelCauseFunc;
```


## typedef CancelFunc


```haxe
typedef CancelFunc = stdgo._internal.context.CancelFunc;
```


## typedef Context


```haxe
typedef Context = stdgo._internal.context.Context;
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = stdgo._internal.context.T__struct_0;
```


## typedef T\_\_struct\_0\_asInterface


```haxe
typedef T__struct_0_asInterface = Dynamic;
```


## typedef T\_\_struct\_0\_static\_extension


```haxe
typedef T__struct_0_static_extension = Dynamic;
```


## typedef T\_afterFuncCtx


```haxe
typedef T_afterFuncCtx = Dynamic;
```


## typedef T\_afterFuncCtx\_asInterface


```haxe
typedef T_afterFuncCtx_asInterface = Dynamic;
```


## typedef T\_afterFuncCtx\_static\_extension


```haxe
typedef T_afterFuncCtx_static_extension = Dynamic;
```


## typedef T\_afterFuncer


```haxe
typedef T_afterFuncer = stdgo._internal.context.T_afterFuncer;
```


## typedef T\_backgroundCtx


```haxe
typedef T_backgroundCtx = Dynamic;
```


## typedef T\_backgroundCtx\_asInterface


```haxe
typedef T_backgroundCtx_asInterface = Dynamic;
```


## typedef T\_backgroundCtx\_static\_extension


```haxe
typedef T_backgroundCtx_static_extension = Dynamic;
```


## typedef T\_cancelCtx


```haxe
typedef T_cancelCtx = Dynamic;
```


## typedef T\_cancelCtx\_asInterface


```haxe
typedef T_cancelCtx_asInterface = Dynamic;
```


## typedef T\_cancelCtx\_static\_extension


```haxe
typedef T_cancelCtx_static_extension = Dynamic;
```


## typedef T\_canceler


```haxe
typedef T_canceler = stdgo._internal.context.T_canceler;
```


## typedef T\_deadlineExceededError


```haxe
typedef T_deadlineExceededError = Dynamic;
```


## typedef T\_deadlineExceededError\_asInterface


```haxe
typedef T_deadlineExceededError_asInterface = Dynamic;
```


## typedef T\_deadlineExceededError\_static\_extension


```haxe
typedef T_deadlineExceededError_static_extension = Dynamic;
```


## typedef T\_emptyCtx


```haxe
typedef T_emptyCtx = Dynamic;
```


## typedef T\_emptyCtx\_asInterface


```haxe
typedef T_emptyCtx_asInterface = Dynamic;
```


## typedef T\_emptyCtx\_static\_extension


```haxe
typedef T_emptyCtx_static_extension = Dynamic;
```


## typedef T\_stopCtx


```haxe
typedef T_stopCtx = Dynamic;
```


## typedef T\_stopCtx\_asInterface


```haxe
typedef T_stopCtx_asInterface = Dynamic;
```


## typedef T\_stopCtx\_static\_extension


```haxe
typedef T_stopCtx_static_extension = Dynamic;
```


## typedef T\_stringer


```haxe
typedef T_stringer = stdgo._internal.context.T_stringer;
```


## typedef T\_timerCtx


```haxe
typedef T_timerCtx = Dynamic;
```


## typedef T\_timerCtx\_asInterface


```haxe
typedef T_timerCtx_asInterface = Dynamic;
```


## typedef T\_timerCtx\_static\_extension


```haxe
typedef T_timerCtx_static_extension = Dynamic;
```


## typedef T\_todoCtx


```haxe
typedef T_todoCtx = Dynamic;
```


## typedef T\_todoCtx\_asInterface


```haxe
typedef T_todoCtx_asInterface = Dynamic;
```


## typedef T\_todoCtx\_static\_extension


```haxe
typedef T_todoCtx_static_extension = Dynamic;
```


## typedef T\_valueCtx


```haxe
typedef T_valueCtx = Dynamic;
```


## typedef T\_valueCtx\_asInterface


```haxe
typedef T_valueCtx_asInterface = Dynamic;
```


## typedef T\_valueCtx\_static\_extension


```haxe
typedef T_valueCtx_static_extension = Dynamic;
```


## typedef T\_withoutCancelCtx


```haxe
typedef T_withoutCancelCtx = Dynamic;
```


## typedef T\_withoutCancelCtx\_asInterface


```haxe
typedef T_withoutCancelCtx_asInterface = Dynamic;
```


## typedef T\_withoutCancelCtx\_static\_extension


```haxe
typedef T_withoutCancelCtx_static_extension = Dynamic;
```


