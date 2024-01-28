package stdgo.context;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var canceled : Dynamic;
@:invalid var deadlineExceeded : Dynamic;
@:invalid var _closedchan : Dynamic;
@:invalid var _goroutines : Dynamic;
@:invalid var _cancelCtxKey : Dynamic;
typedef Context = stdgo._internal.context.Context.Context;
typedef T_afterFuncer = stdgo._internal.context.Context.T_afterFuncer;
typedef T_canceler = stdgo._internal.context.Context.T_canceler;
typedef T_stringer = stdgo._internal.context.Context.T_stringer;
@:invalid typedef T_deadlineExceededError = Dynamic;
@:invalid typedef T_emptyCtx = Dynamic;
@:invalid typedef T_backgroundCtx = Dynamic;
@:invalid typedef T_todoCtx = Dynamic;
@:invalid typedef T_afterFuncCtx = Dynamic;
@:invalid typedef T_stopCtx = Dynamic;
@:invalid typedef T_cancelCtx = Dynamic;
@:invalid typedef T_withoutCancelCtx = Dynamic;
@:invalid typedef T_timerCtx = Dynamic;
@:invalid typedef T_valueCtx = Dynamic;
@:invalid typedef T__struct_0_asInterface = Dynamic;
@:invalid typedef T__struct_0_static_extension = Dynamic;
typedef T__struct_0 = stdgo._internal.context.Context.T__struct_0;
typedef CancelFunc = stdgo._internal.context.Context.CancelFunc;
typedef CancelCauseFunc = stdgo._internal.context.Context.CancelCauseFunc;
function background():Void {}
function todo():Void {}
function withCancel(_parent:Context):Void {}
function withCancelCause(_parent:Context):Void {}
function _withCancel(_parent:Context):Void {}
function cause(_c:Context):Void {}
function afterFunc(_ctx:Context, _f:() -> Void):Void {}
function _parentCancelCtx(_parent:Context):Void {}
function _removeChild(_parent:Context, _child:T_canceler):Void {}
function _contextName(_c:Context):Void {}
function withoutCancel(_parent:Context):Void {}
function withDeadline(_parent:Context, _d:stdgo._internal.time.Time.Time):Void {}
function withDeadlineCause(_parent:Context, _d:stdgo._internal.time.Time.Time, _cause:stdgo.Error):Void {}
function withTimeout(_parent:Context, _timeout:stdgo._internal.time.Time.Duration):Void {}
function withTimeoutCause(_parent:Context, _timeout:stdgo._internal.time.Time.Duration, _cause:stdgo.Error):Void {}
function withValue(_parent:Context, _key:stdgo.AnyInterface, _val:stdgo.AnyInterface):Void {}
function _stringify(_v:stdgo.AnyInterface):Void {}
function _value(_c:Context, _key:stdgo.AnyInterface):Void {}
@:invalid typedef T_deadlineExceededError_asInterface = Dynamic;
@:invalid typedef T_deadlineExceededError_static_extension = Dynamic;
@:invalid typedef T_emptyCtx_asInterface = Dynamic;
@:invalid typedef T_emptyCtx_static_extension = Dynamic;
@:invalid typedef T_backgroundCtx_asInterface = Dynamic;
@:invalid typedef T_backgroundCtx_static_extension = Dynamic;
@:invalid typedef T_todoCtx_asInterface = Dynamic;
@:invalid typedef T_todoCtx_static_extension = Dynamic;
@:invalid typedef T_afterFuncCtx_asInterface = Dynamic;
@:invalid typedef T_afterFuncCtx_static_extension = Dynamic;
@:invalid typedef T_stopCtx_asInterface = Dynamic;
@:invalid typedef T_stopCtx_static_extension = Dynamic;
@:invalid typedef T_cancelCtx_asInterface = Dynamic;
@:invalid typedef T_cancelCtx_static_extension = Dynamic;
@:invalid typedef T_withoutCancelCtx_asInterface = Dynamic;
@:invalid typedef T_withoutCancelCtx_static_extension = Dynamic;
@:invalid typedef T_timerCtx_asInterface = Dynamic;
@:invalid typedef T_timerCtx_static_extension = Dynamic;
@:invalid typedef T_valueCtx_asInterface = Dynamic;
@:invalid typedef T_valueCtx_static_extension = Dynamic;
