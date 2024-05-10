package stdgo.context;
var canceled(get, set) : stdgo.Error;
private function get_canceled():stdgo.Error return stdgo._internal.context.Context.canceled;
private function set_canceled(v:stdgo.Error):stdgo.Error {
        stdgo._internal.context.Context.canceled = v;
        return v;
    }
var deadlineExceeded(get, set) : stdgo.Error;
private function get_deadlineExceeded():stdgo.Error return stdgo._internal.context.Context.deadlineExceeded;
private function set_deadlineExceeded(v:stdgo.Error):stdgo.Error {
        stdgo._internal.context.Context.deadlineExceeded = v;
        return v;
    }
class Context__static_extension {
    static public function value(t:Context_, key:stdgo.AnyInterface):stdgo.AnyInterface {
        return stdgo._internal.context.Context.Context_static_extension.value(t, key);
    }
    static public function err(t:Context_):stdgo.Error {
        return stdgo._internal.context.Context.Context_static_extension.err(t);
    }
    static public function done(t:Context_):stdgo.Chan<T__struct_0> {
        return stdgo._internal.context.Context.Context_static_extension.done(t);
    }
    static public function deadline(t:Context_):stdgo.Tuple<stdgo._internal.time.Time.Time, Bool> {
        return {
            final obj = stdgo._internal.context.Context.Context_static_extension.deadline(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef Context = stdgo._internal.context.Context.Context;
class T_afterFuncer_static_extension {
    static public function afterFunc(t:T_afterFuncer, 0:() -> Void):() -> Bool {
        final 0 = 0;
        return () -> stdgo._internal.context.Context.T_afterFuncer_static_extension.afterFunc(t, 0)();
    }
}
typedef T_afterFuncer = stdgo._internal.context.Context.T_afterFuncer;
class T_canceler_static_extension {
    static public function done(t:T_canceler):stdgo.Chan<T__struct_0> {
        return stdgo._internal.context.Context.T_canceler_static_extension.done(t);
    }
    static public function _cancel(t:T_canceler, removeFromParent:Bool, err:stdgo.Error, cause:stdgo.Error):Void {
        stdgo._internal.context.Context.T_canceler_static_extension._cancel(t, removeFromParent, err, cause);
    }
}
typedef T_canceler = stdgo._internal.context.Context.T_canceler;
class T_stringer_static_extension {
    static public function string(t:T_stringer):String {
        return stdgo._internal.context.Context.T_stringer_static_extension.string(t);
    }
}
typedef T_stringer = stdgo._internal.context.Context.T_stringer;
@:structInit @:private @:using(stdgo.context.Context.T_deadlineExceededError_static_extension) abstract T_deadlineExceededError(stdgo._internal.context.Context.T_deadlineExceededError) from stdgo._internal.context.Context.T_deadlineExceededError to stdgo._internal.context.Context.T_deadlineExceededError {
    public function new() this = new stdgo._internal.context.Context.T_deadlineExceededError();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.context.Context.T_emptyCtx_static_extension) abstract T_emptyCtx(stdgo._internal.context.Context.T_emptyCtx) from stdgo._internal.context.Context.T_emptyCtx to stdgo._internal.context.Context.T_emptyCtx {
    public function new() this = new stdgo._internal.context.Context.T_emptyCtx();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.context.Context.T_backgroundCtx_static_extension) abstract T_backgroundCtx(stdgo._internal.context.Context.T_backgroundCtx) from stdgo._internal.context.Context.T_backgroundCtx to stdgo._internal.context.Context.T_backgroundCtx {
    public var _emptyCtx(get, set) : stdgo._internal.context.Context.T_emptyCtx;
    function get__emptyCtx():stdgo._internal.context.Context.T_emptyCtx return this._emptyCtx;
    function set__emptyCtx(v:stdgo._internal.context.Context.T_emptyCtx):stdgo._internal.context.Context.T_emptyCtx {
        this._emptyCtx = v;
        return v;
    }
    public function new(?_emptyCtx:stdgo._internal.context.Context.T_emptyCtx) this = new stdgo._internal.context.Context.T_backgroundCtx(_emptyCtx);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.context.Context.T_todoCtx_static_extension) abstract T_todoCtx(stdgo._internal.context.Context.T_todoCtx) from stdgo._internal.context.Context.T_todoCtx to stdgo._internal.context.Context.T_todoCtx {
    public var _emptyCtx(get, set) : stdgo._internal.context.Context.T_emptyCtx;
    function get__emptyCtx():stdgo._internal.context.Context.T_emptyCtx return this._emptyCtx;
    function set__emptyCtx(v:stdgo._internal.context.Context.T_emptyCtx):stdgo._internal.context.Context.T_emptyCtx {
        this._emptyCtx = v;
        return v;
    }
    public function new(?_emptyCtx:stdgo._internal.context.Context.T_emptyCtx) this = new stdgo._internal.context.Context.T_todoCtx(_emptyCtx);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.context.Context.T_afterFuncCtx_static_extension) abstract T_afterFuncCtx(stdgo._internal.context.Context.T_afterFuncCtx) from stdgo._internal.context.Context.T_afterFuncCtx to stdgo._internal.context.Context.T_afterFuncCtx {
    public var _cancelCtx(get, set) : stdgo._internal.context.Context.T_cancelCtx;
    function get__cancelCtx():stdgo._internal.context.Context.T_cancelCtx return this._cancelCtx;
    function set__cancelCtx(v:stdgo._internal.context.Context.T_cancelCtx):stdgo._internal.context.Context.T_cancelCtx {
        this._cancelCtx = v;
        return v;
    }
    public var _once(get, set) : stdgo._internal.sync.Sync.Once;
    function get__once():stdgo._internal.sync.Sync.Once return this._once;
    function set__once(v:stdgo._internal.sync.Sync.Once):stdgo._internal.sync.Sync.Once {
        this._once = v;
        return v;
    }
    public var _f(get, set) : () -> Void;
    function get__f():() -> Void return () -> this._f();
    function set__f(v:() -> Void):() -> Void {
        this._f = v;
        return v;
    }
    public function new(?_cancelCtx:stdgo._internal.context.Context.T_cancelCtx, ?_once:stdgo._internal.sync.Sync.Once, ?_f:() -> Void) this = new stdgo._internal.context.Context.T_afterFuncCtx(_cancelCtx, _once, _f);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.context.Context.T_stopCtx_static_extension) abstract T_stopCtx(stdgo._internal.context.Context.T_stopCtx) from stdgo._internal.context.Context.T_stopCtx to stdgo._internal.context.Context.T_stopCtx {
    public var context(get, set) : stdgo._internal.context.Context.Context;
    function get_context():stdgo._internal.context.Context.Context return this.context;
    function set_context(v:stdgo._internal.context.Context.Context):stdgo._internal.context.Context.Context {
        this.context = v;
        return v;
    }
    public var _stop(get, set) : () -> Bool;
    function get__stop():() -> Bool return () -> this._stop();
    function set__stop(v:() -> Bool):() -> Bool {
        this._stop = v;
        return v;
    }
    public function new(?context:stdgo._internal.context.Context.Context, ?_stop:() -> Bool) this = new stdgo._internal.context.Context.T_stopCtx(context, _stop);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.context.Context.T_cancelCtx_static_extension) abstract T_cancelCtx(stdgo._internal.context.Context.T_cancelCtx) from stdgo._internal.context.Context.T_cancelCtx to stdgo._internal.context.Context.T_cancelCtx {
    public var context(get, set) : stdgo._internal.context.Context.Context;
    function get_context():stdgo._internal.context.Context.Context return this.context;
    function set_context(v:stdgo._internal.context.Context.Context):stdgo._internal.context.Context.Context {
        this.context = v;
        return v;
    }
    public var _mu(get, set) : stdgo._internal.sync.Sync.Mutex;
    function get__mu():stdgo._internal.sync.Sync.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync.Mutex):stdgo._internal.sync.Sync.Mutex {
        this._mu = v;
        return v;
    }
    public var _done(get, set) : stdgo._internal.sync.atomic_.Atomic_.Value;
    function get__done():stdgo._internal.sync.atomic_.Atomic_.Value return this._done;
    function set__done(v:stdgo._internal.sync.atomic_.Atomic_.Value):stdgo._internal.sync.atomic_.Atomic_.Value {
        this._done = v;
        return v;
    }
    public var _children(get, set) : stdgo.GoMap<stdgo._internal.context.Context.T_canceler, T_deadlineExceededError>;
    function get__children():stdgo.GoMap<stdgo._internal.context.Context.T_canceler, T_deadlineExceededError> return this._children;
    function set__children(v:stdgo.GoMap<stdgo._internal.context.Context.T_canceler, T_deadlineExceededError>):stdgo.GoMap<stdgo._internal.context.Context.T_canceler, T_deadlineExceededError> {
        this._children = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public var _cause(get, set) : stdgo.Error;
    function get__cause():stdgo.Error return this._cause;
    function set__cause(v:stdgo.Error):stdgo.Error {
        this._cause = v;
        return v;
    }
    public function new(?context:stdgo._internal.context.Context.Context, ?_mu:stdgo._internal.sync.Sync.Mutex, ?_done:stdgo._internal.sync.atomic_.Atomic_.Value, ?_children:stdgo.GoMap<stdgo._internal.context.Context.T_canceler, T_deadlineExceededError>, ?_err:stdgo.Error, ?_cause:stdgo.Error) this = new stdgo._internal.context.Context.T_cancelCtx(context, _mu, _done, _children, _err, _cause);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.context.Context.T_withoutCancelCtx_static_extension) abstract T_withoutCancelCtx(stdgo._internal.context.Context.T_withoutCancelCtx) from stdgo._internal.context.Context.T_withoutCancelCtx to stdgo._internal.context.Context.T_withoutCancelCtx {
    public var _c(get, set) : stdgo._internal.context.Context.Context;
    function get__c():stdgo._internal.context.Context.Context return this._c;
    function set__c(v:stdgo._internal.context.Context.Context):stdgo._internal.context.Context.Context {
        this._c = v;
        return v;
    }
    public function new(?_c:stdgo._internal.context.Context.Context) this = new stdgo._internal.context.Context.T_withoutCancelCtx(_c);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.context.Context.T_timerCtx_static_extension) abstract T_timerCtx(stdgo._internal.context.Context.T_timerCtx) from stdgo._internal.context.Context.T_timerCtx to stdgo._internal.context.Context.T_timerCtx {
    public var _cancelCtx(get, set) : stdgo._internal.context.Context.T_cancelCtx;
    function get__cancelCtx():stdgo._internal.context.Context.T_cancelCtx return this._cancelCtx;
    function set__cancelCtx(v:stdgo._internal.context.Context.T_cancelCtx):stdgo._internal.context.Context.T_cancelCtx {
        this._cancelCtx = v;
        return v;
    }
    public var _timer(get, set) : stdgo._internal.time.Time.Timer;
    function get__timer():stdgo._internal.time.Time.Timer return this._timer;
    function set__timer(v:stdgo._internal.time.Time.Timer):stdgo._internal.time.Time.Timer {
        this._timer = v;
        return v;
    }
    public var _deadline(get, set) : stdgo._internal.time.Time.Time;
    function get__deadline():stdgo._internal.time.Time.Time return this._deadline;
    function set__deadline(v:stdgo._internal.time.Time.Time):stdgo._internal.time.Time.Time {
        this._deadline = v;
        return v;
    }
    public function new(?_cancelCtx:stdgo._internal.context.Context.T_cancelCtx, ?_timer:stdgo._internal.time.Time.Timer, ?_deadline:stdgo._internal.time.Time.Time) this = new stdgo._internal.context.Context.T_timerCtx(_cancelCtx, _timer, _deadline);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.context.Context.T_valueCtx_static_extension) abstract T_valueCtx(stdgo._internal.context.Context.T_valueCtx) from stdgo._internal.context.Context.T_valueCtx to stdgo._internal.context.Context.T_valueCtx {
    public var context(get, set) : stdgo._internal.context.Context.Context;
    function get_context():stdgo._internal.context.Context.Context return this.context;
    function set_context(v:stdgo._internal.context.Context.Context):stdgo._internal.context.Context.Context {
        this.context = v;
        return v;
    }
    public var _key(get, set) : stdgo.AnyInterface;
    function get__key():stdgo.AnyInterface return this._key;
    function set__key(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._key = v;
        return v;
    }
    public var _val(get, set) : stdgo.AnyInterface;
    function get__val():stdgo.AnyInterface return this._val;
    function set__val(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._val = v;
        return v;
    }
    public function new(?context:stdgo._internal.context.Context.Context, ?_key:stdgo.AnyInterface, ?_val:stdgo.AnyInterface) this = new stdgo._internal.context.Context.T_valueCtx(context, _key, _val);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.context.Context.T__struct_0;
typedef CancelFunc = stdgo._internal.context.Context.CancelFunc;
typedef CancelCauseFunc = stdgo._internal.context.Context.CancelCauseFunc;
class T_deadlineExceededError_static_extension {
    static public function temporary(:T_deadlineExceededError):Bool {
        return stdgo._internal.context.Context.T_deadlineExceededError_static_extension.temporary();
    }
    static public function timeout(:T_deadlineExceededError):Bool {
        return stdgo._internal.context.Context.T_deadlineExceededError_static_extension.timeout();
    }
    static public function error(:T_deadlineExceededError):String {
        return stdgo._internal.context.Context.T_deadlineExceededError_static_extension.error();
    }
}
class T_emptyCtx_static_extension {
    static public function value(:T_emptyCtx, key:stdgo.AnyInterface):stdgo.AnyInterface {
        return stdgo._internal.context.Context.T_emptyCtx_static_extension.value(, key);
    }
    static public function err(:T_emptyCtx):stdgo.Error {
        return stdgo._internal.context.Context.T_emptyCtx_static_extension.err();
    }
    static public function done(:T_emptyCtx):stdgo.Chan<T__struct_0> {
        return stdgo._internal.context.Context.T_emptyCtx_static_extension.done();
    }
    static public function deadline(:T_emptyCtx):stdgo.Tuple<stdgo._internal.time.Time.Time, Bool> {
        return {
            final obj = stdgo._internal.context.Context.T_emptyCtx_static_extension.deadline();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_backgroundCtx_static_extension {
    static public function string(:T_backgroundCtx):String {
        return stdgo._internal.context.Context.T_backgroundCtx_static_extension.string();
    }
    public static function value(_self__:T_backgroundCtx, key_:stdgo.AnyInterface):stdgo.AnyInterface {
        return stdgo._internal.context.Context.T_backgroundCtx_static_extension.value(_self__, key_);
    }
    public static function err(_self__:T_backgroundCtx):stdgo.Error {
        return stdgo._internal.context.Context.T_backgroundCtx_static_extension.err(_self__);
    }
    public static function done(_self__:T_backgroundCtx):stdgo.Chan<T_deadlineExceededError> {
        return stdgo._internal.context.Context.T_backgroundCtx_static_extension.done(_self__);
    }
    public static function deadline(_self__:T_backgroundCtx):stdgo.Tuple<stdgo._internal.time.Time.Time, Bool> {
        return {
            final obj = stdgo._internal.context.Context.T_backgroundCtx_static_extension.deadline(_self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_todoCtx_static_extension {
    static public function string(:T_todoCtx):String {
        return stdgo._internal.context.Context.T_todoCtx_static_extension.string();
    }
    public static function value(_self__:T_todoCtx, key_:stdgo.AnyInterface):stdgo.AnyInterface {
        return stdgo._internal.context.Context.T_todoCtx_static_extension.value(_self__, key_);
    }
    public static function err(_self__:T_todoCtx):stdgo.Error {
        return stdgo._internal.context.Context.T_todoCtx_static_extension.err(_self__);
    }
    public static function done(_self__:T_todoCtx):stdgo.Chan<T_deadlineExceededError> {
        return stdgo._internal.context.Context.T_todoCtx_static_extension.done(_self__);
    }
    public static function deadline(_self__:T_todoCtx):stdgo.Tuple<stdgo._internal.time.Time.Time, Bool> {
        return {
            final obj = stdgo._internal.context.Context.T_todoCtx_static_extension.deadline(_self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_afterFuncCtx_static_extension {
    static public function _cancel(a:T_afterFuncCtx, removeFromParent:Bool, err:stdgo.Error, cause:stdgo.Error):Void {
        stdgo._internal.context.Context.T_afterFuncCtx_static_extension._cancel(a, removeFromParent, err, cause);
    }
    public static function _propagateCancel(_self__:T_afterFuncCtx, parent:stdgo._internal.context.Context.Context, child:stdgo._internal.context.Context.T_canceler) {
        stdgo._internal.context.Context.T_afterFuncCtx_static_extension._propagateCancel(_self__, parent, child);
    }
    public static function value(_self__:T_afterFuncCtx, key_:stdgo.AnyInterface):stdgo.AnyInterface {
        return stdgo._internal.context.Context.T_afterFuncCtx_static_extension.value(_self__, key_);
    }
    public static function string(_self__:T_afterFuncCtx):String {
        return stdgo._internal.context.Context.T_afterFuncCtx_static_extension.string(_self__);
    }
    public static function err(_self__:T_afterFuncCtx):stdgo.Error {
        return stdgo._internal.context.Context.T_afterFuncCtx_static_extension.err(_self__);
    }
    public static function done(_self__:T_afterFuncCtx):stdgo.Chan<T_deadlineExceededError> {
        return stdgo._internal.context.Context.T_afterFuncCtx_static_extension.done(_self__);
    }
    public static function deadline(_self__:T_afterFuncCtx):stdgo.Tuple<stdgo._internal.time.Time.Time, Bool> {
        return {
            final obj = stdgo._internal.context.Context.T_afterFuncCtx_static_extension.deadline(_self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_stopCtx_static_extension {
    public static function value(_self__:T_stopCtx, key_:stdgo.AnyInterface):stdgo.AnyInterface {
        return stdgo._internal.context.Context.T_stopCtx_static_extension.value(_self__, key_);
    }
    public static function err(_self__:T_stopCtx):stdgo.Error {
        return stdgo._internal.context.Context.T_stopCtx_static_extension.err(_self__);
    }
    public static function done(_self__:T_stopCtx):stdgo.Chan<T_deadlineExceededError> {
        return stdgo._internal.context.Context.T_stopCtx_static_extension.done(_self__);
    }
    public static function deadline(_self__:T_stopCtx):stdgo.Tuple<stdgo._internal.time.Time.Time, Bool> {
        return {
            final obj = stdgo._internal.context.Context.T_stopCtx_static_extension.deadline(_self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_cancelCtx_static_extension {
    static public function _cancel(c:T_cancelCtx, removeFromParent:Bool, err:stdgo.Error, cause:stdgo.Error):Void {
        stdgo._internal.context.Context.T_cancelCtx_static_extension._cancel(c, removeFromParent, err, cause);
    }
    static public function string(c:T_cancelCtx):String {
        return stdgo._internal.context.Context.T_cancelCtx_static_extension.string(c);
    }
    static public function _propagateCancel(c:T_cancelCtx, parent:Context_, child:T_canceler):Void {
        stdgo._internal.context.Context.T_cancelCtx_static_extension._propagateCancel(c, parent, child);
    }
    static public function err(c:T_cancelCtx):stdgo.Error {
        return stdgo._internal.context.Context.T_cancelCtx_static_extension.err(c);
    }
    static public function done(c:T_cancelCtx):stdgo.Chan<T__struct_0> {
        return stdgo._internal.context.Context.T_cancelCtx_static_extension.done(c);
    }
    static public function value(c:T_cancelCtx, key:stdgo.AnyInterface):stdgo.AnyInterface {
        return stdgo._internal.context.Context.T_cancelCtx_static_extension.value(c, key);
    }
    public static function deadline(_self__:T_cancelCtx):stdgo.Tuple<stdgo._internal.time.Time.Time, Bool> {
        return {
            final obj = stdgo._internal.context.Context.T_cancelCtx_static_extension.deadline(_self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_withoutCancelCtx_static_extension {
    static public function string(c:T_withoutCancelCtx):String {
        return stdgo._internal.context.Context.T_withoutCancelCtx_static_extension.string(c);
    }
    static public function value(c:T_withoutCancelCtx, key:stdgo.AnyInterface):stdgo.AnyInterface {
        return stdgo._internal.context.Context.T_withoutCancelCtx_static_extension.value(c, key);
    }
    static public function err(:T_withoutCancelCtx):stdgo.Error {
        return stdgo._internal.context.Context.T_withoutCancelCtx_static_extension.err();
    }
    static public function done(:T_withoutCancelCtx):stdgo.Chan<T__struct_0> {
        return stdgo._internal.context.Context.T_withoutCancelCtx_static_extension.done();
    }
    static public function deadline(:T_withoutCancelCtx):stdgo.Tuple<stdgo._internal.time.Time.Time, Bool> {
        return {
            final obj = stdgo._internal.context.Context.T_withoutCancelCtx_static_extension.deadline();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_timerCtx_static_extension {
    static public function _cancel(c:T_timerCtx, removeFromParent:Bool, err:stdgo.Error, cause:stdgo.Error):Void {
        stdgo._internal.context.Context.T_timerCtx_static_extension._cancel(c, removeFromParent, err, cause);
    }
    static public function string(c:T_timerCtx):String {
        return stdgo._internal.context.Context.T_timerCtx_static_extension.string(c);
    }
    static public function deadline(c:T_timerCtx):stdgo.Tuple<stdgo._internal.time.Time.Time, Bool> {
        return {
            final obj = stdgo._internal.context.Context.T_timerCtx_static_extension.deadline(c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _propagateCancel(_self__:T_timerCtx, parent:stdgo._internal.context.Context.Context, child:stdgo._internal.context.Context.T_canceler) {
        stdgo._internal.context.Context.T_timerCtx_static_extension._propagateCancel(_self__, parent, child);
    }
    public static function value(_self__:T_timerCtx, key_:stdgo.AnyInterface):stdgo.AnyInterface {
        return stdgo._internal.context.Context.T_timerCtx_static_extension.value(_self__, key_);
    }
    public static function err(_self__:T_timerCtx):stdgo.Error {
        return stdgo._internal.context.Context.T_timerCtx_static_extension.err(_self__);
    }
    public static function done(_self__:T_timerCtx):stdgo.Chan<T_deadlineExceededError> {
        return stdgo._internal.context.Context.T_timerCtx_static_extension.done(_self__);
    }
}
class T_valueCtx_static_extension {
    static public function value(c:T_valueCtx, key:stdgo.AnyInterface):stdgo.AnyInterface {
        return stdgo._internal.context.Context.T_valueCtx_static_extension.value(c, key);
    }
    static public function string(c:T_valueCtx):String {
        return stdgo._internal.context.Context.T_valueCtx_static_extension.string(c);
    }
    public static function err(_self__:T_valueCtx):stdgo.Error {
        return stdgo._internal.context.Context.T_valueCtx_static_extension.err(_self__);
    }
    public static function done(_self__:T_valueCtx):stdgo.Chan<T_deadlineExceededError> {
        return stdgo._internal.context.Context.T_valueCtx_static_extension.done(_self__);
    }
    public static function deadline(_self__:T_valueCtx):stdgo.Tuple<stdgo._internal.time.Time.Time, Bool> {
        return {
            final obj = stdgo._internal.context.Context.T_valueCtx_static_extension.deadline(_self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
/**
    Package context defines the Context type, which carries deadlines,
    cancellation signals, and other request-scoped values across API boundaries
    and between processes.
    
    Incoming requests to a server should create a [Context], and outgoing
    calls to servers should accept a Context. The chain of function
    calls between them must propagate the Context, optionally replacing
    it with a derived Context created using [WithCancel], [WithDeadline],
    [WithTimeout], or [WithValue]. When a Context is canceled, all
    Contexts derived from it are also canceled.
    
    The [WithCancel], [WithDeadline], and [WithTimeout] functions take a
    Context (the parent) and return a derived Context (the child) and a
    [CancelFunc]. Calling the CancelFunc cancels the child and its
    children, removes the parent's reference to the child, and stops
    any associated timers. Failing to call the CancelFunc leaks the
    child and its children until the parent is canceled or the timer
    fires. The go vet tool checks that CancelFuncs are used on all
    control-flow paths.
    
    The [WithCancelCause] function returns a [CancelCauseFunc], which
    takes an error and records it as the cancellation cause. Calling
    [Cause] on the canceled context or any of its children retrieves
    the cause. If no cause is specified, Cause(ctx) returns the same
    value as ctx.Err().
    
    Programs that use Contexts should follow these rules to keep interfaces
    consistent across packages and enable static analysis tools to check context
    propagation:
    
    Do not store Contexts inside a struct type; instead, pass a Context
    explicitly to each function that needs it. The Context should be the first
    parameter, typically named ctx:
    
    	func DoSomething(ctx context.Context, arg Arg) error {
    		// ... use ctx ...
    	}
    
    Do not pass a nil [Context], even if a function permits it. Pass [context.TODO]
    if you are unsure about which Context to use.
    
    Use context Values only for request-scoped data that transits processes and
    APIs, not for passing optional parameters to functions.
    
    The same Context may be passed to functions running in different goroutines;
    Contexts are safe for simultaneous use by multiple goroutines.
    
    See https://blog.golang.org/context for example code for a server that uses
    Contexts.
**/
class Context {
    /**
        Background returns a non-nil, empty [Context]. It is never canceled, has no
        values, and has no deadline. It is typically used by the main function,
        initialization, and tests, and as the top-level Context for incoming
        requests.
    **/
    static public function background():Context_ {
        return stdgo._internal.context.Context.background();
    }
    /**
        TODO returns a non-nil, empty [Context]. Code should use context.TODO when
        it's unclear which Context to use or it is not yet available (because the
        surrounding function has not yet been extended to accept a Context
        parameter).
    **/
    static public function todo():Context_ {
        return stdgo._internal.context.Context.todo();
    }
    /**
        WithCancel returns a copy of parent with a new Done channel. The returned
        context's Done channel is closed when the returned cancel function is called
        or when the parent context's Done channel is closed, whichever happens first.
        
        Canceling this context releases resources associated with it, so code should
        call cancel as soon as the operations running in this Context complete.
    **/
    static public function withCancel(parent:Context_):stdgo.Tuple<Context_, CancelFunc> {
        return {
            final obj = stdgo._internal.context.Context.withCancel(parent);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        WithCancelCause behaves like [WithCancel] but returns a [CancelCauseFunc] instead of a [CancelFunc].
        Calling cancel with a non-nil error (the "cause") records that error in ctx;
        it can then be retrieved using Cause(ctx).
        Calling cancel with nil sets the cause to Canceled.
        
        Example use:
        
        	ctx, cancel := context.WithCancelCause(parent)
        	cancel(myError)
        	ctx.Err() // returns context.Canceled
        	context.Cause(ctx) // returns myError
    **/
    static public function withCancelCause(parent:Context_):stdgo.Tuple<Context_, CancelCauseFunc> {
        return {
            final obj = stdgo._internal.context.Context.withCancelCause(parent);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Cause returns a non-nil error explaining why c was canceled.
        The first cancellation of c or one of its parents sets the cause.
        If that cancellation happened via a call to CancelCauseFunc(err),
        then [Cause] returns err.
        Otherwise Cause(c) returns the same value as c.Err().
        Cause returns nil if c has not been canceled yet.
    **/
    static public function cause(c:Context_):stdgo.Error {
        return stdgo._internal.context.Context.cause(c);
    }
    /**
        AfterFunc arranges to call f in its own goroutine after ctx is done
        (cancelled or timed out).
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
        
        If ctx has a "AfterFunc(func()) func() bool" method,
        AfterFunc will use it to schedule the call.
    **/
    static public function afterFunc(ctx:Context_, f:() -> Void):() -> Bool {
        final f = f;
        return () -> stdgo._internal.context.Context.afterFunc(ctx, f)();
    }
    /**
        WithoutCancel returns a copy of parent that is not canceled when parent is canceled.
        The returned context returns no Deadline or Err, and its Done channel is nil.
        Calling [Cause] on the returned context returns nil.
    **/
    static public function withoutCancel(parent:Context_):Context_ {
        return stdgo._internal.context.Context.withoutCancel(parent);
    }
    /**
        WithDeadline returns a copy of the parent context with the deadline adjusted
        to be no later than d. If the parent's deadline is already earlier than d,
        WithDeadline(parent, d) is semantically equivalent to parent. The returned
        [Context.Done] channel is closed when the deadline expires, when the returned
        cancel function is called, or when the parent context's Done channel is
        closed, whichever happens first.
        
        Canceling this context releases resources associated with it, so code should
        call cancel as soon as the operations running in this [Context] complete.
    **/
    static public function withDeadline(parent:Context_, d:stdgo._internal.time.Time.Time):stdgo.Tuple<Context_, CancelFunc> {
        return {
            final obj = stdgo._internal.context.Context.withDeadline(parent, d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        WithDeadlineCause behaves like [WithDeadline] but also sets the cause of the
        returned Context when the deadline is exceeded. The returned [CancelFunc] does
        not set the cause.
    **/
    static public function withDeadlineCause(parent:Context_, d:stdgo._internal.time.Time.Time, cause:stdgo.Error):stdgo.Tuple<Context_, CancelFunc> {
        return {
            final obj = stdgo._internal.context.Context.withDeadlineCause(parent, d, cause);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        WithTimeout returns WithDeadline(parent, time.Now().Add(timeout)).
        
        Canceling this context releases resources associated with it, so code should
        call cancel as soon as the operations running in this [Context] complete:
        
        	func slowOperationWithTimeout(ctx context.Context) (Result, error) {
        		ctx, cancel := context.WithTimeout(ctx, 100*time.Millisecond)
        		defer cancel()  // releases resources if slowOperation completes before timeout elapses
        		return slowOperation(ctx)
        	}
    **/
    static public function withTimeout(parent:Context_, timeout:stdgo._internal.time.Time.Duration):stdgo.Tuple<Context_, CancelFunc> {
        return {
            final obj = stdgo._internal.context.Context.withTimeout(parent, timeout);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        WithTimeoutCause behaves like [WithTimeout] but also sets the cause of the
        returned Context when the timeout expires. The returned [CancelFunc] does
        not set the cause.
    **/
    static public function withTimeoutCause(parent:Context_, timeout:stdgo._internal.time.Time.Duration, cause:stdgo.Error):stdgo.Tuple<Context_, CancelFunc> {
        return {
            final obj = stdgo._internal.context.Context.withTimeoutCause(parent, timeout, cause);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        WithValue returns a copy of parent in which the value associated with key is
        val.
        
        Use context Values only for request-scoped data that transits processes and
        APIs, not for passing optional parameters to functions.
        
        The provided key must be comparable and should not be of type
        string or any other built-in type to avoid collisions between
        packages using context. Users of WithValue should define their own
        types for keys. To avoid allocating when assigning to an
        interface{}, context keys often have concrete type
        struct{}. Alternatively, exported context key variables' static
        type should be a pointer or interface.
    **/
    static public function withValue(parent:Context_, key:stdgo.AnyInterface, val:stdgo.AnyInterface):Context_ {
        return stdgo._internal.context.Context.withValue(parent, key, val);
    }
}
