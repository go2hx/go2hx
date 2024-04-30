# Module: `stdgo._internal.context`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _contextName(_c:stdgo._internal.context.Context):stdgo.GoString`](<#function-_contextname>)

- [`function _parentCancelCtx(_parent:stdgo._internal.context.Context):{
	_1:Bool;
	_0:stdgo.Ref<stdgo._internal.context.T_cancelCtx>;
}`](<#function-_parentcancelctx>)

- [`function _removeChild(_parent:stdgo._internal.context.Context, _child:stdgo._internal.context.T_canceler):Void`](<#function-_removechild>)

- [`function _stringify(_v:stdgo.AnyInterface):stdgo.GoString`](<#function-_stringify>)

- [`function _value(_c:stdgo._internal.context.Context, _key:stdgo.AnyInterface):stdgo.AnyInterface`](<#function-_value>)

- [`function _withCancel(_parent:stdgo._internal.context.Context):stdgo.Ref<stdgo._internal.context.T_cancelCtx>`](<#function-_withcancel>)

- [`function afterFunc(_ctx:stdgo._internal.context.Context, _f:():Void):():Bool`](<#function-afterfunc>)

- [`function background():stdgo._internal.context.Context`](<#function-background>)

- [`function cause(_c:stdgo._internal.context.Context):stdgo.Error`](<#function-cause>)

- [`function todo():stdgo._internal.context.Context`](<#function-todo>)

- [`function withCancel(_parent:stdgo._internal.context.Context):{
	_1:stdgo._internal.context.CancelFunc;
	_0:stdgo._internal.context.Context;
}`](<#function-withcancel>)

- [`function withCancelCause(_parent:stdgo._internal.context.Context):{
	_1:stdgo._internal.context.CancelCauseFunc;
	_0:stdgo._internal.context.Context;
}`](<#function-withcancelcause>)

- [`function withDeadline(_parent:stdgo._internal.context.Context, _d:stdgo._internal.time.Time):{
	_1:stdgo._internal.context.CancelFunc;
	_0:stdgo._internal.context.Context;
}`](<#function-withdeadline>)

- [`function withDeadlineCause(_parent:stdgo._internal.context.Context, _d:stdgo._internal.time.Time, _cause:stdgo.Error):{
	_1:stdgo._internal.context.CancelFunc;
	_0:stdgo._internal.context.Context;
}`](<#function-withdeadlinecause>)

- [`function withTimeout(_parent:stdgo._internal.context.Context, _timeout:stdgo._internal.time.Duration):{
	_1:stdgo._internal.context.CancelFunc;
	_0:stdgo._internal.context.Context;
}`](<#function-withtimeout>)

- [`function withTimeoutCause(_parent:stdgo._internal.context.Context, _timeout:stdgo._internal.time.Duration, _cause:stdgo.Error):{
	_1:stdgo._internal.context.CancelFunc;
	_0:stdgo._internal.context.Context;
}`](<#function-withtimeoutcause>)

- [`function withValue(_parent:stdgo._internal.context.Context, _key:stdgo.AnyInterface, _val:stdgo.AnyInterface):stdgo._internal.context.Context`](<#function-withvalue>)

- [`function withoutCancel(_parent:stdgo._internal.context.Context):stdgo._internal.context.Context`](<#function-withoutcancel>)

- [typedef CancelCauseFunc](<#typedef-cancelcausefunc>)

- [typedef CancelFunc](<#typedef-cancelfunc>)

- [typedef Context](<#typedef-context>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_afterFuncer](<#typedef-t_afterfuncer>)

- [typedef T\_canceler](<#typedef-t_canceler>)

- [typedef T\_stringer](<#typedef-t_stringer>)

# Variables


```haxe
import stdgo._internal.context.Context
```


```haxe
var _cancelCtxKey:stdgo.GoInt
```


```haxe
var _closedchan:stdgo.Chan<stdgo._internal.context.T_deadlineExceededError>
```


```haxe
var _goroutines:stdgo._internal.sync.atomic_.Int32
```


```haxe
var canceled:stdgo.Error
```


```haxe
var deadlineExceeded:stdgo.Error
```


# Functions


```haxe
import stdgo._internal.context.Context
```


## function \_contextName


```haxe
function _contextName(_c:stdgo._internal.context.Context):stdgo.GoString
```


[\(view code\)](<./Context.hx#L361>)


## function \_parentCancelCtx


```haxe
function _parentCancelCtx(_parent:stdgo._internal.context.Context):{
	_1:Bool;
	_0:stdgo.Ref<stdgo._internal.context.T_cancelCtx>;
}
```


[\(view code\)](<./Context.hx#L359>)


## function \_removeChild


```haxe
function _removeChild(_parent:stdgo._internal.context.Context, _child:stdgo._internal.context.T_canceler):Void
```


[\(view code\)](<./Context.hx#L360>)


## function \_stringify


```haxe
function _stringify(_v:stdgo.AnyInterface):stdgo.GoString
```


[\(view code\)](<./Context.hx#L368>)


## function \_value


```haxe
function _value(_c:stdgo._internal.context.Context, _key:stdgo.AnyInterface):stdgo.AnyInterface
```


[\(view code\)](<./Context.hx#L369>)


## function \_withCancel


```haxe
function _withCancel(_parent:stdgo._internal.context.Context):stdgo.Ref<stdgo._internal.context.T_cancelCtx>
```


[\(view code\)](<./Context.hx#L356>)


## function afterFunc


```haxe
function afterFunc(_ctx:stdgo._internal.context.Context, _f:():Void):():Bool
```


[\(view code\)](<./Context.hx#L358>)


## function background


```haxe
function background():stdgo._internal.context.Context
```


[\(view code\)](<./Context.hx#L352>)


## function cause


```haxe
function cause(_c:stdgo._internal.context.Context):stdgo.Error
```


[\(view code\)](<./Context.hx#L357>)


## function todo


```haxe
function todo():stdgo._internal.context.Context
```


[\(view code\)](<./Context.hx#L353>)


## function withCancel


```haxe
function withCancel(_parent:stdgo._internal.context.Context):{
	_1:stdgo._internal.context.CancelFunc;
	_0:stdgo._internal.context.Context;
}
```


[\(view code\)](<./Context.hx#L354>)


## function withCancelCause


```haxe
function withCancelCause(_parent:stdgo._internal.context.Context):{
	_1:stdgo._internal.context.CancelCauseFunc;
	_0:stdgo._internal.context.Context;
}
```


[\(view code\)](<./Context.hx#L355>)


## function withDeadline


```haxe
function withDeadline(_parent:stdgo._internal.context.Context, _d:stdgo._internal.time.Time):{
	_1:stdgo._internal.context.CancelFunc;
	_0:stdgo._internal.context.Context;
}
```


[\(view code\)](<./Context.hx#L363>)


## function withDeadlineCause


```haxe
function withDeadlineCause(_parent:stdgo._internal.context.Context, _d:stdgo._internal.time.Time, _cause:stdgo.Error):{
	_1:stdgo._internal.context.CancelFunc;
	_0:stdgo._internal.context.Context;
}
```


[\(view code\)](<./Context.hx#L364>)


## function withTimeout


```haxe
function withTimeout(_parent:stdgo._internal.context.Context, _timeout:stdgo._internal.time.Duration):{
	_1:stdgo._internal.context.CancelFunc;
	_0:stdgo._internal.context.Context;
}
```


[\(view code\)](<./Context.hx#L365>)


## function withTimeoutCause


```haxe
function withTimeoutCause(_parent:stdgo._internal.context.Context, _timeout:stdgo._internal.time.Duration, _cause:stdgo.Error):{
	_1:stdgo._internal.context.CancelFunc;
	_0:stdgo._internal.context.Context;
}
```


[\(view code\)](<./Context.hx#L366>)


## function withValue


```haxe
function withValue(_parent:stdgo._internal.context.Context, _key:stdgo.AnyInterface, _val:stdgo.AnyInterface):stdgo._internal.context.Context
```


[\(view code\)](<./Context.hx#L367>)


## function withoutCancel


```haxe
function withoutCancel(_parent:stdgo._internal.context.Context):stdgo._internal.context.Context
```


[\(view code\)](<./Context.hx#L362>)


# Typedefs


```haxe
import stdgo._internal.context.*
```


## typedef CancelCauseFunc


```haxe
typedef CancelCauseFunc = ();
```


## typedef CancelFunc


```haxe
typedef CancelFunc = ():Void;
```


## typedef Context


```haxe
typedef Context = {
	public function value(_key:stdgo.AnyInterface):stdgo.AnyInterface;	// Value returns the value associated with this context for key, or nil if no value is associated with key. Successive calls to Value with the same key returns the same result. Use context values only for request-scoped data that transits processes and API boundaries, not for passing optional parameters to functions. A key identifies a specific value in a Context. Functions that wish to store values in Context typically allocate a key in a global variable then use that key as the argument to context.WithValue and Context.Value. A key can be any type that supports equality; packages should define keys as an unexported type to avoid collisions. Packages that define a Context key should provide type-safe accessors for the values stored using that key: Package user defines a User type that's stored in Contexts. package user import "context" User is the type of value stored in the Contexts. type User struct {...} key is an unexported type for keys defined in this package. This prevents collisions with keys defined in other packages. type key int userKey is the key for user.User values in Contexts. It is unexported; clients use user.NewContext and user.FromContext instead of using this key directly. var userKey key NewContext returns a new Context that carries value u. func NewContext(ctx context.Context, u *User) context.Context { return context.WithValue(ctx, userKey, u) } FromContext returns the User value stored in ctx, if any. func FromContext(ctx context.Context) (*User, bool) { u, ok := ctx.Value(userKey).(*User) return u, ok }
	public function err():stdgo.Error;	// If Done is not yet closed, Err returns nil. If Done is closed, Err returns a non-nil error explaining why: Canceled if the context was canceled or DeadlineExceeded if the context's deadline passed. After Err returns a non-nil error, successive calls to Err return the same error.
	public function done():stdgo.Chan<stdgo._internal.context.T__struct_0>;	// Done returns a channel that's closed when work done on behalf of this context should be canceled. Done may return nil if this context can never be canceled. Successive calls to Done return the same value. The close of the Done channel may happen asynchronously, after the cancel function returns. WithCancel arranges for Done to be closed when cancel is called; WithDeadline arranges for Done to be closed when the deadline expires; WithTimeout arranges for Done to be closed when the timeout elapses. Done is provided for use in select statements: Stream generates values with DoSomething and sends them to out until DoSomething returns an error or ctx.Done is closed. func Stream(ctx context.Context, out chan<- Value) error { for { v, err := DoSomething(ctx) if err != nil { return err } select { case <-ctx.Done(): return ctx.Err() case out <- v: } } } See https: blog.golang.org/pipelines for more examples of how to use a Done channel for cancellation.
	public function deadline():{
		_1:Bool;
		_0:stdgo._internal.time.Time;
	};	// Deadline returns the time when work done on behalf of this context should be canceled. Deadline returns ok==false when no deadline is set. Successive calls to Deadline return the same results.
};
```


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
	public function done():stdgo.Chan<stdgo._internal.context.T__struct_0>;
	public function _cancel(_removeFromParent:Bool, _err:stdgo.Error, _cause:stdgo.Error):Void;
};
```


## typedef T\_stringer


```haxe
typedef T_stringer = {
	public function string():stdgo.GoString;
};
```


