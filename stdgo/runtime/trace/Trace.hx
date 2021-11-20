package stdgo.runtime.trace;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
@:structInit class T_traceContextKey {
    public function new() stdgo.internal.Macro.initLocals();
    public function toString() {
        return "{}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_traceContextKey();
    }
    public function __set__(__tmp__) {
        return this;
    }
}
@:structInit class Task {
    public function end():Void {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _userTaskEnd(_t.value._id);
    }
    public var _id : GoUInt64 = ((0 : GoUInt64));
    public function new(?_id:GoUInt64) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_id) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Task(_id);
    }
    public function __set__(__tmp__) {
        this._id = __tmp__._id;
        return this;
    }
}
@:structInit class Region {
    public function end():Void {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_r == _noopRegion) {
            return;
        };
        _userRegion(_r.value._id, _regionEndCode, _r.value._regionType);
    }
    public var _id : GoUInt64 = ((0 : GoUInt64));
    public var _regionType : GoString = (("" : GoString));
    public function new(?_id:GoUInt64, ?_regionType:GoString) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_id) + " " + Go.string(_regionType) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Region(_id, _regionType);
    }
    public function __set__(__tmp__) {
        this._id = __tmp__._id;
        this._regionType = __tmp__._regionType;
        return this;
    }
}
@:structInit @:local class T__struct_48 {
    @:embedded
    public var mutex : stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
    public var _enabled : GoInt32 = ((0 : GoInt32));
    public function new(?mutex:stdgo.sync.Sync.Mutex, ?_enabled:GoInt32) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(mutex) + " " + Go.string(_enabled) + "}";
    }
    public function lock() mutex.lock();
    public function unlock() mutex.unlock();
    public function _lockSlow() mutex._lockSlow();
    public function _unlockSlow(_new:GoInt32) mutex._unlockSlow(_0);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_48(mutex, _enabled);
    }
    public function __set__(__tmp__) {
        this.mutex = __tmp__.mutex;
        this._enabled = __tmp__._enabled;
        return this;
    }
}
final _regionEndCode : GoUInt64 = ((((1 : GoUInt64)) : GoUInt64));
var _lastTaskID : GoUInt64 = ((0 : GoUInt64));
var _noopRegion : Pointer<Region> = Go.pointer(new Region());
var _bgTask : Task = (({ _id : ((((0 : GoUInt64)) : GoUInt64)) } : Task)).__copy__();
final _regionStartCode : GoUInt64 = ((((0 : GoUInt64)) : GoUInt64));
var _tracing : T__struct_48 = new T__struct_48();
/**
    // NewTask creates a task instance with the type taskType and returns
    // it along with a Context that carries the task.
    // If the input context contains a task, the new task is its subtask.
    //
    // The taskType is used to classify task instances. Analysis tools
    // like the Go execution tracer may assume there are only a bounded
    // number of unique task types in the system.
    //
    // The returned end function is used to mark the task's end.
    // The trace tool measures task latency as the time between task creation
    // and when the end function is called, and provides the latency
    // distribution per task type.
    // If the end function is called multiple times, only the first
    // call is used in the latency measurement.
    //
    //   ctx, task := trace.NewTask(ctx, "awesomeTask")
    //   trace.WithRegion(ctx, "preparation", prepWork)
    //   // preparation of the task
    //   go func() {  // continue processing the task in a separate goroutine.
    //       defer task.End()
    //       trace.WithRegion(ctx, "remainingWork", remainingWork)
    //   }()
**/
function newTask(_pctx:stdgo.context.Context.Context, _taskType:GoString):{ var _0 : stdgo.context.Context.Context; var _1 : Pointer<Task>; } {
        var _ctx:stdgo.context.Context.Context = ((null : stdgo.context.Context.Context)), _task:Pointer<Task> = new Pointer<Task>().nil();
        var _pid:GoUInt64 = _fromContext(_pctx).value._id;
        var _id:GoUInt64 = _newID();
        _userTaskCreate(_id, _pid, _taskType);
        var _s:Pointer<Task> = Go.pointer((({ _id : _id } : Task)));
        return { _0 : stdgo.context.Context.withValue(_pctx, Go.toInterface(new T_traceContextKey().__copy__()), Go.toInterface(_s)), _1 : _s };
    }
function _fromContext(_ctx:stdgo.context.Context.Context):Pointer<Task> {
        {
            var __tmp__ = try {
                { value : ((_ctx.value(Go.toInterface(new T_traceContextKey().__copy__())).value : Pointer<Task>)), ok : true };
            } catch(_) {
                { value : new Pointer<Task>().nil(), ok : false };
            }, _s = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return _s;
            };
        };
        return Go.pointer(_bgTask);
    }
function _newID():GoUInt64 {
        return sync.atomic.Atomic.addUint64(Go.pointer(_lastTaskID), ((1 : GoUInt64)));
    }
/**
    // Log emits a one-off event with the given category and message.
    // Category can be empty and the API assumes there are only a handful of
    // unique categories in the system.
**/
function log(_ctx:stdgo.context.Context.Context, _category:GoString, _message:GoString):Void {
        var _id:GoUInt64 = _fromContext(_ctx).value._id;
        _userLog(_id, _category, _message);
    }
/**
    // Logf is like Log, but the value is formatted using the specified format spec.
**/
function logf(_ctx:stdgo.context.Context.Context, _category:GoString, _format:GoString, _args:haxe.Rest<AnyInterface>):Void {
        var _args = new Slice<AnyInterface>(..._args);
        if (isEnabled()) {
            var _id:GoUInt64 = _fromContext(_ctx).value._id;
            _userLog(_id, _category, stdgo.fmt.Fmt.sprintf(_format, ..._args.toArray()));
        };
    }
/**
    // WithRegion starts a region associated with its calling goroutine, runs fn,
    // and then ends the region. If the context carries a task, the region is
    // associated with the task. Otherwise, the region is attached to the background
    // task.
    //
    // The regionType is used to classify regions, so there should be only a
    // handful of unique region types.
**/
function withRegion(_ctx:stdgo.context.Context.Context, _regionType:GoString, _fn:() -> Void):Void {
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        try {
            var _id:GoUInt64 = _fromContext(_ctx).value._id;
            _userRegion(_id, _regionStartCode, _regionType);
            {
                var a0 = _id;
                var a1 = _regionEndCode;
                var a2 = _regionType;
                deferstack.unshift(() -> _userRegion(a0, a1, a2));
            };
            _fn();
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return;
            };
        };
    }
/**
    // StartRegion starts a region and returns a function for marking the
    // end of the region. The returned Region's End function must be called
    // from the same goroutine where the region was started.
    // Within each goroutine, regions must nest. That is, regions started
    // after this region must be ended before this region can be ended.
    // Recommended usage is
    //
    //     defer trace.StartRegion(ctx, "myTracedRegion").End()
    //
**/
function startRegion(_ctx:stdgo.context.Context.Context, _regionType:GoString):Pointer<Region> {
        if (!isEnabled()) {
            return _noopRegion;
        };
        var _id:GoUInt64 = _fromContext(_ctx).value._id;
        _userRegion(_id, _regionStartCode, _regionType);
        return Go.pointer(new Region(_id, _regionType));
    }
/**
    // IsEnabled reports whether tracing is enabled.
    // The information is advisory only. The tracing status
    // may have changed by the time this function returns.
**/
function isEnabled():Bool {
        var _enabled:GoInt32 = sync.atomic.Atomic.loadInt32(Go.pointer(_tracing._enabled));
        return _enabled == ((1 : GoInt32));
    }
/**
    // emits UserTaskCreate event.
**/
function _userTaskCreate(_id:GoUInt64, _parentID:GoUInt64, _taskType:GoString):Void {}
/**
    // emits UserTaskEnd event.
**/
function _userTaskEnd(_id:GoUInt64):Void {}
/**
    // emits UserRegion event.
**/
function _userRegion(_id:GoUInt64, _mode:GoUInt64, _regionType:GoString):Void {}
/**
    // emits UserLog event.
**/
function _userLog(_id:GoUInt64, _category:GoString, _message:GoString):Void {}
/**
    // Start enables tracing for the current program.
    // While tracing, the trace will be buffered and written to w.
    // Start returns an error if tracing is already enabled.
**/
function start(_w:stdgo.io.Io.Writer):Error {
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        _tracing.lock();
        try {
            deferstack.unshift(() -> _tracing.unlock());
            {
                var _err:stdgo.Error = stdgo.runtime.Runtime.startTrace();
                if (_err != null) {
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return _err;
                    };
                };
            };
            Go.routine({
                var a = function():Void {
                    while (true) {
                        var _data:Slice<GoUInt8> = stdgo.runtime.Runtime.readTrace();
                        if (_data == null || _data.isNil()) {
                            break;
                        };
                        _w.write(_data);
                    };
                };
                a();
            });
            sync.atomic.Atomic.storeInt32(Go.pointer(_tracing._enabled), ((1 : GoInt32)));
            {
                for (defer in deferstack) {
                    defer();
                };
                return ((null : stdgo.Error));
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return ((null : stdgo.Error));
            };
        };
    }
/**
    // Stop stops the current tracing, if any.
    // Stop only returns after all the writes for the trace have completed.
**/
function stop():Void {
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        try {
            _tracing.lock();
            deferstack.unshift(() -> _tracing.unlock());
            sync.atomic.Atomic.storeInt32(Go.pointer(_tracing._enabled), ((0 : GoInt32)));
            stdgo.runtime.Runtime.stopTrace();
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return;
            };
        };
    }
class Task_extension_fields {
    public function end(__tmp__):Void __tmp__.end();
}
class Region_extension_fields {
    public function end(__tmp__):Void __tmp__.end();
}
