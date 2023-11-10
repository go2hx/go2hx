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

- [`function _contextName(_c:stdgo.context.Context):stdgo.GoString`](<#function-_contextname>)

- [`function _parentCancelCtx(_parent:stdgo.context.Context):{
	_1:Bool;
	_0:stdgo.Ref<stdgo.context.T_cancelCtx>;
}`](<#function-_parentcancelctx>)

- [`function _removeChild(_parent:stdgo.context.Context, _child:stdgo.context.T_canceler):Void`](<#function-_removechild>)

- [`function _stringify(_v:stdgo.AnyInterface):stdgo.GoString`](<#function-_stringify>)

- [`function _value(_c:stdgo.context.Context, _key:stdgo.AnyInterface):stdgo.AnyInterface`](<#function-_value>)

- [`function _withCancel(_parent:stdgo.context.Context):stdgo.Ref<stdgo.context.T_cancelCtx>`](<#function-_withcancel>)

- [`function afterFunc(_ctx:stdgo.context.Context, _f:():Void):():Bool`](<#function-afterfunc>)

- [`function background():stdgo.context.Context`](<#function-background>)

- [`function cause(_c:stdgo.context.Context):stdgo.Error`](<#function-cause>)

- [`function todo():stdgo.context.Context`](<#function-todo>)

- [`function withCancel(_parent:stdgo.context.Context):{
	_1:stdgo.context.CancelFunc;
	_0:stdgo.context.Context;
}`](<#function-withcancel>)

- [`function withCancelCause(_parent:stdgo.context.Context):{
	_1:stdgo.context.CancelCauseFunc;
	_0:stdgo.context.Context;
}`](<#function-withcancelcause>)

- [`function withDeadline(_parent:stdgo.context.Context, _d:stdgo.time.Time):{
	_1:stdgo.context.CancelFunc;
	_0:stdgo.context.Context;
}`](<#function-withdeadline>)

- [`function withDeadlineCause(_parent:stdgo.context.Context, _d:stdgo.time.Time, _cause:stdgo.Error):{
	_1:stdgo.context.CancelFunc;
	_0:stdgo.context.Context;
}`](<#function-withdeadlinecause>)

- [`function withTimeout(_parent:stdgo.context.Context, _timeout:stdgo.time.Duration):{
	_1:stdgo.context.CancelFunc;
	_0:stdgo.context.Context;
}`](<#function-withtimeout>)

- [`function withTimeoutCause(_parent:stdgo.context.Context, _timeout:stdgo.time.Duration, _cause:stdgo.Error):{
	_1:stdgo.context.CancelFunc;
	_0:stdgo.context.Context;
}`](<#function-withtimeoutcause>)

- [`function withValue(_parent:stdgo.context.Context, _key:stdgo.AnyInterface, _val:stdgo.AnyInterface):stdgo.context.Context`](<#function-withvalue>)

- [`function withoutCancel(_parent:stdgo.context.Context):stdgo.context.Context`](<#function-withoutcancel>)

- [typedef CancelCauseFunc](<#typedef-cancelcausefunc>)

- [typedef CancelFunc](<#typedef-cancelfunc>)

- [typedef Context](<#typedef-context>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_afterFuncer](<#typedef-t_afterfuncer>)

- [typedef T\_canceler](<#typedef-t_canceler>)

- [typedef T\_stringer](<#typedef-t_stringer>)

# Variables


```haxe
import stdgo.context.Context
```


```haxe
var _cancelCtxKey:stdgo.GoInt
```



&cancelCtxKey is the key that a cancelCtx returns itself for.  

```haxe
var _closedchan:stdgo.Chan<stdgo.context.T_deadlineExceededError>
```



closedchan is a reusable closed channel.  

```haxe
var _goroutines:stdgo.sync.atomic.Int32
```



goroutines counts the number of goroutines ever created; for testing.  

```haxe
var canceled:stdgo.Error
```



Canceled is the error returned by \[Context.Err\] when the context is canceled.  

```haxe
var deadlineExceeded:stdgo.Error
```



DeadlineExceeded is the error returned by \[Context.Err\] when the context's
deadline passes.  

# Functions


```haxe
import stdgo.context.Context
```


## function \_contextName


```haxe
function _contextName(_c:stdgo.context.Context):stdgo.GoString
```


[\(view code\)](<./Context.hx#L593>)


## function \_parentCancelCtx


```haxe
function _parentCancelCtx(_parent:stdgo.context.Context):{
	_1:Bool;
	_0:stdgo.Ref<stdgo.context.T_cancelCtx>;
}
```



parentCancelCtx returns the underlying \*cancelCtx for parent.
It does this by looking up parent.Value\(&cancelCtxKey\) to find
the innermost enclosing \*cancelCtx and then checking whether
parent.Done\(\) matches that \*cancelCtx. \(If not, the \*cancelCtx
has been wrapped in a custom implementation providing a
different done channel, in which case we should not bypass it.\)  

[\(view code\)](<./Context.hx#L588>)


## function \_removeChild


```haxe
function _removeChild(_parent:stdgo.context.Context, _child:stdgo.context.T_canceler):Void
```



removeChild removes a context from its parent.  

[\(view code\)](<./Context.hx#L592>)


## function \_stringify


```haxe
function _stringify(_v:stdgo.AnyInterface):stdgo.GoString
```



stringify tries a bit to stringify v, without using fmt, since we don't
want context depending on the unicode tables. This is only used by
\*valueCtx.String\(\).  

[\(view code\)](<./Context.hx#L658>)


## function \_value


```haxe
function _value(_c:stdgo.context.Context, _key:stdgo.AnyInterface):stdgo.AnyInterface
```


[\(view code\)](<./Context.hx#L659>)


## function \_withCancel


```haxe
function _withCancel(_parent:stdgo.context.Context):stdgo.Ref<stdgo.context.T_cancelCtx>
```


[\(view code\)](<./Context.hx#L549>)


## function afterFunc


```haxe
function afterFunc(_ctx:stdgo.context.Context, _f:():Void):():Bool
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

[\(view code\)](<./Context.hx#L579>)


## function background


```haxe
function background():stdgo.context.Context
```



Background returns a non\-nil, empty \[Context\]. It is never canceled, has no
values, and has no deadline. It is typically used by the main function,
initialization, and tests, and as the top\-level Context for incoming
requests.  

[\(view code\)](<./Context.hx#L518>)


## function cause


```haxe
function cause(_c:stdgo.context.Context):stdgo.Error
```



Cause returns a non\-nil error explaining why c was canceled.
The first cancellation of c or one of its parents sets the cause.
If that cancellation happened via a call to CancelCauseFunc\(err\),
then \[Cause\] returns err.
Otherwise Cause\(c\) returns the same value as c.Err\(\).
Cause returns nil if c has not been canceled yet.  

[\(view code\)](<./Context.hx#L558>)


## function todo


```haxe
function todo():stdgo.context.Context
```



TODO returns a non\-nil, empty \[Context\]. Code should use context.TODO when
it's unclear which Context to use or it is not yet available \(because the
surrounding function has not yet been extended to accept a Context
parameter\).  

[\(view code\)](<./Context.hx#L525>)


## function withCancel


```haxe
function withCancel(_parent:stdgo.context.Context):{
	_1:stdgo.context.CancelFunc;
	_0:stdgo.context.Context;
}
```



WithCancel returns a copy of parent with a new Done channel. The returned
context's Done channel is closed when the returned cancel function is called
or when the parent context's Done channel is closed, whichever happens first.  


Canceling this context releases resources associated with it, so code should
call cancel as soon as the operations running in this Context complete.  

[\(view code\)](<./Context.hx#L534>)


## function withCancelCause


```haxe
function withCancelCause(_parent:stdgo.context.Context):{
	_1:stdgo.context.CancelCauseFunc;
	_0:stdgo.context.Context;
}
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
[\(view code\)](<./Context.hx#L548>)


## function withDeadline


```haxe
function withDeadline(_parent:stdgo.context.Context, _d:stdgo.time.Time):{
	_1:stdgo.context.CancelFunc;
	_0:stdgo.context.Context;
}
```



WithDeadline returns a copy of the parent context with the deadline adjusted
to be no later than d. If the parent's deadline is already earlier than d,
WithDeadline\(parent, d\) is semantically equivalent to parent. The returned
\[Context.Done\] channel is closed when the deadline expires, when the returned
cancel function is called, or when the parent context's Done channel is
closed, whichever happens first.  


Canceling this context releases resources associated with it, so code should
call cancel as soon as the operations running in this \[Context\] complete.  

[\(view code\)](<./Context.hx#L611>)


## function withDeadlineCause


```haxe
function withDeadlineCause(_parent:stdgo.context.Context, _d:stdgo.time.Time, _cause:stdgo.Error):{
	_1:stdgo.context.CancelFunc;
	_0:stdgo.context.Context;
}
```



WithDeadlineCause behaves like \[WithDeadline\] but also sets the cause of the
returned Context when the deadline is exceeded. The returned \[CancelFunc\] does
not set the cause.  

[\(view code\)](<./Context.hx#L617>)


## function withTimeout


```haxe
function withTimeout(_parent:stdgo.context.Context, _timeout:stdgo.time.Duration):{
	_1:stdgo.context.CancelFunc;
	_0:stdgo.context.Context;
}
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
[\(view code\)](<./Context.hx#L630>)


## function withTimeoutCause


```haxe
function withTimeoutCause(_parent:stdgo.context.Context, _timeout:stdgo.time.Duration, _cause:stdgo.Error):{
	_1:stdgo.context.CancelFunc;
	_0:stdgo.context.Context;
}
```



WithTimeoutCause behaves like \[WithTimeout\] but also sets the cause of the
returned Context when the timeout expires. The returned \[CancelFunc\] does
not set the cause.  

[\(view code\)](<./Context.hx#L636>)


## function withValue


```haxe
function withValue(_parent:stdgo.context.Context, _key:stdgo.AnyInterface, _val:stdgo.AnyInterface):stdgo.context.Context
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

[\(view code\)](<./Context.hx#L652>)


## function withoutCancel


```haxe
function withoutCancel(_parent:stdgo.context.Context):stdgo.context.Context
```



WithoutCancel returns a copy of parent that is not canceled when parent is canceled.
The returned context returns no Deadline or Err, and its Done channel is nil.
Calling \[Cause\] on the returned context returns nil.  

[\(view code\)](<./Context.hx#L599>)


# Typedefs


```haxe
import stdgo.context.*
```


## typedef CancelCauseFunc


```haxe
typedef CancelCauseFunc = ();
```



A CancelCauseFunc behaves like a \[CancelFunc\] but additionally sets the cancellation cause.
This cause can be retrieved by calling \[Cause\] on the canceled Context or on
any of its derived Contexts.  

```
 If the context has already been canceled, CancelCauseFunc does not set the cause.
 For example, if childContext is derived from parentContext:
   - if parentContext is canceled with cause1 before childContext is canceled with cause2,
     then Cause(parentContext) == Cause(childContext) == cause1
   - if childContext is canceled with cause2 before parentContext is canceled with cause1,
     then Cause(parentContext) == cause1 and Cause(childContext) == cause2
```
## typedef CancelFunc


```haxe
typedef CancelFunc = ():Void;
```



A CancelFunc tells an operation to abandon its work.
A CancelFunc does not wait for the work to stop.
A CancelFunc may be called by multiple goroutines simultaneously.
After the first call, subsequent calls to a CancelFunc do nothing.  

## typedef Context


```haxe
typedef Context = {
	public function value(_key:stdgo.AnyInterface):stdgo.AnyInterface;	//  Value returns the value associated with this context for key, or nil if no value is associated with key. Successive calls to Value with the same key returns the same result. Use context values only for request-scoped data that transits processes and API boundaries, not for passing optional parameters to functions. A key identifies a specific value in a Context. Functions that wish to store values in Context typically allocate a key in a global variable then use that key as the argument to context.WithValue and Context.Value. A key can be any type that supports equality; packages should define keys as an unexported type to avoid collisions. Packages that define a Context key should provide type-safe accessors for the values stored using that key: Package user defines a User type that's stored in Contexts. package user import "context" User is the type of value stored in the Contexts. type User struct {...} key is an unexported type for keys defined in this package. This prevents collisions with keys defined in other packages. type key int userKey is the key for user.User values in Contexts. It is unexported; clients use user.NewContext and user.FromContext instead of using this key directly. var userKey key NewContext returns a new Context that carries value u. func NewContext(ctx context.Context, u *User) context.Context { return context.WithValue(ctx, userKey, u) } FromContext returns the User value stored in ctx, if any. func FromContext(ctx context.Context) (*User, bool) { u, ok := ctx.Value(userKey).(*User) return u, ok }
	public function err():stdgo.Error;	//  If Done is not yet closed, Err returns nil. If Done is closed, Err returns a non-nil error explaining why: Canceled if the context was canceled or DeadlineExceeded if the context's deadline passed. After Err returns a non-nil error, successive calls to Err return the same error.
	public function done():stdgo.Chan<stdgo.context.T__struct_0>;	//  Done returns a channel that's closed when work done on behalf of this context should be canceled. Done may return nil if this context can never be canceled. Successive calls to Done return the same value. The close of the Done channel may happen asynchronously, after the cancel function returns. WithCancel arranges for Done to be closed when cancel is called; WithDeadline arranges for Done to be closed when the deadline expires; WithTimeout arranges for Done to be closed when the timeout elapses. Done is provided for use in select statements: Stream generates values with DoSomething and sends them to out until DoSomething returns an error or ctx.Done is closed. func Stream(ctx context.Context, out chan<- Value) error { for { v, err := DoSomething(ctx) if err != nil { return err } select { case <-ctx.Done(): return ctx.Err() case out <- v: } } } See https: blog.golang.org/pipelines for more examples of how to use a Done channel for cancellation.
	public function deadline():{
		_1:Bool;
		_0:stdgo.time.Time;
	};	//  Deadline returns the time when work done on behalf of this context should be canceled. Deadline returns ok==false when no deadline is set. Successive calls to Deadline return the same results.
};
```



A Context carries a deadline, a cancellation signal, and other values across
API boundaries.  


Context's methods may be called by multiple goroutines simultaneously.  

## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = {
};
```


## typedef T\_afterFuncer


```haxe
typedef T_afterFuncer = {
	public function afterFunc(_0:():Void):():Bool;
};
```


## typedef T\_canceler


```haxe
typedef T_canceler = {
	public function done():stdgo.Chan<stdgo.context.T__struct_0>;
	public function _cancel(_removeFromParent:Bool, _err:stdgo.Error, _cause:stdgo.Error):Void;
};
```



A canceler is a context type that can be canceled directly. The
implementations are \*cancelCtx and \*timerCtx.  

## typedef T\_stringer


```haxe
typedef T_stringer = {
	public function string():stdgo.GoString;
};
```


