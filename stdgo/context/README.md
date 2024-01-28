# Module: `stdgo.context`

[(view library index)](../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _contextName(_c:stdgo.context.Context):Void`](<#function-_contextname>)

- [`function _parentCancelCtx(_parent:stdgo.context.Context):Void`](<#function-_parentcancelctx>)

- [`function _removeChild(_parent:stdgo.context.Context, _child:stdgo.context.T_canceler):Void`](<#function-_removechild>)

- [`function _stringify(_v:stdgo.AnyInterface):Void`](<#function-_stringify>)

- [`function _value(_c:stdgo.context.Context, _key:stdgo.AnyInterface):Void`](<#function-_value>)

- [`function _withCancel(_parent:stdgo.context.Context):Void`](<#function-_withcancel>)

- [`function afterFunc(_ctx:stdgo.context.Context, _f:():Void):Void`](<#function-afterfunc>)

- [`function background():Void`](<#function-background>)

- [`function cause(_c:stdgo.context.Context):Void`](<#function-cause>)

- [`function todo():Void`](<#function-todo>)

- [`function withCancel(_parent:stdgo.context.Context):Void`](<#function-withcancel>)

- [`function withCancelCause(_parent:stdgo.context.Context):Void`](<#function-withcancelcause>)

- [`function withDeadline(_parent:stdgo.context.Context, _d:stdgo._internal.time.Time):Void`](<#function-withdeadline>)

- [`function withDeadlineCause(_parent:stdgo.context.Context, _d:stdgo._internal.time.Time, _cause:stdgo.Error):Void`](<#function-withdeadlinecause>)

- [`function withTimeout(_parent:stdgo.context.Context, _timeout:stdgo._internal.time.Duration):Void`](<#function-withtimeout>)

- [`function withTimeoutCause(_parent:stdgo.context.Context, _timeout:stdgo._internal.time.Duration, _cause:stdgo.Error):Void`](<#function-withtimeoutcause>)

- [`function withValue(_parent:stdgo.context.Context, _key:stdgo.AnyInterface, _val:stdgo.AnyInterface):Void`](<#function-withvalue>)

- [`function withoutCancel(_parent:stdgo.context.Context):Void`](<#function-withoutcancel>)

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
var __go2hxdoc__package:Dynamic
```


```haxe
var _cancelCtxKey:Dynamic
```


```haxe
var _closedchan:Dynamic
```


```haxe
var _goroutines:Dynamic
```


```haxe
var canceled:Dynamic
```


```haxe
var deadlineExceeded:Dynamic
```


# Functions


```haxe
import stdgo.context.Context
```


## function \_contextName


```haxe
function _contextName(_c:stdgo.context.Context):Void
```


[\(view code\)](<./Context.hx#L36>)


## function \_parentCancelCtx


```haxe
function _parentCancelCtx(_parent:stdgo.context.Context):Void
```


[\(view code\)](<./Context.hx#L34>)


## function \_removeChild


```haxe
function _removeChild(_parent:stdgo.context.Context, _child:stdgo.context.T_canceler):Void
```


[\(view code\)](<./Context.hx#L35>)


## function \_stringify


```haxe
function _stringify(_v:stdgo.AnyInterface):Void
```


[\(view code\)](<./Context.hx#L43>)


## function \_value


```haxe
function _value(_c:stdgo.context.Context, _key:stdgo.AnyInterface):Void
```


[\(view code\)](<./Context.hx#L44>)


## function \_withCancel


```haxe
function _withCancel(_parent:stdgo.context.Context):Void
```


[\(view code\)](<./Context.hx#L31>)


## function afterFunc


```haxe
function afterFunc(_ctx:stdgo.context.Context, _f:():Void):Void
```


[\(view code\)](<./Context.hx#L33>)


## function background


```haxe
function background():Void
```


[\(view code\)](<./Context.hx#L27>)


## function cause


```haxe
function cause(_c:stdgo.context.Context):Void
```


[\(view code\)](<./Context.hx#L32>)


## function todo


```haxe
function todo():Void
```


[\(view code\)](<./Context.hx#L28>)


## function withCancel


```haxe
function withCancel(_parent:stdgo.context.Context):Void
```


[\(view code\)](<./Context.hx#L29>)


## function withCancelCause


```haxe
function withCancelCause(_parent:stdgo.context.Context):Void
```


[\(view code\)](<./Context.hx#L30>)


## function withDeadline


```haxe
function withDeadline(_parent:stdgo.context.Context, _d:stdgo._internal.time.Time):Void
```


[\(view code\)](<./Context.hx#L38>)


## function withDeadlineCause


```haxe
function withDeadlineCause(_parent:stdgo.context.Context, _d:stdgo._internal.time.Time, _cause:stdgo.Error):Void
```


[\(view code\)](<./Context.hx#L39>)


## function withTimeout


```haxe
function withTimeout(_parent:stdgo.context.Context, _timeout:stdgo._internal.time.Duration):Void
```


[\(view code\)](<./Context.hx#L40>)


## function withTimeoutCause


```haxe
function withTimeoutCause(_parent:stdgo.context.Context, _timeout:stdgo._internal.time.Duration, _cause:stdgo.Error):Void
```


[\(view code\)](<./Context.hx#L41>)


## function withValue


```haxe
function withValue(_parent:stdgo.context.Context, _key:stdgo.AnyInterface, _val:stdgo.AnyInterface):Void
```


[\(view code\)](<./Context.hx#L42>)


## function withoutCancel


```haxe
function withoutCancel(_parent:stdgo.context.Context):Void
```


[\(view code\)](<./Context.hx#L37>)


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


