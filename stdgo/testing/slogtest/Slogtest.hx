package stdgo.testing.slogtest;
@:structInit @:using(stdgo.testing.slogtest.Slogtest.T_testCase_static_extension) abstract T_testCase(stdgo._internal.testing.slogtest.Slogtest_T_testCase.T_testCase) from stdgo._internal.testing.slogtest.Slogtest_T_testCase.T_testCase to stdgo._internal.testing.slogtest.Slogtest_T_testCase.T_testCase {
    public var _explanation(get, set) : String;
    function get__explanation():String return this._explanation;
    function set__explanation(v:String):String {
        this._explanation = (v : stdgo.GoString);
        return v;
    }
    public var _f(get, set) : stdgo.Ref<stdgo._internal.log.slog.Slog_Logger.Logger> -> Void;
    function get__f():stdgo.Ref<stdgo._internal.log.slog.Slog_Logger.Logger> -> Void return _0 -> this._f(_0);
    function set__f(v:stdgo.Ref<stdgo._internal.log.slog.Slog_Logger.Logger> -> Void):stdgo.Ref<stdgo._internal.log.slog.Slog_Logger.Logger> -> Void {
        this._f = v;
        return v;
    }
    public var _mod(get, set) : stdgo.Ref<stdgo._internal.log.slog.Slog_Record.Record> -> Void;
    function get__mod():stdgo.Ref<stdgo._internal.log.slog.Slog_Record.Record> -> Void return _0 -> this._mod(_0);
    function set__mod(v:stdgo.Ref<stdgo._internal.log.slog.Slog_Record.Record> -> Void):stdgo.Ref<stdgo._internal.log.slog.Slog_Record.Record> -> Void {
        this._mod = v;
        return v;
    }
    public var _checks(get, set) : Array<T_check>;
    function get__checks():Array<T_check> return [for (i in this._checks) i];
    function set__checks(v:Array<T_check>):Array<T_check> {
        this._checks = ([for (i in v) i] : stdgo.Slice<stdgo._internal.testing.slogtest.Slogtest_T_check.T_check>);
        return v;
    }
    public function new(?_explanation:String, ?_f:stdgo.Ref<stdgo._internal.log.slog.Slog_Logger.Logger> -> Void, ?_mod:stdgo.Ref<stdgo._internal.log.slog.Slog_Record.Record> -> Void, ?_checks:Array<T_check>) this = new stdgo._internal.testing.slogtest.Slogtest_T_testCase.T_testCase((_explanation : stdgo.GoString), _f, _mod, ([for (i in _checks) i] : stdgo.Slice<stdgo._internal.testing.slogtest.Slogtest_T_check.T_check>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.slogtest.Slogtest.T_wrapper_static_extension) abstract T_wrapper(stdgo._internal.testing.slogtest.Slogtest_T_wrapper.T_wrapper) from stdgo._internal.testing.slogtest.Slogtest_T_wrapper.T_wrapper to stdgo._internal.testing.slogtest.Slogtest_T_wrapper.T_wrapper {
    public var handler(get, set) : stdgo._internal.log.slog.Slog_Handler.Handler;
    function get_handler():stdgo._internal.log.slog.Slog_Handler.Handler return this.handler;
    function set_handler(v:stdgo._internal.log.slog.Slog_Handler.Handler):stdgo._internal.log.slog.Slog_Handler.Handler {
        this.handler = v;
        return v;
    }
    public var _mod(get, set) : stdgo.Ref<stdgo._internal.log.slog.Slog_Record.Record> -> Void;
    function get__mod():stdgo.Ref<stdgo._internal.log.slog.Slog_Record.Record> -> Void return _0 -> this._mod(_0);
    function set__mod(v:stdgo.Ref<stdgo._internal.log.slog.Slog_Record.Record> -> Void):stdgo.Ref<stdgo._internal.log.slog.Slog_Record.Record> -> Void {
        this._mod = v;
        return v;
    }
    public function new(?handler:stdgo._internal.log.slog.Slog_Handler.Handler, ?_mod:stdgo.Ref<stdgo._internal.log.slog.Slog_Record.Record> -> Void) this = new stdgo._internal.testing.slogtest.Slogtest_T_wrapper.T_wrapper(handler, _mod);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.slogtest.Slogtest.T_replace_static_extension) abstract T_replace(stdgo._internal.testing.slogtest.Slogtest_T_replace.T_replace) from stdgo._internal.testing.slogtest.Slogtest_T_replace.T_replace to stdgo._internal.testing.slogtest.Slogtest_T_replace.T_replace {
    public var _v(get, set) : stdgo.AnyInterface;
    function get__v():stdgo.AnyInterface return this._v;
    function set__v(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._v = (v : stdgo.AnyInterface);
        return v;
    }
    public function new(?_v:stdgo.AnyInterface) this = new stdgo._internal.testing.slogtest.Slogtest_T_replace.T_replace((_v : stdgo.AnyInterface));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T_check = stdgo._internal.testing.slogtest.Slogtest_T_check.T_check;
typedef T_testCasePointer = stdgo._internal.testing.slogtest.Slogtest_T_testCasePointer.T_testCasePointer;
class T_testCase_static_extension {

}
typedef T_wrapperPointer = stdgo._internal.testing.slogtest.Slogtest_T_wrapperPointer.T_wrapperPointer;
class T_wrapper_static_extension {
    static public function handle(_h:T_wrapper, _ctx:stdgo._internal.context.Context_Context.Context, _r:stdgo._internal.log.slog.Slog_Record.Record):stdgo.Error {
        final _h = (_h : stdgo.Ref<stdgo._internal.testing.slogtest.Slogtest_T_wrapper.T_wrapper>);
        return stdgo._internal.testing.slogtest.Slogtest_T_wrapper_static_extension.T_wrapper_static_extension.handle(_h, _ctx, _r);
    }
    public static function withGroup(__self__:stdgo._internal.testing.slogtest.Slogtest_T_wrapper.T_wrapper, _0:String):stdgo._internal.log.slog.Slog_Handler.Handler {
        final _0 = (_0 : stdgo.GoString);
        return stdgo._internal.testing.slogtest.Slogtest_T_wrapper_static_extension.T_wrapper_static_extension.withGroup(__self__, _0);
    }
    public static function withAttrs(__self__:stdgo._internal.testing.slogtest.Slogtest_T_wrapper.T_wrapper, _0:Array<stdgo._internal.log.slog.Slog_Attr.Attr>):stdgo._internal.log.slog.Slog_Handler.Handler {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo._internal.log.slog.Slog_Attr.Attr>);
        return stdgo._internal.testing.slogtest.Slogtest_T_wrapper_static_extension.T_wrapper_static_extension.withAttrs(__self__, _0);
    }
    public static function enabled(__self__:stdgo._internal.testing.slogtest.Slogtest_T_wrapper.T_wrapper, _0:stdgo._internal.context.Context_Context.Context, _1:stdgo._internal.log.slog.Slog_Level.Level):Bool {
        return stdgo._internal.testing.slogtest.Slogtest_T_wrapper_static_extension.T_wrapper_static_extension.enabled(__self__, _0, _1);
    }
}
typedef T_replacePointer = stdgo._internal.testing.slogtest.Slogtest_T_replacePointer.T_replacePointer;
class T_replace_static_extension {
    static public function string(_r:T_replace):String {
        final _r = (_r : stdgo.Ref<stdgo._internal.testing.slogtest.Slogtest_T_replace.T_replace>);
        return stdgo._internal.testing.slogtest.Slogtest_T_replace_static_extension.T_replace_static_extension.string(_r);
    }
    static public function logValue(_r:T_replace):stdgo._internal.log.slog.Slog_Value.Value {
        final _r = (_r : stdgo.Ref<stdgo._internal.testing.slogtest.Slogtest_T_replace.T_replace>);
        return stdgo._internal.testing.slogtest.Slogtest_T_replace_static_extension.T_replace_static_extension.logValue(_r);
    }
}
typedef T_checkPointer = stdgo._internal.testing.slogtest.Slogtest_T_checkPointer.T_checkPointer;
class T_check_static_extension {

}
/**
    Package slogtest implements support for testing implementations of log/slog.Handler.
**/
class Slogtest {
    /**
        TestHandler tests a [slog.Handler].
        If TestHandler finds any misbehaviors, it returns an error for each,
        combined into a single error with errors.Join.
        
        TestHandler installs the given Handler in a [slog.Logger] and
        makes several calls to the Logger's output methods.
        
        The results function is invoked after all such calls.
        It should return a slice of map[string]any, one for each call to a Logger output method.
        The keys and values of the map should correspond to the keys and values of the Handler's
        output. Each group in the output should be represented as its own nested map[string]any.
        The standard keys slog.TimeKey, slog.LevelKey and slog.MessageKey should be used.
        
        If the Handler outputs JSON, then calling [encoding/json.Unmarshal] with a `map[string]any`
        will create the right data structure.
        
        If a Handler intentionally drops an attribute that is checked by a test,
        then the results function should check for its absence and add it to the map it returns.
    **/
    static public inline function testHandler(_h:stdgo._internal.log.slog.Slog_Handler.Handler, _results:() -> stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>):stdgo.Error {
        final _results = _results;
        return stdgo._internal.testing.slogtest.Slogtest_testHandler.testHandler(_h, _results);
    }
}
