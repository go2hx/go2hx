package runtime.trace_;
@:structInit @:using(runtime.trace_.Trace_.T_traceContextKey_static_extension) abstract T_traceContextKey(_internal.runtime.trace_.Trace__T_traceContextKey.T_traceContextKey) from _internal.runtime.trace_.Trace__T_traceContextKey.T_traceContextKey to _internal.runtime.trace_.Trace__T_traceContextKey.T_traceContextKey {
    public function new() this = new _internal.runtime.trace_.Trace__T_traceContextKey.T_traceContextKey();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(runtime.trace_.Trace_.Task_static_extension) abstract Task(_internal.runtime.trace_.Trace__Task.Task) from _internal.runtime.trace_.Trace__Task.Task to _internal.runtime.trace_.Trace__Task.Task {
    public var _id(get, set) : haxe.UInt64;
    function get__id():haxe.UInt64 return this._id;
    function set__id(v:haxe.UInt64):haxe.UInt64 {
        this._id = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?_id:haxe.UInt64) this = new _internal.runtime.trace_.Trace__Task.Task((_id : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(runtime.trace_.Trace_.Region_static_extension) abstract Region(_internal.runtime.trace_.Trace__Region.Region) from _internal.runtime.trace_.Trace__Region.Region to _internal.runtime.trace_.Trace__Region.Region {
    public var _id(get, set) : haxe.UInt64;
    function get__id():haxe.UInt64 return this._id;
    function set__id(v:haxe.UInt64):haxe.UInt64 {
        this._id = (v : stdgo.GoUInt64);
        return v;
    }
    public var _regionType(get, set) : String;
    function get__regionType():String return this._regionType;
    function set__regionType(v:String):String {
        this._regionType = (v : stdgo.GoString);
        return v;
    }
    public function new(?_id:haxe.UInt64, ?_regionType:String) this = new _internal.runtime.trace_.Trace__Region.Region((_id : stdgo.GoUInt64), (_regionType : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T__struct_0Pointer = _internal.runtime.trace_.Trace__T__struct_0Pointer.T__struct_0Pointer;
class T__struct_0_static_extension {
    public static function _unlockSlow(__self__:_internal.runtime.trace_.Trace__t__struct_0.T__struct_0, _0:StdTypes.Int):Void {
        final _0 = (_0 : stdgo.GoInt32);
        _internal.runtime.trace_.Trace__T__struct_0_static_extension.T__struct_0_static_extension._unlockSlow(__self__, _0);
    }
    public static function _lockSlow(__self__:_internal.runtime.trace_.Trace__t__struct_0.T__struct_0):Void {
        _internal.runtime.trace_.Trace__T__struct_0_static_extension.T__struct_0_static_extension._lockSlow(__self__);
    }
    public static function unlock(__self__:_internal.runtime.trace_.Trace__t__struct_0.T__struct_0):Void {
        _internal.runtime.trace_.Trace__T__struct_0_static_extension.T__struct_0_static_extension.unlock(__self__);
    }
    public static function tryLock(__self__:_internal.runtime.trace_.Trace__t__struct_0.T__struct_0):Bool {
        return _internal.runtime.trace_.Trace__T__struct_0_static_extension.T__struct_0_static_extension.tryLock(__self__);
    }
    public static function lock(__self__:_internal.runtime.trace_.Trace__t__struct_0.T__struct_0):Void {
        _internal.runtime.trace_.Trace__T__struct_0_static_extension.T__struct_0_static_extension.lock(__self__);
    }
}
typedef T__struct_0 = _internal.runtime.trace_.Trace__T__struct_0.T__struct_0;
typedef T_traceContextKeyPointer = _internal.runtime.trace_.Trace__T_traceContextKeyPointer.T_traceContextKeyPointer;
class T_traceContextKey_static_extension {

}
typedef TaskPointer = _internal.runtime.trace_.Trace__TaskPointer.TaskPointer;
class Task_static_extension {
    static public function end(_t:Task):Void {
        final _t = (_t : stdgo.Ref<_internal.runtime.trace_.Trace_task.Task>);
        _internal.runtime.trace_.Trace__Task_static_extension.Task_static_extension.end(_t);
    }
}
typedef RegionPointer = _internal.runtime.trace_.Trace__RegionPointer.RegionPointer;
class Region_static_extension {
    static public function end(_r:Region):Void {
        final _r = (_r : stdgo.Ref<_internal.runtime.trace_.Trace_region.Region>);
        _internal.runtime.trace_.Trace__Region_static_extension.Region_static_extension.end(_r);
    }
}
typedef T__struct_0PointerPointer = _internal.runtime.trace_.Trace__T__struct_0PointerPointer.T__struct_0PointerPointer;
class T__struct_0Pointer_static_extension {

}
/**
    * Package trace contains facilities for programs to generate traces
    * for the Go execution tracer.
    * 
    * # Tracing runtime activities
    * 
    * The execution trace captures a wide range of execution events such as
    * goroutine creation/blocking/unblocking, syscall enter/exit/block,
    * GC-related events, changes of heap size, processor start/stop, etc.
    * When CPU profiling is active, the execution tracer makes an effort to
    * include those samples as well.
    * A precise nanosecond-precision timestamp and a stack trace is
    * captured for most events. The generated trace can be interpreted
    * using `go tool trace`.
    * 
    * Support for tracing tests and benchmarks built with the standard
    * testing package is built into `go test`. For example, the following
    * command runs the test in the current directory and writes the trace
    * file (trace.out).
    * 
    * 	go test -trace=trace.out
    * 
    * This runtime/trace package provides APIs to add equivalent tracing
    * support to a standalone program. See the Example that demonstrates
    * how to use this API to enable tracing.
    * 
    * There is also a standard HTTP interface to trace data. Adding the
    * following line will install a handler under the /debug/pprof/trace URL
    * to download a live trace:
    * 
    * 	import _ "net/http/pprof"
    * 
    * See the [net/http/pprof] package for more details about all of the
    * debug endpoints installed by this import.
    * 
    * # User annotation
    * 
    * Package trace provides user annotation APIs that can be used to
    * log interesting events during execution.
    * 
    * There are three types of user annotations: log messages, regions,
    * and tasks.
    * 
    * [Log] emits a timestamped message to the execution trace along with
    * additional information such as the category of the message and
    * which goroutine called [Log]. The execution tracer provides UIs to filter
    * and group goroutines using the log category and the message supplied
    * in [Log].
    * 
    * A region is for logging a time interval during a goroutine's execution.
    * By definition, a region starts and ends in the same goroutine.
    * Regions can be nested to represent subintervals.
    * For example, the following code records four regions in the execution
    * trace to trace the durations of sequential steps in a cappuccino making
    * operation.
    * 
    * 	trace.WithRegion(ctx, "makeCappuccino", func() {
    * 
    * 	   // orderID allows to identify a specific order
    * 	   // among many cappuccino order region records.
    * 	   trace.Log(ctx, "orderID", orderID)
    * 
    * 	   trace.WithRegion(ctx, "steamMilk", steamMilk)
    * 	   trace.WithRegion(ctx, "extractCoffee", extractCoffee)
    * 	   trace.WithRegion(ctx, "mixMilkCoffee", mixMilkCoffee)
    * 	})
    * 
    * A task is a higher-level component that aids tracing of logical
    * operations such as an RPC request, an HTTP request, or an
    * interesting local operation which may require multiple goroutines
    * working together. Since tasks can involve multiple goroutines,
    * they are tracked via a [context.Context] object. [NewTask] creates
    * a new task and embeds it in the returned [context.Context] object.
    * Log messages and regions are attached to the task, if any, in the
    * Context passed to [Log] and [WithRegion].
    * 
    * For example, assume that we decided to froth milk, extract coffee,
    * and mix milk and coffee in separate goroutines. With a task,
    * the trace tool can identify the goroutines involved in a specific
    * cappuccino order.
    * 
    * 	ctx, task := trace.NewTask(ctx, "makeCappuccino")
    * 	trace.Log(ctx, "orderID", orderID)
    * 
    * 	milk := make(chan bool)
    * 	espresso := make(chan bool)
    * 
    * 	go func() {
    * 	        trace.WithRegion(ctx, "steamMilk", steamMilk)
    * 	        milk <- true
    * 	}()
    * 	go func() {
    * 	        trace.WithRegion(ctx, "extractCoffee", extractCoffee)
    * 	        espresso <- true
    * 	}()
    * 	go func() {
    * 	        defer task.End() // When assemble is done, the order is complete.
    * 	        <-espresso
    * 	        <-milk
    * 	        trace.WithRegion(ctx, "mixMilkCoffee", mixMilkCoffee)
    * 	}()
    * 
    * The trace tool computes the latency of a task by measuring the
    * time between the task creation and the task end and provides
    * latency distributions for each task type found in the trace.
**/
class Trace_ {
    /**
        * NewTask creates a task instance with the type taskType and returns
        * it along with a Context that carries the task.
        * If the input context contains a task, the new task is its subtask.
        * 
        * The taskType is used to classify task instances. Analysis tools
        * like the Go execution tracer may assume there are only a bounded
        * number of unique task types in the system.
        * 
        * The returned Task's [Task.End] method is used to mark the task's end.
        * The trace tool measures task latency as the time between task creation
        * and when the End method is called, and provides the latency
        * distribution per task type.
        * If the End method is called multiple times, only the first
        * call is used in the latency measurement.
        * 
        * 	ctx, task := trace.NewTask(ctx, "awesomeTask")
        * 	trace.WithRegion(ctx, "preparation", prepWork)
        * 	// preparation of the task
        * 	go func() {  // continue processing the task in a separate goroutine.
        * 	    defer task.End()
        * 	    trace.WithRegion(ctx, "remainingWork", remainingWork)
        * 	}()
    **/
    static public inline function newTask(_pctx:stdgo._internal.context.Context_context.Context, _taskType:String):stdgo.Tuple<stdgo._internal.context.Context_context.Context, Task> {
        final _taskType = (_taskType : stdgo.GoString);
        return {
            final obj = _internal.runtime.trace_.Trace__newTask.newTask(_pctx, _taskType);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Log emits a one-off event with the given category and message.
        * Category can be empty and the API assumes there are only a handful of
        * unique categories in the system.
    **/
    static public inline function log(_ctx:stdgo._internal.context.Context_context.Context, _category:String, _message:String):Void {
        final _category = (_category : stdgo.GoString);
        final _message = (_message : stdgo.GoString);
        _internal.runtime.trace_.Trace__log.log(_ctx, _category, _message);
    }
    /**
        * Logf is like [Log], but the value is formatted using the specified format spec.
    **/
    static public inline function logf(_ctx:stdgo._internal.context.Context_context.Context, _category:String, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _category = (_category : stdgo.GoString);
        final _format = (_format : stdgo.GoString);
        _internal.runtime.trace_.Trace__logf.logf(_ctx, _category, _format, ...[for (i in _args) i]);
    }
    /**
        * WithRegion starts a region associated with its calling goroutine, runs fn,
        * and then ends the region. If the context carries a task, the region is
        * associated with the task. Otherwise, the region is attached to the background
        * task.
        * 
        * The regionType is used to classify regions, so there should be only a
        * handful of unique region types.
    **/
    static public inline function withRegion(_ctx:stdgo._internal.context.Context_context.Context, _regionType:String, _fn:() -> Void):Void {
        final _regionType = (_regionType : stdgo.GoString);
        final _fn = _fn;
        _internal.runtime.trace_.Trace__withRegion.withRegion(_ctx, _regionType, _fn);
    }
    /**
        * StartRegion starts a region and returns it.
        * The returned Region's [Region.End] method must be called
        * from the same goroutine where the region was started.
        * Within each goroutine, regions must nest. That is, regions started
        * after this region must be ended before this region can be ended.
        * Recommended usage is
        * 
        * 	defer trace.StartRegion(ctx, "myTracedRegion").End()
    **/
    static public inline function startRegion(_ctx:stdgo._internal.context.Context_context.Context, _regionType:String):Region {
        final _regionType = (_regionType : stdgo.GoString);
        return _internal.runtime.trace_.Trace__startRegion.startRegion(_ctx, _regionType);
    }
    /**
        * IsEnabled reports whether tracing is enabled.
        * The information is advisory only. The tracing status
        * may have changed by the time this function returns.
    **/
    static public inline function isEnabled():Bool {
        return _internal.runtime.trace_.Trace__isEnabled.isEnabled();
    }
    /**
        * Start enables tracing for the current program.
        * While tracing, the trace will be buffered and written to w.
        * Start returns an error if tracing is already enabled.
    **/
    static public inline function start(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Error {
        return _internal.runtime.trace_.Trace__start.start(_w);
    }
    /**
        * Stop stops the current tracing, if any.
        * Stop only returns after all the writes for the trace have completed.
    **/
    static public inline function stop():Void {
        _internal.runtime.trace_.Trace__stop.stop();
    }
}
