package stdgo.context;
var canceled(get, set) : stdgo.Error;
private function get_canceled():stdgo.Error return stdgo._internal.context.Context_canceled.canceled;
private function set_canceled(v:stdgo.Error):stdgo.Error {
        stdgo._internal.context.Context_canceled.canceled = (v : stdgo.Error);
        return v;
    }
var deadlineExceeded(get, set) : stdgo.Error;
private function get_deadlineExceeded():stdgo.Error return stdgo._internal.context.Context_deadlineexceeded.deadlineExceeded;
private function set_deadlineExceeded(v:stdgo.Error):stdgo.Error {
        stdgo._internal.context.Context_deadlineexceeded.deadlineExceeded = (v : stdgo.Error);
        return v;
    }
class Context_static_extension {
    static public function value(t:stdgo._internal.context.Context_context.Context, _key:stdgo.AnyInterface):stdgo.AnyInterface {
        final _key = (_key : stdgo.AnyInterface);
        return stdgo._internal.context.Context_context_static_extension.Context_static_extension.value(t, _key);
    }
    static public function err(t:stdgo._internal.context.Context_context.Context):stdgo.Error {
        return stdgo._internal.context.Context_context_static_extension.Context_static_extension.err(t);
    }
    static public function done(t:stdgo._internal.context.Context_context.Context):stdgo.Chan<{ }> {
        return stdgo._internal.context.Context_context_static_extension.Context_static_extension.done(t);
    }
    static public function deadline(t:stdgo._internal.context.Context_context.Context):stdgo.Tuple<stdgo._internal.time.Time_time.Time, Bool> {
        return {
            final obj = stdgo._internal.context.Context_context_static_extension.Context_static_extension.deadline(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:interface @:forward abstract Context_(stdgo._internal.context.Context_context.Context) from stdgo._internal.context.Context_context.Context to stdgo._internal.context.Context_context.Context {
    @:from
    static function fromHaxeInterface(x:{ function deadline():stdgo.Tuple<stdgo._internal.time.Time_time.Time, Bool>; function done():stdgo.Chan<{ }>; function err():stdgo.Error; function value(_key:stdgo.AnyInterface):stdgo.AnyInterface; }):Context_ {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Context_ = { deadline : () -> x.deadline(), done : () -> x.done(), err : () -> x.err(), value : _0 -> x.value(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_afterFuncer_static_extension {
    static public function afterFunc(t:stdgo._internal.context.Context_t_afterfuncer.T_afterFuncer, _0:() -> Void):() -> Bool {
        final _0 = _0;
        return () -> stdgo._internal.context.Context_t_afterfuncer_static_extension.T_afterFuncer_static_extension.afterFunc(t, _0)();
    }
}
@:interface @:dox(hide) @:forward abstract T_afterFuncer(stdgo._internal.context.Context_t_afterfuncer.T_afterFuncer) from stdgo._internal.context.Context_t_afterfuncer.T_afterFuncer to stdgo._internal.context.Context_t_afterfuncer.T_afterFuncer {
    @:from
    static function fromHaxeInterface(x:{ function afterFunc(_0:() -> Void):() -> Bool; }):T_afterFuncer {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_afterFuncer = { afterFunc : _0 -> x.afterFunc(() -> _0()), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_canceler_static_extension {
    static public function done(t:stdgo._internal.context.Context_t_canceler.T_canceler):stdgo.Chan<{ }> {
        return stdgo._internal.context.Context_t_canceler_static_extension.T_canceler_static_extension.done(t);
    }
    static public function _cancel(t:stdgo._internal.context.Context_t_canceler.T_canceler, _removeFromParent:Bool, _err:stdgo.Error, _cause:stdgo.Error):Void {
        final _err = (_err : stdgo.Error);
        final _cause = (_cause : stdgo.Error);
        stdgo._internal.context.Context_t_canceler_static_extension.T_canceler_static_extension._cancel(t, _removeFromParent, _err, _cause);
    }
}
@:interface @:dox(hide) @:forward abstract T_canceler(stdgo._internal.context.Context_t_canceler.T_canceler) from stdgo._internal.context.Context_t_canceler.T_canceler to stdgo._internal.context.Context_t_canceler.T_canceler {
    @:from
    static function fromHaxeInterface(x:{ function _cancel(_removeFromParent:Bool, _err:stdgo.Error, _cause:stdgo.Error):Void; function done():stdgo.Chan<{ }>; }):T_canceler {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_canceler = { _cancel : (_0, _1, _2) -> x._cancel(_0, _1, _2), done : () -> x.done(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_stringer_static_extension {
    static public function string(t:stdgo._internal.context.Context_t_stringer.T_stringer):String {
        return stdgo._internal.context.Context_t_stringer_static_extension.T_stringer_static_extension.string(t);
    }
}
@:interface @:dox(hide) @:forward abstract T_stringer(stdgo._internal.context.Context_t_stringer.T_stringer) from stdgo._internal.context.Context_t_stringer.T_stringer to stdgo._internal.context.Context_t_stringer.T_stringer {
    @:from
    static function fromHaxeInterface(x:{ function string():String; }):T_stringer {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_stringer = { string : () -> x.string(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_testingT_static_extension {
    static public function skipped(t:stdgo._internal.context.Context_t_testingt.T_testingT):Bool {
        return stdgo._internal.context.Context_t_testingt_static_extension.T_testingT_static_extension.skipped(t);
    }
    static public function skipf(t:stdgo._internal.context.Context_t_testingt.T_testingT, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _format = (_format : stdgo.GoString);
        stdgo._internal.context.Context_t_testingt_static_extension.T_testingT_static_extension.skipf(t, _format, ...[for (i in _args) i]);
    }
    static public function skipNow(t:stdgo._internal.context.Context_t_testingt.T_testingT):Void {
        stdgo._internal.context.Context_t_testingt_static_extension.T_testingT_static_extension.skipNow(t);
    }
    static public function skip(t:stdgo._internal.context.Context_t_testingt.T_testingT, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.context.Context_t_testingt_static_extension.T_testingT_static_extension.skip(t, ...[for (i in _args) i]);
    }
    static public function parallel(t:stdgo._internal.context.Context_t_testingt.T_testingT):Void {
        stdgo._internal.context.Context_t_testingt_static_extension.T_testingT_static_extension.parallel(t);
    }
    static public function name(t:stdgo._internal.context.Context_t_testingt.T_testingT):String {
        return stdgo._internal.context.Context_t_testingt_static_extension.T_testingT_static_extension.name(t);
    }
    static public function logf(t:stdgo._internal.context.Context_t_testingt.T_testingT, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _format = (_format : stdgo.GoString);
        stdgo._internal.context.Context_t_testingt_static_extension.T_testingT_static_extension.logf(t, _format, ...[for (i in _args) i]);
    }
    static public function log(t:stdgo._internal.context.Context_t_testingt.T_testingT, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.context.Context_t_testingt_static_extension.T_testingT_static_extension.log(t, ...[for (i in _args) i]);
    }
    static public function helper(t:stdgo._internal.context.Context_t_testingt.T_testingT):Void {
        stdgo._internal.context.Context_t_testingt_static_extension.T_testingT_static_extension.helper(t);
    }
    static public function fatalf(t:stdgo._internal.context.Context_t_testingt.T_testingT, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _format = (_format : stdgo.GoString);
        stdgo._internal.context.Context_t_testingt_static_extension.T_testingT_static_extension.fatalf(t, _format, ...[for (i in _args) i]);
    }
    static public function fatal(t:stdgo._internal.context.Context_t_testingt.T_testingT, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.context.Context_t_testingt_static_extension.T_testingT_static_extension.fatal(t, ...[for (i in _args) i]);
    }
    static public function failed(t:stdgo._internal.context.Context_t_testingt.T_testingT):Bool {
        return stdgo._internal.context.Context_t_testingt_static_extension.T_testingT_static_extension.failed(t);
    }
    static public function failNow(t:stdgo._internal.context.Context_t_testingt.T_testingT):Void {
        stdgo._internal.context.Context_t_testingt_static_extension.T_testingT_static_extension.failNow(t);
    }
    static public function fail(t:stdgo._internal.context.Context_t_testingt.T_testingT):Void {
        stdgo._internal.context.Context_t_testingt_static_extension.T_testingT_static_extension.fail(t);
    }
    static public function errorf(t:stdgo._internal.context.Context_t_testingt.T_testingT, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _format = (_format : stdgo.GoString);
        stdgo._internal.context.Context_t_testingt_static_extension.T_testingT_static_extension.errorf(t, _format, ...[for (i in _args) i]);
    }
    static public function error(t:stdgo._internal.context.Context_t_testingt.T_testingT, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.context.Context_t_testingt_static_extension.T_testingT_static_extension.error(t, ...[for (i in _args) i]);
    }
    static public function deadline(t:stdgo._internal.context.Context_t_testingt.T_testingT):stdgo.Tuple<stdgo._internal.time.Time_time.Time, Bool> {
        return {
            final obj = stdgo._internal.context.Context_t_testingt_static_extension.T_testingT_static_extension.deadline(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:interface @:dox(hide) @:forward abstract T_testingT(stdgo._internal.context.Context_t_testingt.T_testingT) from stdgo._internal.context.Context_t_testingt.T_testingT to stdgo._internal.context.Context_t_testingt.T_testingT {
    @:from
    static function fromHaxeInterface(x:{ function deadline():stdgo.Tuple<stdgo._internal.time.Time_time.Time, Bool>; function error(_args:haxe.Rest<stdgo.AnyInterface>):Void; function errorf(_format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void; function fail():Void; function failNow():Void; function failed():Bool; function fatal(_args:haxe.Rest<stdgo.AnyInterface>):Void; function fatalf(_format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void; function helper():Void; function log(_args:haxe.Rest<stdgo.AnyInterface>):Void; function logf(_format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void; function name():String; function parallel():Void; function skip(_args:haxe.Rest<stdgo.AnyInterface>):Void; function skipNow():Void; function skipf(_format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void; function skipped():Bool; }):T_testingT {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_testingT = { deadline : () -> x.deadline(), error : _0 -> x.error(_0), errorf : (_0, _1) -> x.errorf(_0, _1), fail : () -> x.fail(), failNow : () -> x.failNow(), failed : () -> x.failed(), fatal : _0 -> x.fatal(_0), fatalf : (_0, _1) -> x.fatalf(_0, _1), helper : () -> x.helper(), log : _0 -> x.log(_0), logf : (_0, _1) -> x.logf(_0, _1), name : () -> x.name(), parallel : () -> x.parallel(), skip : _0 -> x.skip(_0), skipNow : () -> x.skipNow(), skipf : (_0, _1) -> x.skipf(_0, _1), skipped : () -> x.skipped(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.context.Context.T_deadlineExceededError_static_extension) @:dox(hide) abstract T_deadlineExceededError(stdgo._internal.context.Context_t_deadlineexceedederror.T_deadlineExceededError) from stdgo._internal.context.Context_t_deadlineexceedederror.T_deadlineExceededError to stdgo._internal.context.Context_t_deadlineexceedederror.T_deadlineExceededError {
    public function new() this = new stdgo._internal.context.Context_t_deadlineexceedederror.T_deadlineExceededError();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.context.Context.T_emptyCtx_static_extension) @:dox(hide) abstract T_emptyCtx(stdgo._internal.context.Context_t_emptyctx.T_emptyCtx) from stdgo._internal.context.Context_t_emptyctx.T_emptyCtx to stdgo._internal.context.Context_t_emptyctx.T_emptyCtx {
    public function new() this = new stdgo._internal.context.Context_t_emptyctx.T_emptyCtx();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.context.Context.T_backgroundCtx_static_extension) @:dox(hide) abstract T_backgroundCtx(stdgo._internal.context.Context_t_backgroundctx.T_backgroundCtx) from stdgo._internal.context.Context_t_backgroundctx.T_backgroundCtx to stdgo._internal.context.Context_t_backgroundctx.T_backgroundCtx {
    public var _emptyCtx(get, set) : T_emptyCtx;
    function get__emptyCtx():T_emptyCtx return this._emptyCtx;
    function set__emptyCtx(v:T_emptyCtx):T_emptyCtx {
        this._emptyCtx = v;
        return v;
    }
    public function new(?_emptyCtx:T_emptyCtx) this = new stdgo._internal.context.Context_t_backgroundctx.T_backgroundCtx(_emptyCtx);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.context.Context.T_todoCtx_static_extension) @:dox(hide) abstract T_todoCtx(stdgo._internal.context.Context_t_todoctx.T_todoCtx) from stdgo._internal.context.Context_t_todoctx.T_todoCtx to stdgo._internal.context.Context_t_todoctx.T_todoCtx {
    public var _emptyCtx(get, set) : T_emptyCtx;
    function get__emptyCtx():T_emptyCtx return this._emptyCtx;
    function set__emptyCtx(v:T_emptyCtx):T_emptyCtx {
        this._emptyCtx = v;
        return v;
    }
    public function new(?_emptyCtx:T_emptyCtx) this = new stdgo._internal.context.Context_t_todoctx.T_todoCtx(_emptyCtx);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.context.Context.T_afterFuncCtx_static_extension) @:dox(hide) abstract T_afterFuncCtx(stdgo._internal.context.Context_t_afterfuncctx.T_afterFuncCtx) from stdgo._internal.context.Context_t_afterfuncctx.T_afterFuncCtx to stdgo._internal.context.Context_t_afterfuncctx.T_afterFuncCtx {
    public var _cancelCtx(get, set) : T_cancelCtx;
    function get__cancelCtx():T_cancelCtx return this._cancelCtx;
    function set__cancelCtx(v:T_cancelCtx):T_cancelCtx {
        this._cancelCtx = v;
        return v;
    }
    public var _once(get, set) : stdgo._internal.sync.Sync_once.Once;
    function get__once():stdgo._internal.sync.Sync_once.Once return this._once;
    function set__once(v:stdgo._internal.sync.Sync_once.Once):stdgo._internal.sync.Sync_once.Once {
        this._once = v;
        return v;
    }
    public var _f(get, set) : () -> Void;
    function get__f():() -> Void return () -> this._f();
    function set__f(v:() -> Void):() -> Void {
        this._f = v;
        return v;
    }
    public function new(?_cancelCtx:T_cancelCtx, ?_once:stdgo._internal.sync.Sync_once.Once, ?_f:() -> Void) this = new stdgo._internal.context.Context_t_afterfuncctx.T_afterFuncCtx(_cancelCtx, _once, _f);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.context.Context.T_stopCtx_static_extension) @:dox(hide) abstract T_stopCtx(stdgo._internal.context.Context_t_stopctx.T_stopCtx) from stdgo._internal.context.Context_t_stopctx.T_stopCtx to stdgo._internal.context.Context_t_stopctx.T_stopCtx {
    public var context(get, set) : Context_;
    function get_context():Context_ return this.context;
    function set_context(v:Context_):Context_ {
        this.context = v;
        return v;
    }
    public var _stop(get, set) : () -> Bool;
    function get__stop():() -> Bool return () -> this._stop();
    function set__stop(v:() -> Bool):() -> Bool {
        this._stop = v;
        return v;
    }
    public function new(?context:Context_, ?_stop:() -> Bool) this = new stdgo._internal.context.Context_t_stopctx.T_stopCtx(context, _stop);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.context.Context.T_cancelCtx_static_extension) @:dox(hide) abstract T_cancelCtx(stdgo._internal.context.Context_t_cancelctx.T_cancelCtx) from stdgo._internal.context.Context_t_cancelctx.T_cancelCtx to stdgo._internal.context.Context_t_cancelctx.T_cancelCtx {
    public var context(get, set) : Context_;
    function get_context():Context_ return this.context;
    function set_context(v:Context_):Context_ {
        this.context = v;
        return v;
    }
    public var _mu(get, set) : stdgo._internal.sync.Sync_mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_mutex.Mutex):stdgo._internal.sync.Sync_mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _done(get, set) : stdgo._internal.sync.atomic_.Atomic__value.Value;
    function get__done():stdgo._internal.sync.atomic_.Atomic__value.Value return this._done;
    function set__done(v:stdgo._internal.sync.atomic_.Atomic__value.Value):stdgo._internal.sync.atomic_.Atomic__value.Value {
        this._done = v;
        return v;
    }
    public var _children(get, set) : Map<T_canceler, stdgo._internal.context.Context_t_deadlineexceedederror.T_deadlineExceededError>;
    function get__children():Map<T_canceler, stdgo._internal.context.Context_t_deadlineexceedederror.T_deadlineExceededError> return {
        final __obj__:Map<T_canceler, stdgo._internal.context.Context_t_deadlineexceedederror.T_deadlineExceededError> = [];
        for (key => value in this._children) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__children(v:Map<T_canceler, stdgo._internal.context.Context_t_deadlineexceedederror.T_deadlineExceededError>):Map<T_canceler, stdgo._internal.context.Context_t_deadlineexceedederror.T_deadlineExceededError> {
        this._children = {
            final __obj__ = new stdgo.GoMap<stdgo._internal.context.Context_t_canceler.T_canceler, stdgo._internal.context.Context_t_deadlineexceedederror.T_deadlineExceededError>();
            for (key => value in v) {
                __obj__[key] = value;
            };
            __obj__;
        };
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public var _cause(get, set) : stdgo.Error;
    function get__cause():stdgo.Error return this._cause;
    function set__cause(v:stdgo.Error):stdgo.Error {
        this._cause = (v : stdgo.Error);
        return v;
    }
    public function new(?context:Context_, ?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_done:stdgo._internal.sync.atomic_.Atomic__value.Value, ?_children:Map<T_canceler, stdgo._internal.context.Context_t_deadlineexceedederror.T_deadlineExceededError>, ?_err:stdgo.Error, ?_cause:stdgo.Error) this = new stdgo._internal.context.Context_t_cancelctx.T_cancelCtx(context, _mu, _done, {
        final __obj__ = new stdgo.GoMap<stdgo._internal.context.Context_t_canceler.T_canceler, stdgo._internal.context.Context_t_deadlineexceedederror.T_deadlineExceededError>();
        for (key => value in _children) {
            __obj__[key] = value;
        };
        __obj__;
    }, (_err : stdgo.Error), (_cause : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.context.Context.T_withoutCancelCtx_static_extension) @:dox(hide) abstract T_withoutCancelCtx(stdgo._internal.context.Context_t_withoutcancelctx.T_withoutCancelCtx) from stdgo._internal.context.Context_t_withoutcancelctx.T_withoutCancelCtx to stdgo._internal.context.Context_t_withoutcancelctx.T_withoutCancelCtx {
    public var _c(get, set) : Context_;
    function get__c():Context_ return this._c;
    function set__c(v:Context_):Context_ {
        this._c = v;
        return v;
    }
    public function new(?_c:Context_) this = new stdgo._internal.context.Context_t_withoutcancelctx.T_withoutCancelCtx(_c);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.context.Context.T_timerCtx_static_extension) @:dox(hide) abstract T_timerCtx(stdgo._internal.context.Context_t_timerctx.T_timerCtx) from stdgo._internal.context.Context_t_timerctx.T_timerCtx to stdgo._internal.context.Context_t_timerctx.T_timerCtx {
    public var _cancelCtx(get, set) : T_cancelCtx;
    function get__cancelCtx():T_cancelCtx return this._cancelCtx;
    function set__cancelCtx(v:T_cancelCtx):T_cancelCtx {
        this._cancelCtx = v;
        return v;
    }
    public var _timer(get, set) : stdgo._internal.time.Time_timer.Timer;
    function get__timer():stdgo._internal.time.Time_timer.Timer return this._timer;
    function set__timer(v:stdgo._internal.time.Time_timer.Timer):stdgo._internal.time.Time_timer.Timer {
        this._timer = (v : stdgo.Ref<stdgo._internal.time.Time_timer.Timer>);
        return v;
    }
    public var _deadline(get, set) : stdgo._internal.time.Time_time.Time;
    function get__deadline():stdgo._internal.time.Time_time.Time return this._deadline;
    function set__deadline(v:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_time.Time {
        this._deadline = v;
        return v;
    }
    public function new(?_cancelCtx:T_cancelCtx, ?_timer:stdgo._internal.time.Time_timer.Timer, ?_deadline:stdgo._internal.time.Time_time.Time) this = new stdgo._internal.context.Context_t_timerctx.T_timerCtx(_cancelCtx, (_timer : stdgo.Ref<stdgo._internal.time.Time_timer.Timer>), _deadline);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.context.Context.T_valueCtx_static_extension) @:dox(hide) abstract T_valueCtx(stdgo._internal.context.Context_t_valuectx.T_valueCtx) from stdgo._internal.context.Context_t_valuectx.T_valueCtx to stdgo._internal.context.Context_t_valuectx.T_valueCtx {
    public var context(get, set) : Context_;
    function get_context():Context_ return this.context;
    function set_context(v:Context_):Context_ {
        this.context = v;
        return v;
    }
    public var _key(get, set) : stdgo.AnyInterface;
    function get__key():stdgo.AnyInterface return this._key;
    function set__key(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._key = (v : stdgo.AnyInterface);
        return v;
    }
    public var _val(get, set) : stdgo.AnyInterface;
    function get__val():stdgo.AnyInterface return this._val;
    function set__val(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._val = (v : stdgo.AnyInterface);
        return v;
    }
    public function new(?context:Context_, ?_key:stdgo.AnyInterface, ?_val:stdgo.AnyInterface) this = new stdgo._internal.context.Context_t_valuectx.T_valueCtx(context, (_key : stdgo.AnyInterface), (_val : stdgo.AnyInterface));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.context.Context.T_myCtx_static_extension) @:dox(hide) abstract T_myCtx(stdgo._internal.context.Context_t_myctx.T_myCtx) from stdgo._internal.context.Context_t_myctx.T_myCtx to stdgo._internal.context.Context_t_myctx.T_myCtx {
    public var context(get, set) : Context_;
    function get_context():Context_ return this.context;
    function set_context(v:Context_):Context_ {
        this.context = v;
        return v;
    }
    public function new(?context:Context_) this = new stdgo._internal.context.Context_t_myctx.T_myCtx(context);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.context.Context.T_myDoneCtx_static_extension) @:dox(hide) abstract T_myDoneCtx(stdgo._internal.context.Context_t_mydonectx.T_myDoneCtx) from stdgo._internal.context.Context_t_mydonectx.T_myDoneCtx to stdgo._internal.context.Context_t_mydonectx.T_myDoneCtx {
    public var context(get, set) : Context_;
    function get_context():Context_ return this.context;
    function set_context(v:Context_):Context_ {
        this.context = v;
        return v;
    }
    public function new(?context:Context_) this = new stdgo._internal.context.Context_t_mydonectx.T_myDoneCtx(context);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T__struct_0Pointer = stdgo._internal.context.Context_t__struct_0pointer.T__struct_0Pointer;
@:dox(hide) class T__struct_0_static_extension {

}
@:dox(hide) typedef T__struct_0 = stdgo._internal.context.Context_t__struct_0.T__struct_0;
typedef CancelFunc = stdgo._internal.context.Context_cancelfunc.CancelFunc;
typedef CancelCauseFunc = stdgo._internal.context.Context_cancelcausefunc.CancelCauseFunc;
@:dox(hide) typedef T_deadlineExceededErrorPointer = stdgo._internal.context.Context_t_deadlineexceedederrorpointer.T_deadlineExceededErrorPointer;
@:dox(hide) class T_deadlineExceededError_static_extension {
    static public function temporary(_:T_deadlineExceededError):Bool {
        return stdgo._internal.context.Context_t_deadlineexceedederror_static_extension.T_deadlineExceededError_static_extension.temporary(_);
    }
    static public function timeout(_:T_deadlineExceededError):Bool {
        return stdgo._internal.context.Context_t_deadlineexceedederror_static_extension.T_deadlineExceededError_static_extension.timeout(_);
    }
    static public function error(_:T_deadlineExceededError):String {
        return stdgo._internal.context.Context_t_deadlineexceedederror_static_extension.T_deadlineExceededError_static_extension.error(_);
    }
}
@:dox(hide) typedef T_emptyCtxPointer = stdgo._internal.context.Context_t_emptyctxpointer.T_emptyCtxPointer;
@:dox(hide) class T_emptyCtx_static_extension {
    static public function value(_:T_emptyCtx, _key:stdgo.AnyInterface):stdgo.AnyInterface {
        final _key = (_key : stdgo.AnyInterface);
        return stdgo._internal.context.Context_t_emptyctx_static_extension.T_emptyCtx_static_extension.value(_, _key);
    }
    static public function err(_:T_emptyCtx):stdgo.Error {
        return stdgo._internal.context.Context_t_emptyctx_static_extension.T_emptyCtx_static_extension.err(_);
    }
    static public function done(_:T_emptyCtx):stdgo.Chan<stdgo._internal.context.Context_t_deadlineexceedederror.T_deadlineExceededError> {
        return stdgo._internal.context.Context_t_emptyctx_static_extension.T_emptyCtx_static_extension.done(_);
    }
    static public function deadline(_:T_emptyCtx):stdgo.Tuple<stdgo._internal.time.Time_time.Time, Bool> {
        return {
            final obj = stdgo._internal.context.Context_t_emptyctx_static_extension.T_emptyCtx_static_extension.deadline(_);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_backgroundCtxPointer = stdgo._internal.context.Context_t_backgroundctxpointer.T_backgroundCtxPointer;
@:dox(hide) class T_backgroundCtx_static_extension {
    static public function string(_:T_backgroundCtx):String {
        return stdgo._internal.context.Context_t_backgroundctx_static_extension.T_backgroundCtx_static_extension.string(_);
    }
    public static function value(__self__:stdgo._internal.context.Context_t_backgroundctx.T_backgroundCtx, _0:stdgo.AnyInterface):stdgo.AnyInterface {
        final _0 = (_0 : stdgo.AnyInterface);
        return stdgo._internal.context.Context_t_backgroundctx_static_extension.T_backgroundCtx_static_extension.value(__self__, _0);
    }
    public static function err(__self__:stdgo._internal.context.Context_t_backgroundctx.T_backgroundCtx):stdgo.Error {
        return stdgo._internal.context.Context_t_backgroundctx_static_extension.T_backgroundCtx_static_extension.err(__self__);
    }
    public static function done(__self__:stdgo._internal.context.Context_t_backgroundctx.T_backgroundCtx):stdgo.Chan<stdgo._internal.context.Context_t_deadlineexceedederror.T_deadlineExceededError> {
        return stdgo._internal.context.Context_t_backgroundctx_static_extension.T_backgroundCtx_static_extension.done(__self__);
    }
    public static function deadline(__self__:stdgo._internal.context.Context_t_backgroundctx.T_backgroundCtx):stdgo.Tuple<stdgo._internal.time.Time_time.Time, Bool> {
        return {
            final obj = stdgo._internal.context.Context_t_backgroundctx_static_extension.T_backgroundCtx_static_extension.deadline(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_todoCtxPointer = stdgo._internal.context.Context_t_todoctxpointer.T_todoCtxPointer;
@:dox(hide) class T_todoCtx_static_extension {
    static public function string(_:T_todoCtx):String {
        return stdgo._internal.context.Context_t_todoctx_static_extension.T_todoCtx_static_extension.string(_);
    }
    public static function value(__self__:stdgo._internal.context.Context_t_todoctx.T_todoCtx, _0:stdgo.AnyInterface):stdgo.AnyInterface {
        final _0 = (_0 : stdgo.AnyInterface);
        return stdgo._internal.context.Context_t_todoctx_static_extension.T_todoCtx_static_extension.value(__self__, _0);
    }
    public static function err(__self__:stdgo._internal.context.Context_t_todoctx.T_todoCtx):stdgo.Error {
        return stdgo._internal.context.Context_t_todoctx_static_extension.T_todoCtx_static_extension.err(__self__);
    }
    public static function done(__self__:stdgo._internal.context.Context_t_todoctx.T_todoCtx):stdgo.Chan<stdgo._internal.context.Context_t_deadlineexceedederror.T_deadlineExceededError> {
        return stdgo._internal.context.Context_t_todoctx_static_extension.T_todoCtx_static_extension.done(__self__);
    }
    public static function deadline(__self__:stdgo._internal.context.Context_t_todoctx.T_todoCtx):stdgo.Tuple<stdgo._internal.time.Time_time.Time, Bool> {
        return {
            final obj = stdgo._internal.context.Context_t_todoctx_static_extension.T_todoCtx_static_extension.deadline(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_afterFuncCtxPointer = stdgo._internal.context.Context_t_afterfuncctxpointer.T_afterFuncCtxPointer;
@:dox(hide) class T_afterFuncCtx_static_extension {
    static public function _cancel(_a:T_afterFuncCtx, _removeFromParent:Bool, _err:stdgo.Error, _cause:stdgo.Error):Void {
        final _a = (_a : stdgo.Ref<stdgo._internal.context.Context_t_afterfuncctx.T_afterFuncCtx>);
        final _err = (_err : stdgo.Error);
        final _cause = (_cause : stdgo.Error);
        stdgo._internal.context.Context_t_afterfuncctx_static_extension.T_afterFuncCtx_static_extension._cancel(_a, _removeFromParent, _err, _cause);
    }
    public static function _propagateCancel(__self__:stdgo._internal.context.Context_t_afterfuncctx.T_afterFuncCtx, _0:Context_, _1:T_canceler):Void {
        stdgo._internal.context.Context_t_afterfuncctx_static_extension.T_afterFuncCtx_static_extension._propagateCancel(__self__, _0, _1);
    }
    public static function value(__self__:stdgo._internal.context.Context_t_afterfuncctx.T_afterFuncCtx, _0:stdgo.AnyInterface):stdgo.AnyInterface {
        final _0 = (_0 : stdgo.AnyInterface);
        return stdgo._internal.context.Context_t_afterfuncctx_static_extension.T_afterFuncCtx_static_extension.value(__self__, _0);
    }
    public static function string(__self__:stdgo._internal.context.Context_t_afterfuncctx.T_afterFuncCtx):String {
        return stdgo._internal.context.Context_t_afterfuncctx_static_extension.T_afterFuncCtx_static_extension.string(__self__);
    }
    public static function err(__self__:stdgo._internal.context.Context_t_afterfuncctx.T_afterFuncCtx):stdgo.Error {
        return stdgo._internal.context.Context_t_afterfuncctx_static_extension.T_afterFuncCtx_static_extension.err(__self__);
    }
    public static function done(__self__:stdgo._internal.context.Context_t_afterfuncctx.T_afterFuncCtx):stdgo.Chan<stdgo._internal.context.Context_t_deadlineexceedederror.T_deadlineExceededError> {
        return stdgo._internal.context.Context_t_afterfuncctx_static_extension.T_afterFuncCtx_static_extension.done(__self__);
    }
    public static function deadline(__self__:stdgo._internal.context.Context_t_afterfuncctx.T_afterFuncCtx):stdgo.Tuple<stdgo._internal.time.Time_time.Time, Bool> {
        return {
            final obj = stdgo._internal.context.Context_t_afterfuncctx_static_extension.T_afterFuncCtx_static_extension.deadline(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_stopCtxPointer = stdgo._internal.context.Context_t_stopctxpointer.T_stopCtxPointer;
@:dox(hide) class T_stopCtx_static_extension {
    public static function value(__self__:stdgo._internal.context.Context_t_stopctx.T_stopCtx, _0:stdgo.AnyInterface):stdgo.AnyInterface {
        final _0 = (_0 : stdgo.AnyInterface);
        return stdgo._internal.context.Context_t_stopctx_static_extension.T_stopCtx_static_extension.value(__self__, _0);
    }
    public static function err(__self__:stdgo._internal.context.Context_t_stopctx.T_stopCtx):stdgo.Error {
        return stdgo._internal.context.Context_t_stopctx_static_extension.T_stopCtx_static_extension.err(__self__);
    }
    public static function done(__self__:stdgo._internal.context.Context_t_stopctx.T_stopCtx):stdgo.Chan<stdgo._internal.context.Context_t_deadlineexceedederror.T_deadlineExceededError> {
        return stdgo._internal.context.Context_t_stopctx_static_extension.T_stopCtx_static_extension.done(__self__);
    }
    public static function deadline(__self__:stdgo._internal.context.Context_t_stopctx.T_stopCtx):stdgo.Tuple<stdgo._internal.time.Time_time.Time, Bool> {
        return {
            final obj = stdgo._internal.context.Context_t_stopctx_static_extension.T_stopCtx_static_extension.deadline(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_cancelCtxPointer = stdgo._internal.context.Context_t_cancelctxpointer.T_cancelCtxPointer;
@:dox(hide) class T_cancelCtx_static_extension {
    static public function _cancel(_c:T_cancelCtx, _removeFromParent:Bool, _err:stdgo.Error, _cause:stdgo.Error):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.context.Context_t_cancelctx.T_cancelCtx>);
        final _err = (_err : stdgo.Error);
        final _cause = (_cause : stdgo.Error);
        stdgo._internal.context.Context_t_cancelctx_static_extension.T_cancelCtx_static_extension._cancel(_c, _removeFromParent, _err, _cause);
    }
    static public function string(_c:T_cancelCtx):String {
        final _c = (_c : stdgo.Ref<stdgo._internal.context.Context_t_cancelctx.T_cancelCtx>);
        return stdgo._internal.context.Context_t_cancelctx_static_extension.T_cancelCtx_static_extension.string(_c);
    }
    static public function _propagateCancel(_c:T_cancelCtx, _parent:Context_, _child:T_canceler):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.context.Context_t_cancelctx.T_cancelCtx>);
        stdgo._internal.context.Context_t_cancelctx_static_extension.T_cancelCtx_static_extension._propagateCancel(_c, _parent, _child);
    }
    static public function err(_c:T_cancelCtx):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.context.Context_t_cancelctx.T_cancelCtx>);
        return stdgo._internal.context.Context_t_cancelctx_static_extension.T_cancelCtx_static_extension.err(_c);
    }
    static public function done(_c:T_cancelCtx):stdgo.Chan<stdgo._internal.context.Context_t_deadlineexceedederror.T_deadlineExceededError> {
        final _c = (_c : stdgo.Ref<stdgo._internal.context.Context_t_cancelctx.T_cancelCtx>);
        return stdgo._internal.context.Context_t_cancelctx_static_extension.T_cancelCtx_static_extension.done(_c);
    }
    static public function value(_c:T_cancelCtx, _key:stdgo.AnyInterface):stdgo.AnyInterface {
        final _c = (_c : stdgo.Ref<stdgo._internal.context.Context_t_cancelctx.T_cancelCtx>);
        final _key = (_key : stdgo.AnyInterface);
        return stdgo._internal.context.Context_t_cancelctx_static_extension.T_cancelCtx_static_extension.value(_c, _key);
    }
    public static function deadline(__self__:stdgo._internal.context.Context_t_cancelctx.T_cancelCtx):stdgo.Tuple<stdgo._internal.time.Time_time.Time, Bool> {
        return {
            final obj = stdgo._internal.context.Context_t_cancelctx_static_extension.T_cancelCtx_static_extension.deadline(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_withoutCancelCtxPointer = stdgo._internal.context.Context_t_withoutcancelctxpointer.T_withoutCancelCtxPointer;
@:dox(hide) class T_withoutCancelCtx_static_extension {
    static public function string(_c:T_withoutCancelCtx):String {
        return stdgo._internal.context.Context_t_withoutcancelctx_static_extension.T_withoutCancelCtx_static_extension.string(_c);
    }
    static public function value(_c:T_withoutCancelCtx, _key:stdgo.AnyInterface):stdgo.AnyInterface {
        final _key = (_key : stdgo.AnyInterface);
        return stdgo._internal.context.Context_t_withoutcancelctx_static_extension.T_withoutCancelCtx_static_extension.value(_c, _key);
    }
    static public function err(_:T_withoutCancelCtx):stdgo.Error {
        return stdgo._internal.context.Context_t_withoutcancelctx_static_extension.T_withoutCancelCtx_static_extension.err(_);
    }
    static public function done(_:T_withoutCancelCtx):stdgo.Chan<stdgo._internal.context.Context_t_deadlineexceedederror.T_deadlineExceededError> {
        return stdgo._internal.context.Context_t_withoutcancelctx_static_extension.T_withoutCancelCtx_static_extension.done(_);
    }
    static public function deadline(_:T_withoutCancelCtx):stdgo.Tuple<stdgo._internal.time.Time_time.Time, Bool> {
        return {
            final obj = stdgo._internal.context.Context_t_withoutcancelctx_static_extension.T_withoutCancelCtx_static_extension.deadline(_);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_timerCtxPointer = stdgo._internal.context.Context_t_timerctxpointer.T_timerCtxPointer;
@:dox(hide) class T_timerCtx_static_extension {
    static public function _cancel(_c:T_timerCtx, _removeFromParent:Bool, _err:stdgo.Error, _cause:stdgo.Error):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.context.Context_t_timerctx.T_timerCtx>);
        final _err = (_err : stdgo.Error);
        final _cause = (_cause : stdgo.Error);
        stdgo._internal.context.Context_t_timerctx_static_extension.T_timerCtx_static_extension._cancel(_c, _removeFromParent, _err, _cause);
    }
    static public function string(_c:T_timerCtx):String {
        final _c = (_c : stdgo.Ref<stdgo._internal.context.Context_t_timerctx.T_timerCtx>);
        return stdgo._internal.context.Context_t_timerctx_static_extension.T_timerCtx_static_extension.string(_c);
    }
    static public function deadline(_c:T_timerCtx):stdgo.Tuple<stdgo._internal.time.Time_time.Time, Bool> {
        final _c = (_c : stdgo.Ref<stdgo._internal.context.Context_t_timerctx.T_timerCtx>);
        return {
            final obj = stdgo._internal.context.Context_t_timerctx_static_extension.T_timerCtx_static_extension.deadline(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _propagateCancel(__self__:stdgo._internal.context.Context_t_timerctx.T_timerCtx, _0:Context_, _1:T_canceler):Void {
        stdgo._internal.context.Context_t_timerctx_static_extension.T_timerCtx_static_extension._propagateCancel(__self__, _0, _1);
    }
    public static function value(__self__:stdgo._internal.context.Context_t_timerctx.T_timerCtx, _0:stdgo.AnyInterface):stdgo.AnyInterface {
        final _0 = (_0 : stdgo.AnyInterface);
        return stdgo._internal.context.Context_t_timerctx_static_extension.T_timerCtx_static_extension.value(__self__, _0);
    }
    public static function err(__self__:stdgo._internal.context.Context_t_timerctx.T_timerCtx):stdgo.Error {
        return stdgo._internal.context.Context_t_timerctx_static_extension.T_timerCtx_static_extension.err(__self__);
    }
    public static function done(__self__:stdgo._internal.context.Context_t_timerctx.T_timerCtx):stdgo.Chan<stdgo._internal.context.Context_t_deadlineexceedederror.T_deadlineExceededError> {
        return stdgo._internal.context.Context_t_timerctx_static_extension.T_timerCtx_static_extension.done(__self__);
    }
}
@:dox(hide) typedef T_valueCtxPointer = stdgo._internal.context.Context_t_valuectxpointer.T_valueCtxPointer;
@:dox(hide) class T_valueCtx_static_extension {
    static public function value(_c:T_valueCtx, _key:stdgo.AnyInterface):stdgo.AnyInterface {
        final _c = (_c : stdgo.Ref<stdgo._internal.context.Context_t_valuectx.T_valueCtx>);
        final _key = (_key : stdgo.AnyInterface);
        return stdgo._internal.context.Context_t_valuectx_static_extension.T_valueCtx_static_extension.value(_c, _key);
    }
    static public function string(_c:T_valueCtx):String {
        final _c = (_c : stdgo.Ref<stdgo._internal.context.Context_t_valuectx.T_valueCtx>);
        return stdgo._internal.context.Context_t_valuectx_static_extension.T_valueCtx_static_extension.string(_c);
    }
    public static function err(__self__:stdgo._internal.context.Context_t_valuectx.T_valueCtx):stdgo.Error {
        return stdgo._internal.context.Context_t_valuectx_static_extension.T_valueCtx_static_extension.err(__self__);
    }
    public static function done(__self__:stdgo._internal.context.Context_t_valuectx.T_valueCtx):stdgo.Chan<stdgo._internal.context.Context_t_deadlineexceedederror.T_deadlineExceededError> {
        return stdgo._internal.context.Context_t_valuectx_static_extension.T_valueCtx_static_extension.done(__self__);
    }
    public static function deadline(__self__:stdgo._internal.context.Context_t_valuectx.T_valueCtx):stdgo.Tuple<stdgo._internal.time.Time_time.Time, Bool> {
        return {
            final obj = stdgo._internal.context.Context_t_valuectx_static_extension.T_valueCtx_static_extension.deadline(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_myCtxPointer = stdgo._internal.context.Context_t_myctxpointer.T_myCtxPointer;
@:dox(hide) class T_myCtx_static_extension {
    public static function value(__self__:stdgo._internal.context.Context_t_myctx.T_myCtx, _0:stdgo.AnyInterface):stdgo.AnyInterface {
        final _0 = (_0 : stdgo.AnyInterface);
        return stdgo._internal.context.Context_t_myctx_static_extension.T_myCtx_static_extension.value(__self__, _0);
    }
    public static function err(__self__:stdgo._internal.context.Context_t_myctx.T_myCtx):stdgo.Error {
        return stdgo._internal.context.Context_t_myctx_static_extension.T_myCtx_static_extension.err(__self__);
    }
    public static function done(__self__:stdgo._internal.context.Context_t_myctx.T_myCtx):stdgo.Chan<stdgo._internal.context.Context_t_deadlineexceedederror.T_deadlineExceededError> {
        return stdgo._internal.context.Context_t_myctx_static_extension.T_myCtx_static_extension.done(__self__);
    }
    public static function deadline(__self__:stdgo._internal.context.Context_t_myctx.T_myCtx):stdgo.Tuple<stdgo._internal.time.Time_time.Time, Bool> {
        return {
            final obj = stdgo._internal.context.Context_t_myctx_static_extension.T_myCtx_static_extension.deadline(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_myDoneCtxPointer = stdgo._internal.context.Context_t_mydonectxpointer.T_myDoneCtxPointer;
@:dox(hide) class T_myDoneCtx_static_extension {
    static public function done(_d:T_myDoneCtx):stdgo.Chan<stdgo._internal.context.Context_t_deadlineexceedederror.T_deadlineExceededError> {
        final _d = (_d : stdgo.Ref<stdgo._internal.context.Context_t_mydonectx.T_myDoneCtx>);
        return stdgo._internal.context.Context_t_mydonectx_static_extension.T_myDoneCtx_static_extension.done(_d);
    }
    public static function value(__self__:stdgo._internal.context.Context_t_mydonectx.T_myDoneCtx, _0:stdgo.AnyInterface):stdgo.AnyInterface {
        final _0 = (_0 : stdgo.AnyInterface);
        return stdgo._internal.context.Context_t_mydonectx_static_extension.T_myDoneCtx_static_extension.value(__self__, _0);
    }
    public static function err(__self__:stdgo._internal.context.Context_t_mydonectx.T_myDoneCtx):stdgo.Error {
        return stdgo._internal.context.Context_t_mydonectx_static_extension.T_myDoneCtx_static_extension.err(__self__);
    }
    public static function deadline(__self__:stdgo._internal.context.Context_t_mydonectx.T_myDoneCtx):stdgo.Tuple<stdgo._internal.time.Time_time.Time, Bool> {
        return {
            final obj = stdgo._internal.context.Context_t_mydonectx_static_extension.T_myDoneCtx_static_extension.deadline(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T__struct_0PointerPointer = stdgo._internal.context.Context_t__struct_0pointerpointer.T__struct_0PointerPointer;
@:dox(hide) class T__struct_0Pointer_static_extension {

}
typedef CancelFuncPointer = stdgo._internal.context.Context_cancelfuncpointer.CancelFuncPointer;
class CancelFunc_static_extension {

}
typedef CancelCauseFuncPointer = stdgo._internal.context.Context_cancelcausefuncpointer.CancelCauseFuncPointer;
class CancelCauseFunc_static_extension {

}
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
    static public inline function background():Context_ {
        return stdgo._internal.context.Context_background.background();
    }
    /**
        * TODO returns a non-nil, empty [Context]. Code should use context.TODO when
        * it's unclear which Context to use or it is not yet available (because the
        * surrounding function has not yet been extended to accept a Context
        * parameter).
    **/
    static public inline function tODO():Context_ {
        return stdgo._internal.context.Context_todo.tODO();
    }
    /**
        * WithCancel returns a copy of parent with a new Done channel. The returned
        * context's Done channel is closed when the returned cancel function is called
        * or when the parent context's Done channel is closed, whichever happens first.
        * 
        * Canceling this context releases resources associated with it, so code should
        * call cancel as soon as the operations running in this Context complete.
    **/
    static public inline function withCancel(_parent:Context_):stdgo.Tuple<Context_, CancelFunc> {
        return {
            final obj = stdgo._internal.context.Context_withcancel.withCancel(_parent);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
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
    static public inline function withCancelCause(_parent:Context_):stdgo.Tuple<Context_, CancelCauseFunc> {
        return {
            final obj = stdgo._internal.context.Context_withcancelcause.withCancelCause(_parent);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Cause returns a non-nil error explaining why c was canceled.
        * The first cancellation of c or one of its parents sets the cause.
        * If that cancellation happened via a call to CancelCauseFunc(err),
        * then [Cause] returns err.
        * Otherwise Cause(c) returns the same value as c.Err().
        * Cause returns nil if c has not been canceled yet.
    **/
    static public inline function cause(_c:Context_):stdgo.Error {
        return stdgo._internal.context.Context_cause.cause(_c);
    }
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
    static public inline function afterFunc(_ctx:Context_, _f:() -> Void):() -> Bool {
        final _f = _f;
        return () -> stdgo._internal.context.Context_afterfunc.afterFunc(_ctx, _f)();
    }
    /**
        * WithoutCancel returns a copy of parent that is not canceled when parent is canceled.
        * The returned context returns no Deadline or Err, and its Done channel is nil.
        * Calling [Cause] on the returned context returns nil.
    **/
    static public inline function withoutCancel(_parent:Context_):Context_ {
        return stdgo._internal.context.Context_withoutcancel.withoutCancel(_parent);
    }
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
    static public inline function withDeadline(_parent:Context_, _d:stdgo._internal.time.Time_time.Time):stdgo.Tuple<Context_, CancelFunc> {
        return {
            final obj = stdgo._internal.context.Context_withdeadline.withDeadline(_parent, _d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * WithDeadlineCause behaves like [WithDeadline] but also sets the cause of the
        * returned Context when the deadline is exceeded. The returned [CancelFunc] does
        * not set the cause.
    **/
    static public inline function withDeadlineCause(_parent:Context_, _d:stdgo._internal.time.Time_time.Time, _cause:stdgo.Error):stdgo.Tuple<Context_, CancelFunc> {
        final _cause = (_cause : stdgo.Error);
        return {
            final obj = stdgo._internal.context.Context_withdeadlinecause.withDeadlineCause(_parent, _d, _cause);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
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
    static public inline function withTimeout(_parent:Context_, _timeout:stdgo._internal.time.Time_duration.Duration):stdgo.Tuple<Context_, CancelFunc> {
        return {
            final obj = stdgo._internal.context.Context_withtimeout.withTimeout(_parent, _timeout);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * WithTimeoutCause behaves like [WithTimeout] but also sets the cause of the
        * returned Context when the timeout expires. The returned [CancelFunc] does
        * not set the cause.
    **/
    static public inline function withTimeoutCause(_parent:Context_, _timeout:stdgo._internal.time.Time_duration.Duration, _cause:stdgo.Error):stdgo.Tuple<Context_, CancelFunc> {
        final _cause = (_cause : stdgo.Error);
        return {
            final obj = stdgo._internal.context.Context_withtimeoutcause.withTimeoutCause(_parent, _timeout, _cause);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
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
    static public inline function withValue(_parent:Context_, _key:stdgo.AnyInterface, _val:stdgo.AnyInterface):Context_ {
        final _key = (_key : stdgo.AnyInterface);
        final _val = (_val : stdgo.AnyInterface);
        return stdgo._internal.context.Context_withvalue.withValue(_parent, _key, _val);
    }
    static public inline function xTestParentFinishesChild(_t:T_testingT):Void {
        stdgo._internal.context.Context_xtestparentfinisheschild.xTestParentFinishesChild(_t);
    }
    static public inline function xTestChildFinishesFirst(_t:T_testingT):Void {
        stdgo._internal.context.Context_xtestchildfinishesfirst.xTestChildFinishesFirst(_t);
    }
    static public inline function xTestCancelRemoves(_t:T_testingT):Void {
        stdgo._internal.context.Context_xtestcancelremoves.xTestCancelRemoves(_t);
    }
    static public inline function xTestCustomContextGoroutines(_t:T_testingT):Void {
        stdgo._internal.context.Context_xtestcustomcontextgoroutines.xTestCustomContextGoroutines(_t);
    }
}
