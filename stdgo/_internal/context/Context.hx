package stdgo._internal.context;
private var __go2hxdoc__package : Bool;
var _goroutines : stdgo._internal.sync.atomic_.Atomic_.Int32 = ({} : stdgo._internal.sync.atomic_.Atomic_.Int32);
var _cancelCtxKey : stdgo.GoInt = (0 : stdgo.GoInt);
var canceled : stdgo.Error = (null : stdgo.Error);
var deadlineExceeded : stdgo.Error = (null : stdgo.Error);
var _closedchan : stdgo.Chan<T_deadlineExceededError> = (null : stdgo.Chan<T_deadlineExceededError>);
@:keep class Context_static_extension {
    static public function value(t:Context, _key:stdgo.AnyInterface):stdgo.AnyInterface return t.value(_key);
    static public function err(t:Context):stdgo.Error return t.err();
    static public function done(t:Context):stdgo.Chan<T__struct_0> return t.done();
    static public function deadline(t:Context):{ var _0 : stdgo._internal.time.Time.Time; var _1 : Bool; } return t.deadline();
}
typedef Context = stdgo.StructType & {
    /**
        Deadline returns the time when work done on behalf of this context
        should be canceled. Deadline returns ok==false when no deadline is
        set. Successive calls to Deadline return the same results.
        
        
    **/
    public dynamic function deadline():{ var _0 : stdgo._internal.time.Time.Time; var _1 : Bool; };
    /**
        Done returns a channel that's closed when work done on behalf of this
        context should be canceled. Done may return nil if this context can
        never be canceled. Successive calls to Done return the same value.
        The close of the Done channel may happen asynchronously,
        after the cancel function returns.
        
        WithCancel arranges for Done to be closed when cancel is called;
        WithDeadline arranges for Done to be closed when the deadline
        expires; WithTimeout arranges for Done to be closed when the timeout
        elapses.
        
        Done is provided for use in select statements:
        
         // Stream generates values with DoSomething and sends them to out
         // until DoSomething returns an error or ctx.Done is closed.
         func Stream(ctx context.Context, out chan<- Value) error {
         	for {
         		v, err := DoSomething(ctx)
         		if err != nil {
         			return err
         		}
         		select {
         		case <-ctx.Done():
         			return ctx.Err()
         		case out <- v:
         		}
         	}
         }
        
        See https://blog.golang.org/pipelines for more examples of how to use
        a Done channel for cancellation.
        
        
    **/
    public dynamic function done():stdgo.Chan<T__struct_0>;
    /**
        If Done is not yet closed, Err returns nil.
        If Done is closed, Err returns a non-nil error explaining why:
        Canceled if the context was canceled
        or DeadlineExceeded if the context's deadline passed.
        After Err returns a non-nil error, successive calls to Err return the same error.
        
        
    **/
    public dynamic function err():stdgo.Error;
    /**
        Value returns the value associated with this context for key, or nil
        if no value is associated with key. Successive calls to Value with
        the same key returns the same result.
        
        Use context values only for request-scoped data that transits
        processes and API boundaries, not for passing optional parameters to
        functions.
        
        A key identifies a specific value in a Context. Functions that wish
        to store values in Context typically allocate a key in a global
        variable then use that key as the argument to context.WithValue and
        Context.Value. A key can be any type that supports equality;
        packages should define keys as an unexported type to avoid
        collisions.
        
        Packages that define a Context key should provide type-safe accessors
        for the values stored using that key:
        
        	// Package user defines a User type that's stored in Contexts.
        	package user
        
        	import "context"
        
        	// User is the type of value stored in the Contexts.
        	type User struct {...}
        
        	// key is an unexported type for keys defined in this package.
        	// This prevents collisions with keys defined in other packages.
        	type key int
        
        	// userKey is the key for user.User values in Contexts. It is
        	// unexported; clients use user.NewContext and user.FromContext
        	// instead of using this key directly.
        	var userKey key
        
        	// NewContext returns a new Context that carries value u.
        	func NewContext(ctx context.Context, u *User) context.Context {
        		return context.WithValue(ctx, userKey, u)
        	}
        
        	// FromContext returns the User value stored in ctx, if any.
        	func FromContext(ctx context.Context) (*User, bool) {
        		u, ok := ctx.Value(userKey).(*User)
        		return u, ok
        	}
        
        
    **/
    public dynamic function value(_key:stdgo.AnyInterface):stdgo.AnyInterface;
};
@:keep class T_afterFuncer_static_extension {
    static public function afterFunc(t:T_afterFuncer, _0:() -> Void):() -> Bool return t.afterFunc(_0);
}
typedef T_afterFuncer = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function afterFunc(_0:() -> Void):() -> Bool;
};
@:keep class T_canceler_static_extension {
    static public function done(t:T_canceler):stdgo.Chan<T__struct_0> return t.done();
    static public function _cancel(t:T_canceler, _removeFromParent:Bool, _err:stdgo.Error, _cause:stdgo.Error):Void t._cancel(_removeFromParent, _err, _cause);
}
typedef T_canceler = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function _cancel(_removeFromParent:Bool, _err:stdgo.Error, _cause:stdgo.Error):Void;
    /**
        
        
        
    **/
    public dynamic function done():stdgo.Chan<T__struct_0>;
};
@:keep class T_stringer_static_extension {
    static public function string(t:T_stringer):stdgo.GoString return t.string();
}
typedef T_stringer = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function string():stdgo.GoString;
};
@:structInit @:private @:using(stdgo._internal.context.Context.T_deadlineExceededError_static_extension) class T_deadlineExceededError {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_deadlineExceededError();
    }
}
@:structInit @:private @:using(stdgo._internal.context.Context.T_emptyCtx_static_extension) class T_emptyCtx {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_emptyCtx();
    }
}
@:structInit @:private @:using(stdgo._internal.context.Context.T_backgroundCtx_static_extension) class T_backgroundCtx {
    @:embedded
    public var _emptyCtx : stdgo._internal.context.Context.T_emptyCtx = ({} : stdgo._internal.context.Context.T_emptyCtx);
    public function new(?_emptyCtx:stdgo._internal.context.Context.T_emptyCtx) {
        if (_emptyCtx != null) this._emptyCtx = _emptyCtx;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function deadline():{ var _0 : stdgo._internal.time.Time.Time; var _1 : Bool; } return @:typeType null;
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
@:structInit @:private @:using(stdgo._internal.context.Context.T_todoCtx_static_extension) class T_todoCtx {
    @:embedded
    public var _emptyCtx : stdgo._internal.context.Context.T_emptyCtx = ({} : stdgo._internal.context.Context.T_emptyCtx);
    public function new(?_emptyCtx:stdgo._internal.context.Context.T_emptyCtx) {
        if (_emptyCtx != null) this._emptyCtx = _emptyCtx;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function deadline():{ var _0 : stdgo._internal.time.Time.Time; var _1 : Bool; } return @:typeType null;
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
@:structInit @:private @:using(stdgo._internal.context.Context.T_afterFuncCtx_static_extension) class T_afterFuncCtx {
    @:embedded
    public var _cancelCtx : stdgo._internal.context.Context.T_cancelCtx = ({} : stdgo._internal.context.Context.T_cancelCtx);
    public var _once : stdgo._internal.sync.Sync.Once = ({} : stdgo._internal.sync.Sync.Once);
    public var _f : () -> Void = null;
    public function new(?_cancelCtx:stdgo._internal.context.Context.T_cancelCtx, ?_once:stdgo._internal.sync.Sync.Once, ?_f:() -> Void) {
        if (_cancelCtx != null) this._cancelCtx = _cancelCtx;
        if (_once != null) this._once = _once;
        if (_f != null) this._f = _f;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function deadline():{ var _0 : stdgo._internal.time.Time.Time; var _1 : Bool; } return @:typeType null;
    @:embedded
    public function done():stdgo.Chan<T_deadlineExceededError> return (null : stdgo.Chan<T_deadlineExceededError>);
    @:embedded
    public function err():stdgo.Error return (null : stdgo.Error);
    @:embedded
    public function string():stdgo.GoString return ("" : stdgo.GoString);
    @:embedded
    public function value(_key_:stdgo.AnyInterface):stdgo.AnyInterface return (null : stdgo.AnyInterface);
    @:embedded
    public function _propagateCancel(_parent:stdgo._internal.context.Context.Context, _child:stdgo._internal.context.Context.T_canceler) @:typeType null;
    public function __copy__() {
        return new T_afterFuncCtx(_cancelCtx, _once, _f);
    }
}
@:structInit @:private @:using(stdgo._internal.context.Context.T_stopCtx_static_extension) class T_stopCtx {
    @:embedded
    public var context : stdgo._internal.context.Context.Context = (null : stdgo._internal.context.Context.Context);
    public var _stop : () -> Bool = null;
    public function new(?context:stdgo._internal.context.Context.Context, ?_stop:() -> Bool) {
        if (context != null) this.context = context;
        if (_stop != null) this._stop = _stop;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function deadline():{ var _0 : stdgo._internal.time.Time.Time; var _1 : Bool; } return @:typeType null;
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
@:structInit @:private @:using(stdgo._internal.context.Context.T_cancelCtx_static_extension) class T_cancelCtx {
    @:embedded
    public var context : stdgo._internal.context.Context.Context = (null : stdgo._internal.context.Context.Context);
    public var _mu : stdgo._internal.sync.Sync.Mutex = ({} : stdgo._internal.sync.Sync.Mutex);
    public var _done : stdgo._internal.sync.atomic_.Atomic_.Value = ({} : stdgo._internal.sync.atomic_.Atomic_.Value);
    public var _children : stdgo.GoMap<stdgo._internal.context.Context.T_canceler, T_deadlineExceededError> = (null : stdgo.GoMap<stdgo._internal.context.Context.T_canceler, T_deadlineExceededError>);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _cause : stdgo.Error = (null : stdgo.Error);
    public function new(?context:stdgo._internal.context.Context.Context, ?_mu:stdgo._internal.sync.Sync.Mutex, ?_done:stdgo._internal.sync.atomic_.Atomic_.Value, ?_children:stdgo.GoMap<stdgo._internal.context.Context.T_canceler, T_deadlineExceededError>, ?_err:stdgo.Error, ?_cause:stdgo.Error) {
        if (context != null) this.context = context;
        if (_mu != null) this._mu = _mu;
        if (_done != null) this._done = _done;
        if (_children != null) this._children = _children;
        if (_err != null) this._err = _err;
        if (_cause != null) this._cause = _cause;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function deadline():{ var _0 : stdgo._internal.time.Time.Time; var _1 : Bool; } return @:typeType null;
    public function __copy__() {
        return new T_cancelCtx(context, _mu, _done, _children, _err, _cause);
    }
}
@:structInit @:private @:using(stdgo._internal.context.Context.T_withoutCancelCtx_static_extension) class T_withoutCancelCtx {
    public var _c : stdgo._internal.context.Context.Context = (null : stdgo._internal.context.Context.Context);
    public function new(?_c:stdgo._internal.context.Context.Context) {
        if (_c != null) this._c = _c;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_withoutCancelCtx(_c);
    }
}
@:structInit @:private @:using(stdgo._internal.context.Context.T_timerCtx_static_extension) class T_timerCtx {
    @:embedded
    public var _cancelCtx : stdgo._internal.context.Context.T_cancelCtx = ({} : stdgo._internal.context.Context.T_cancelCtx);
    public var _timer : stdgo.Ref<stdgo._internal.time.Time.Timer> = (null : stdgo.Ref<stdgo._internal.time.Time.Timer>);
    public var _deadline : stdgo._internal.time.Time.Time = ({} : stdgo._internal.time.Time.Time);
    public function new(?_cancelCtx:stdgo._internal.context.Context.T_cancelCtx, ?_timer:stdgo.Ref<stdgo._internal.time.Time.Timer>, ?_deadline:stdgo._internal.time.Time.Time) {
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
    public function _propagateCancel(_parent:stdgo._internal.context.Context.Context, _child:stdgo._internal.context.Context.T_canceler) @:typeType null;
    public function __copy__() {
        return new T_timerCtx(_cancelCtx, _timer, _deadline);
    }
}
@:structInit @:private @:using(stdgo._internal.context.Context.T_valueCtx_static_extension) class T_valueCtx {
    @:embedded
    public var context : stdgo._internal.context.Context.Context = (null : stdgo._internal.context.Context.Context);
    public var _key : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _val : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?context:stdgo._internal.context.Context.Context, ?_key:stdgo.AnyInterface, ?_val:stdgo.AnyInterface) {
        if (context != null) this.context = context;
        if (_key != null) this._key = _key;
        if (_val != null) this._val = _val;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function deadline():{ var _0 : stdgo._internal.time.Time.Time; var _1 : Bool; } return @:typeType null;
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
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.context.Context.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo._internal.context.Context.T__struct_0_static_extension) typedef T__struct_0 = {};
@:named typedef CancelFunc = () -> Void;
@:named typedef CancelCauseFunc = stdgo.Error -> Void;
function background():Context throw ":context.background is not yet implemented";
function todo():Context throw ":context.todo is not yet implemented";
function withCancel(_parent:Context):{ var _0 : Context; var _1 : CancelFunc; } throw ":context.withCancel is not yet implemented";
function withCancelCause(_parent:Context):{ var _0 : Context; var _1 : CancelCauseFunc; } throw ":context.withCancelCause is not yet implemented";
function _withCancel(_parent:Context):stdgo.Ref<T_cancelCtx> throw ":context._withCancel is not yet implemented";
function cause(_c:Context):stdgo.Error throw ":context.cause is not yet implemented";
function afterFunc(_ctx:Context, _f:() -> Void):() -> Bool throw ":context.afterFunc is not yet implemented";
function _parentCancelCtx(_parent:Context):{ var _0 : stdgo.Ref<T_cancelCtx>; var _1 : Bool; } throw ":context._parentCancelCtx is not yet implemented";
function _removeChild(_parent:Context, _child:T_canceler):Void throw ":context._removeChild is not yet implemented";
function _contextName(_c:Context):stdgo.GoString throw ":context._contextName is not yet implemented";
function withoutCancel(_parent:Context):Context throw ":context.withoutCancel is not yet implemented";
function withDeadline(_parent:Context, _d:stdgo._internal.time.Time.Time):{ var _0 : Context; var _1 : CancelFunc; } throw ":context.withDeadline is not yet implemented";
function withDeadlineCause(_parent:Context, _d:stdgo._internal.time.Time.Time, _cause:stdgo.Error):{ var _0 : Context; var _1 : CancelFunc; } throw ":context.withDeadlineCause is not yet implemented";
function withTimeout(_parent:Context, _timeout:stdgo._internal.time.Time.Duration):{ var _0 : Context; var _1 : CancelFunc; } throw ":context.withTimeout is not yet implemented";
function withTimeoutCause(_parent:Context, _timeout:stdgo._internal.time.Time.Duration, _cause:stdgo.Error):{ var _0 : Context; var _1 : CancelFunc; } throw ":context.withTimeoutCause is not yet implemented";
function withValue(_parent:Context, _key:stdgo.AnyInterface, _val:stdgo.AnyInterface):Context throw ":context.withValue is not yet implemented";
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
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_deadlineExceededError>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.context.Context.T_deadlineExceededError_asInterface) class T_deadlineExceededError_static_extension {
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
    public dynamic function deadline():{ var _0 : stdgo._internal.time.Time.Time; var _1 : Bool; } return __self__.value.deadline();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_emptyCtx>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.context.Context.T_emptyCtx_asInterface) class T_emptyCtx_static_extension {
    @:keep
    static public function value( _:T_emptyCtx, _key:stdgo.AnyInterface):stdgo.AnyInterface throw "T_emptyCtx:context.value is not yet implemented";
    @:keep
    static public function err( _:T_emptyCtx):stdgo.Error throw "T_emptyCtx:context.err is not yet implemented";
    @:keep
    static public function done( _:T_emptyCtx):stdgo.Chan<T__struct_0> throw "T_emptyCtx:context.done is not yet implemented";
    @:keep
    static public function deadline( _:T_emptyCtx):{ var _0 : stdgo._internal.time.Time.Time; var _1 : Bool; } throw "T_emptyCtx:context.deadline is not yet implemented";
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
    public dynamic function deadline():{ var _0 : stdgo._internal.time.Time.Time; var _1 : Bool; } return __self__.value.deadline();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_backgroundCtx>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.context.Context.T_backgroundCtx_asInterface) class T_backgroundCtx_static_extension {
    @:keep
    static public function string( _:T_backgroundCtx):stdgo.GoString throw "T_backgroundCtx:context.string is not yet implemented";
    @:embedded
    public static function value( __self__:T_backgroundCtx, _key_:stdgo.AnyInterface):stdgo.AnyInterface return __self__.value(_key_);
    @:embedded
    public static function err( __self__:T_backgroundCtx):stdgo.Error return __self__.err();
    @:embedded
    public static function done( __self__:T_backgroundCtx):stdgo.Chan<T_deadlineExceededError> return __self__.done();
    @:embedded
    public static function deadline( __self__:T_backgroundCtx):{ var _0 : stdgo._internal.time.Time.Time; var _1 : Bool; } return __self__.deadline();
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
    public dynamic function deadline():{ var _0 : stdgo._internal.time.Time.Time; var _1 : Bool; } return __self__.value.deadline();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_todoCtx>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.context.Context.T_todoCtx_asInterface) class T_todoCtx_static_extension {
    @:keep
    static public function string( _:T_todoCtx):stdgo.GoString throw "T_todoCtx:context.string is not yet implemented";
    @:embedded
    public static function value( __self__:T_todoCtx, _key_:stdgo.AnyInterface):stdgo.AnyInterface return __self__.value(_key_);
    @:embedded
    public static function err( __self__:T_todoCtx):stdgo.Error return __self__.err();
    @:embedded
    public static function done( __self__:T_todoCtx):stdgo.Chan<T_deadlineExceededError> return __self__.done();
    @:embedded
    public static function deadline( __self__:T_todoCtx):{ var _0 : stdgo._internal.time.Time.Time; var _1 : Bool; } return __self__.deadline();
}
class T_afterFuncCtx_asInterface {
    @:keep
    public dynamic function _cancel(_removeFromParent:Bool, _err:stdgo.Error, _cause:stdgo.Error):Void __self__.value._cancel(_removeFromParent, _err, _cause);
    @:embedded
    public dynamic function _propagateCancel(_parent:stdgo._internal.context.Context.Context, _child:stdgo._internal.context.Context.T_canceler):Void __self__.value._propagateCancel(_parent, _child);
    @:embedded
    public dynamic function value(_key_:stdgo.AnyInterface):stdgo.AnyInterface return __self__.value.value(_key_);
    @:embedded
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:embedded
    public dynamic function err():stdgo.Error return __self__.value.err();
    @:embedded
    public dynamic function done():stdgo.Chan<T_deadlineExceededError> return __self__.value.done();
    @:embedded
    public dynamic function deadline():{ var _0 : stdgo._internal.time.Time.Time; var _1 : Bool; } return __self__.value.deadline();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_afterFuncCtx>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.context.Context.T_afterFuncCtx_asInterface) class T_afterFuncCtx_static_extension {
    @:keep
    static public function _cancel( _a:stdgo.Ref<T_afterFuncCtx>, _removeFromParent:Bool, _err:stdgo.Error, _cause:stdgo.Error):Void throw "T_afterFuncCtx:context._cancel is not yet implemented";
    @:embedded
    public static function _propagateCancel( __self__:T_afterFuncCtx, _parent:stdgo._internal.context.Context.Context, _child:stdgo._internal.context.Context.T_canceler) __self__._propagateCancel(_parent, _child);
    @:embedded
    public static function value( __self__:T_afterFuncCtx, _key_:stdgo.AnyInterface):stdgo.AnyInterface return __self__.value(_key_);
    @:embedded
    public static function string( __self__:T_afterFuncCtx):stdgo.GoString return __self__.string();
    @:embedded
    public static function err( __self__:T_afterFuncCtx):stdgo.Error return __self__.err();
    @:embedded
    public static function done( __self__:T_afterFuncCtx):stdgo.Chan<T_deadlineExceededError> return __self__.done();
    @:embedded
    public static function deadline( __self__:T_afterFuncCtx):{ var _0 : stdgo._internal.time.Time.Time; var _1 : Bool; } return __self__.deadline();
}
class T_stopCtx_asInterface {
    @:embedded
    public dynamic function value(_key_:stdgo.AnyInterface):stdgo.AnyInterface return __self__.value.value(_key_);
    @:embedded
    public dynamic function err():stdgo.Error return __self__.value.err();
    @:embedded
    public dynamic function done():stdgo.Chan<T_deadlineExceededError> return __self__.value.done();
    @:embedded
    public dynamic function deadline():{ var _0 : stdgo._internal.time.Time.Time; var _1 : Bool; } return __self__.value.deadline();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_stopCtx>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.context.Context.T_stopCtx_asInterface) class T_stopCtx_static_extension {
    @:embedded
    public static function value( __self__:T_stopCtx, _key_:stdgo.AnyInterface):stdgo.AnyInterface return __self__.value(_key_);
    @:embedded
    public static function err( __self__:T_stopCtx):stdgo.Error return __self__.err();
    @:embedded
    public static function done( __self__:T_stopCtx):stdgo.Chan<T_deadlineExceededError> return __self__.done();
    @:embedded
    public static function deadline( __self__:T_stopCtx):{ var _0 : stdgo._internal.time.Time.Time; var _1 : Bool; } return __self__.deadline();
}
class T_cancelCtx_asInterface {
    @:keep
    public dynamic function _cancel(_removeFromParent:Bool, _err:stdgo.Error, _cause:stdgo.Error):Void __self__.value._cancel(_removeFromParent, _err, _cause);
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function _propagateCancel(_parent:Context, _child:T_canceler):Void __self__.value._propagateCancel(_parent, _child);
    @:keep
    public dynamic function err():stdgo.Error return __self__.value.err();
    @:keep
    public dynamic function done():stdgo.Chan<T__struct_0> return __self__.value.done();
    @:keep
    public dynamic function value(_key:stdgo.AnyInterface):stdgo.AnyInterface return __self__.value.value(_key);
    @:embedded
    public dynamic function deadline():{ var _0 : stdgo._internal.time.Time.Time; var _1 : Bool; } return __self__.value.deadline();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_cancelCtx>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.context.Context.T_cancelCtx_asInterface) class T_cancelCtx_static_extension {
    @:keep
    static public function _cancel( _c:stdgo.Ref<T_cancelCtx>, _removeFromParent:Bool, _err:stdgo.Error, _cause:stdgo.Error):Void throw "T_cancelCtx:context._cancel is not yet implemented";
    @:keep
    static public function string( _c:stdgo.Ref<T_cancelCtx>):stdgo.GoString throw "T_cancelCtx:context.string is not yet implemented";
    @:keep
    static public function _propagateCancel( _c:stdgo.Ref<T_cancelCtx>, _parent:Context, _child:T_canceler):Void throw "T_cancelCtx:context._propagateCancel is not yet implemented";
    @:keep
    static public function err( _c:stdgo.Ref<T_cancelCtx>):stdgo.Error throw "T_cancelCtx:context.err is not yet implemented";
    @:keep
    static public function done( _c:stdgo.Ref<T_cancelCtx>):stdgo.Chan<T__struct_0> throw "T_cancelCtx:context.done is not yet implemented";
    @:keep
    static public function value( _c:stdgo.Ref<T_cancelCtx>, _key:stdgo.AnyInterface):stdgo.AnyInterface throw "T_cancelCtx:context.value is not yet implemented";
    @:embedded
    public static function deadline( __self__:T_cancelCtx):{ var _0 : stdgo._internal.time.Time.Time; var _1 : Bool; } return __self__.deadline();
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
    public dynamic function deadline():{ var _0 : stdgo._internal.time.Time.Time; var _1 : Bool; } return __self__.value.deadline();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_withoutCancelCtx>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.context.Context.T_withoutCancelCtx_asInterface) class T_withoutCancelCtx_static_extension {
    @:keep
    static public function string( _c:T_withoutCancelCtx):stdgo.GoString throw "T_withoutCancelCtx:context.string is not yet implemented";
    @:keep
    static public function value( _c:T_withoutCancelCtx, _key:stdgo.AnyInterface):stdgo.AnyInterface throw "T_withoutCancelCtx:context.value is not yet implemented";
    @:keep
    static public function err( _:T_withoutCancelCtx):stdgo.Error throw "T_withoutCancelCtx:context.err is not yet implemented";
    @:keep
    static public function done( _:T_withoutCancelCtx):stdgo.Chan<T__struct_0> throw "T_withoutCancelCtx:context.done is not yet implemented";
    @:keep
    static public function deadline( _:T_withoutCancelCtx):{ var _0 : stdgo._internal.time.Time.Time; var _1 : Bool; } throw "T_withoutCancelCtx:context.deadline is not yet implemented";
}
class T_timerCtx_asInterface {
    @:keep
    public dynamic function _cancel(_removeFromParent:Bool, _err:stdgo.Error, _cause:stdgo.Error):Void __self__.value._cancel(_removeFromParent, _err, _cause);
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function deadline():{ var _0 : stdgo._internal.time.Time.Time; var _1 : Bool; } return __self__.value.deadline();
    @:embedded
    public dynamic function _propagateCancel(_parent:stdgo._internal.context.Context.Context, _child:stdgo._internal.context.Context.T_canceler):Void __self__.value._propagateCancel(_parent, _child);
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
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_timerCtx>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.context.Context.T_timerCtx_asInterface) class T_timerCtx_static_extension {
    @:keep
    static public function _cancel( _c:stdgo.Ref<T_timerCtx>, _removeFromParent:Bool, _err:stdgo.Error, _cause:stdgo.Error):Void throw "T_timerCtx:context._cancel is not yet implemented";
    @:keep
    static public function string( _c:stdgo.Ref<T_timerCtx>):stdgo.GoString throw "T_timerCtx:context.string is not yet implemented";
    @:keep
    static public function deadline( _c:stdgo.Ref<T_timerCtx>):{ var _0 : stdgo._internal.time.Time.Time; var _1 : Bool; } throw "T_timerCtx:context.deadline is not yet implemented";
    @:embedded
    public static function _propagateCancel( __self__:T_timerCtx, _parent:stdgo._internal.context.Context.Context, _child:stdgo._internal.context.Context.T_canceler) __self__._propagateCancel(_parent, _child);
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
    public dynamic function deadline():{ var _0 : stdgo._internal.time.Time.Time; var _1 : Bool; } return __self__.value.deadline();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_valueCtx>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.context.Context.T_valueCtx_asInterface) class T_valueCtx_static_extension {
    @:keep
    static public function value( _c:stdgo.Ref<T_valueCtx>, _key:stdgo.AnyInterface):stdgo.AnyInterface throw "T_valueCtx:context.value is not yet implemented";
    @:keep
    static public function string( _c:stdgo.Ref<T_valueCtx>):stdgo.GoString throw "T_valueCtx:context.string is not yet implemented";
    @:embedded
    public static function err( __self__:T_valueCtx):stdgo.Error return __self__.err();
    @:embedded
    public static function done( __self__:T_valueCtx):stdgo.Chan<T_deadlineExceededError> return __self__.done();
    @:embedded
    public static function deadline( __self__:T_valueCtx):{ var _0 : stdgo._internal.time.Time.Time; var _1 : Bool; } return __self__.deadline();
}
