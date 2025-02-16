package stdgo;
final timeKey : String = stdgo._internal.log.slog.Slog_timekey.timeKey;
final levelKey : String = stdgo._internal.log.slog.Slog_levelkey.levelKey;
final messageKey : String = stdgo._internal.log.slog.Slog_messagekey.messageKey;
final sourceKey : String = stdgo._internal.log.slog.Slog_sourcekey.sourceKey;
final levelDebug : Level = stdgo._internal.log.slog.Slog_leveldebug.levelDebug;
final levelInfo : Level = stdgo._internal.log.slog.Slog_levelinfo.levelInfo;
final levelWarn : Level = stdgo._internal.log.slog.Slog_levelwarn.levelWarn;
final levelError : Level = stdgo._internal.log.slog.Slog_levelerror.levelError;
final kindAny : Kind = stdgo._internal.log.slog.Slog_kindany.kindAny;
final kindBool = stdgo._internal.log.slog.Slog_kindbool.kindBool;
final kindDuration = stdgo._internal.log.slog.Slog_kindduration.kindDuration;
final kindFloat64 = stdgo._internal.log.slog.Slog_kindfloat64.kindFloat64;
final kindInt64 = stdgo._internal.log.slog.Slog_kindint64.kindInt64;
final kindString = stdgo._internal.log.slog.Slog_kindstring.kindString;
final kindTime = stdgo._internal.log.slog.Slog_kindtime.kindTime;
final kindUint64 = stdgo._internal.log.slog.Slog_kinduint64.kindUint64;
final kindGroup = stdgo._internal.log.slog.Slog_kindgroup.kindGroup;
final kindLogValuer = stdgo._internal.log.slog.Slog_kindlogvaluer.kindLogValuer;
class Handler_static_extension {
    static public function withGroup(t:stdgo._internal.log.slog.Slog_handler.Handler, _name:String):Handler {
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.log.slog.Slog_handler_static_extension.Handler_static_extension.withGroup(t, _name);
    }
    static public function withAttrs(t:stdgo._internal.log.slog.Slog_handler.Handler, _attrs:Array<Attr>):Handler {
        final _attrs = ([for (i in _attrs) i] : stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr>);
        return stdgo._internal.log.slog.Slog_handler_static_extension.Handler_static_extension.withAttrs(t, _attrs);
    }
    static public function handle(t:stdgo._internal.log.slog.Slog_handler.Handler, _0:stdgo._internal.context.Context_context.Context, _1:Record):stdgo.Error {
        return stdgo._internal.log.slog.Slog_handler_static_extension.Handler_static_extension.handle(t, _0, _1);
    }
    static public function enabled(t:stdgo._internal.log.slog.Slog_handler.Handler, _0:stdgo._internal.context.Context_context.Context, _1:Level):Bool {
        return stdgo._internal.log.slog.Slog_handler_static_extension.Handler_static_extension.enabled(t, _0, _1);
    }
}
@:forward abstract Handler(stdgo._internal.log.slog.Slog_handler.Handler) from stdgo._internal.log.slog.Slog_handler.Handler to stdgo._internal.log.slog.Slog_handler.Handler {
    @:from
    static function fromHaxeInterface(x:{ function enabled(_0:stdgo._internal.context.Context_context.Context, _1:Level):Bool; function handle(_0:stdgo._internal.context.Context_context.Context, _1:Record):stdgo.Error; function withAttrs(_attrs:Array<Attr>):Handler; function withGroup(_name:String):Handler; }):Handler {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Handler = { enabled : (_0, _1) -> x.enabled(_0, _1), handle : (_0, _1) -> x.handle(_0, _1), withAttrs : _0 -> x.withAttrs([for (i in _0) i]), withGroup : _0 -> x.withGroup(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Leveler_static_extension {
    static public function level(t:stdgo._internal.log.slog.Slog_leveler.Leveler):Level {
        return stdgo._internal.log.slog.Slog_leveler_static_extension.Leveler_static_extension.level(t);
    }
}
@:forward abstract Leveler(stdgo._internal.log.slog.Slog_leveler.Leveler) from stdgo._internal.log.slog.Slog_leveler.Leveler to stdgo._internal.log.slog.Slog_leveler.Leveler {
    @:from
    static function fromHaxeInterface(x:{ function level():Level; }):Leveler {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Leveler = { level : () -> x.level(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class LogValuer_static_extension {
    static public function logValue(t:stdgo._internal.log.slog.Slog_logvaluer.LogValuer):Value {
        return stdgo._internal.log.slog.Slog_logvaluer_static_extension.LogValuer_static_extension.logValue(t);
    }
}
@:forward abstract LogValuer(stdgo._internal.log.slog.Slog_logvaluer.LogValuer) from stdgo._internal.log.slog.Slog_logvaluer.LogValuer to stdgo._internal.log.slog.Slog_logvaluer.LogValuer {
    @:from
    static function fromHaxeInterface(x:{ function logValue():Value; }):LogValuer {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:LogValuer = { logValue : () -> x.logValue(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.log.slog.Slog.Attr_static_extension) abstract Attr(stdgo._internal.log.slog.Slog_attr.Attr) from stdgo._internal.log.slog.Slog_attr.Attr to stdgo._internal.log.slog.Slog_attr.Attr {
    public var key(get, set) : String;
    function get_key():String return this.key;
    function set_key(v:String):String {
        this.key = (v : stdgo.GoString);
        return v;
    }
    public var value(get, set) : Value;
    function get_value():Value return this.value;
    function set_value(v:Value):Value {
        this.value = v;
        return v;
    }
    public function new(?key:String, ?value:Value) this = new stdgo._internal.log.slog.Slog_attr.Attr((key : stdgo.GoString), value);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.log.slog.Slog.T_defaultHandler_static_extension) @:dox(hide) abstract T_defaultHandler(stdgo._internal.log.slog.Slog_t_defaulthandler.T_defaultHandler) from stdgo._internal.log.slog.Slog_t_defaulthandler.T_defaultHandler to stdgo._internal.log.slog.Slog_t_defaulthandler.T_defaultHandler {
    public var _ch(get, set) : T_commonHandler;
    function get__ch():T_commonHandler return this._ch;
    function set__ch(v:T_commonHandler):T_commonHandler {
        this._ch = (v : stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler>);
        return v;
    }
    public var _output(get, set) : (stdgo.GoUIntptr, Array<std.UInt>) -> stdgo.Error;
    function get__output():(stdgo.GoUIntptr, Array<std.UInt>) -> stdgo.Error return (_0, _1) -> this._output(_0, [for (i in _1) i]);
    function set__output(v:(stdgo.GoUIntptr, Array<std.UInt>) -> stdgo.Error):(stdgo.GoUIntptr, Array<std.UInt>) -> stdgo.Error {
        this._output = v;
        return v;
    }
    public function new(?_ch:T_commonHandler, ?_output:(stdgo.GoUIntptr, Array<std.UInt>) -> stdgo.Error) this = new stdgo._internal.log.slog.Slog_t_defaulthandler.T_defaultHandler((_ch : stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler>), _output);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.log.slog.Slog.HandlerOptions_static_extension) abstract HandlerOptions(stdgo._internal.log.slog.Slog_handleroptions.HandlerOptions) from stdgo._internal.log.slog.Slog_handleroptions.HandlerOptions to stdgo._internal.log.slog.Slog_handleroptions.HandlerOptions {
    public var addSource(get, set) : Bool;
    function get_addSource():Bool return this.addSource;
    function set_addSource(v:Bool):Bool {
        this.addSource = v;
        return v;
    }
    public var level(get, set) : Leveler;
    function get_level():Leveler return this.level;
    function set_level(v:Leveler):Leveler {
        this.level = v;
        return v;
    }
    public var replaceAttr(get, set) : (Array<String>, Attr) -> Attr;
    function get_replaceAttr():(Array<String>, Attr) -> Attr return (_0, _1) -> this.replaceAttr([for (i in _0) i], _1);
    function set_replaceAttr(v:(Array<String>, Attr) -> Attr):(Array<String>, Attr) -> Attr {
        this.replaceAttr = v;
        return v;
    }
    public function new(?addSource:Bool, ?level:Leveler, ?replaceAttr:(Array<String>, Attr) -> Attr) this = new stdgo._internal.log.slog.Slog_handleroptions.HandlerOptions(addSource, level, replaceAttr);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.log.slog.Slog.T_commonHandler_static_extension) @:dox(hide) abstract T_commonHandler(stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler) from stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler to stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler {
    public var _json(get, set) : Bool;
    function get__json():Bool return this._json;
    function set__json(v:Bool):Bool {
        this._json = v;
        return v;
    }
    public var _opts(get, set) : HandlerOptions;
    function get__opts():HandlerOptions return this._opts;
    function set__opts(v:HandlerOptions):HandlerOptions {
        this._opts = v;
        return v;
    }
    public var _preformattedAttrs(get, set) : Array<std.UInt>;
    function get__preformattedAttrs():Array<std.UInt> return [for (i in this._preformattedAttrs) i];
    function set__preformattedAttrs(v:Array<std.UInt>):Array<std.UInt> {
        this._preformattedAttrs = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _groupPrefix(get, set) : String;
    function get__groupPrefix():String return this._groupPrefix;
    function set__groupPrefix(v:String):String {
        this._groupPrefix = (v : stdgo.GoString);
        return v;
    }
    public var _groups(get, set) : Array<String>;
    function get__groups():Array<String> return [for (i in this._groups) i];
    function set__groups(v:Array<String>):Array<String> {
        this._groups = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _nOpenGroups(get, set) : StdTypes.Int;
    function get__nOpenGroups():StdTypes.Int return this._nOpenGroups;
    function set__nOpenGroups(v:StdTypes.Int):StdTypes.Int {
        this._nOpenGroups = (v : stdgo.GoInt);
        return v;
    }
    public var _mu(get, set) : stdgo._internal.sync.Sync_mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_mutex.Mutex):stdgo._internal.sync.Sync_mutex.Mutex {
        this._mu = (v : stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>);
        return v;
    }
    public var _w(get, set) : stdgo._internal.io.Io_writer.Writer;
    function get__w():stdgo._internal.io.Io_writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writer.Writer {
        this._w = v;
        return v;
    }
    public function new(?_json:Bool, ?_opts:HandlerOptions, ?_preformattedAttrs:Array<std.UInt>, ?_groupPrefix:String, ?_groups:Array<String>, ?_nOpenGroups:StdTypes.Int, ?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_w:stdgo._internal.io.Io_writer.Writer) this = new stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler(_json, _opts, ([for (i in _preformattedAttrs) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_groupPrefix : stdgo.GoString), ([for (i in _groups) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), (_nOpenGroups : stdgo.GoInt), (_mu : stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>), _w);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.log.slog.Slog.T_handleState_static_extension) @:dox(hide) abstract T_handleState(stdgo._internal.log.slog.Slog_t_handlestate.T_handleState) from stdgo._internal.log.slog.Slog_t_handlestate.T_handleState to stdgo._internal.log.slog.Slog_t_handlestate.T_handleState {
    public var _h(get, set) : T_commonHandler;
    function get__h():T_commonHandler return this._h;
    function set__h(v:T_commonHandler):T_commonHandler {
        this._h = (v : stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler>);
        return v;
    }
    public var _buf(get, set) : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer;
    function get__buf():stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer return this._buf;
    function set__buf(v:stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer):stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer {
        this._buf = (v : stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer>);
        return v;
    }
    public var _freeBuf(get, set) : Bool;
    function get__freeBuf():Bool return this._freeBuf;
    function set__freeBuf(v:Bool):Bool {
        this._freeBuf = v;
        return v;
    }
    public var _sep(get, set) : String;
    function get__sep():String return this._sep;
    function set__sep(v:String):String {
        this._sep = (v : stdgo.GoString);
        return v;
    }
    public var _prefix(get, set) : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer;
    function get__prefix():stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer return this._prefix;
    function set__prefix(v:stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer):stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer {
        this._prefix = (v : stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer>);
        return v;
    }
    public var _groups(get, set) : Array<String>;
    function get__groups():Array<String> return this._groups;
    function set__groups(v:Array<String>):Array<String> {
        this._groups = (v : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);
        return v;
    }
    public function new(?_h:T_commonHandler, ?_buf:stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer, ?_freeBuf:Bool, ?_sep:String, ?_prefix:stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer, ?_groups:Array<String>) this = new stdgo._internal.log.slog.Slog_t_handlestate.T_handleState((_h : stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler>), (_buf : stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer>), _freeBuf, (_sep : stdgo.GoString), (_prefix : stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer>), (_groups : stdgo.Ref<stdgo.Slice<stdgo.GoString>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.log.slog.Slog.JSONHandler_static_extension) abstract JSONHandler(stdgo._internal.log.slog.Slog_jsonhandler.JSONHandler) from stdgo._internal.log.slog.Slog_jsonhandler.JSONHandler to stdgo._internal.log.slog.Slog_jsonhandler.JSONHandler {
    public var _commonHandler(get, set) : T_commonHandler;
    function get__commonHandler():T_commonHandler return this._commonHandler;
    function set__commonHandler(v:T_commonHandler):T_commonHandler {
        this._commonHandler = (v : stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler>);
        return v;
    }
    public function new(?_commonHandler:T_commonHandler) this = new stdgo._internal.log.slog.Slog_jsonhandler.JSONHandler((_commonHandler : stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.log.slog.Slog.LevelVar_static_extension) abstract LevelVar(stdgo._internal.log.slog.Slog_levelvar.LevelVar) from stdgo._internal.log.slog.Slog_levelvar.LevelVar to stdgo._internal.log.slog.Slog_levelvar.LevelVar {
    public var _val(get, set) : stdgo._internal.sync.atomic_.Atomic__int64_.Int64_;
    function get__val():stdgo._internal.sync.atomic_.Atomic__int64_.Int64_ return this._val;
    function set__val(v:stdgo._internal.sync.atomic_.Atomic__int64_.Int64_):stdgo._internal.sync.atomic_.Atomic__int64_.Int64_ {
        this._val = v;
        return v;
    }
    public function new(?_val:stdgo._internal.sync.atomic_.Atomic__int64_.Int64_) this = new stdgo._internal.log.slog.Slog_levelvar.LevelVar(_val);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.log.slog.Slog.T_handlerWriter_static_extension) @:dox(hide) abstract T_handlerWriter(stdgo._internal.log.slog.Slog_t_handlerwriter.T_handlerWriter) from stdgo._internal.log.slog.Slog_t_handlerwriter.T_handlerWriter to stdgo._internal.log.slog.Slog_t_handlerwriter.T_handlerWriter {
    public var _h(get, set) : Handler;
    function get__h():Handler return this._h;
    function set__h(v:Handler):Handler {
        this._h = v;
        return v;
    }
    public var _level(get, set) : Level;
    function get__level():Level return this._level;
    function set__level(v:Level):Level {
        this._level = v;
        return v;
    }
    public var _capturePC(get, set) : Bool;
    function get__capturePC():Bool return this._capturePC;
    function set__capturePC(v:Bool):Bool {
        this._capturePC = v;
        return v;
    }
    public function new(?_h:Handler, ?_level:Level, ?_capturePC:Bool) this = new stdgo._internal.log.slog.Slog_t_handlerwriter.T_handlerWriter(_h, _level, _capturePC);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.log.slog.Slog.Logger_static_extension) abstract Logger(stdgo._internal.log.slog.Slog_logger.Logger) from stdgo._internal.log.slog.Slog_logger.Logger to stdgo._internal.log.slog.Slog_logger.Logger {
    public var _handler(get, set) : Handler;
    function get__handler():Handler return this._handler;
    function set__handler(v:Handler):Handler {
        this._handler = v;
        return v;
    }
    public function new(?_handler:Handler) this = new stdgo._internal.log.slog.Slog_logger.Logger(_handler);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.log.slog.Slog.Record_static_extension) abstract Record(stdgo._internal.log.slog.Slog_record.Record) from stdgo._internal.log.slog.Slog_record.Record to stdgo._internal.log.slog.Slog_record.Record {
    public var time(get, set) : stdgo._internal.time.Time_time.Time;
    function get_time():stdgo._internal.time.Time_time.Time return this.time;
    function set_time(v:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_time.Time {
        this.time = v;
        return v;
    }
    public var message(get, set) : String;
    function get_message():String return this.message;
    function set_message(v:String):String {
        this.message = (v : stdgo.GoString);
        return v;
    }
    public var level(get, set) : Level;
    function get_level():Level return this.level;
    function set_level(v:Level):Level {
        this.level = v;
        return v;
    }
    public var pC(get, set) : stdgo.GoUIntptr;
    function get_pC():stdgo.GoUIntptr return this.pC;
    function set_pC(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.pC = (v : stdgo.GoUIntptr);
        return v;
    }
    public var _front(get, set) : haxe.ds.Vector<Attr>;
    function get__front():haxe.ds.Vector<Attr> return haxe.ds.Vector.fromArrayCopy([for (i in this._front) i]);
    function set__front(v:haxe.ds.Vector<Attr>):haxe.ds.Vector<Attr> {
        this._front = ([for (i in v) i] : stdgo.GoArray<stdgo._internal.log.slog.Slog_attr.Attr>);
        return v;
    }
    public var _nFront(get, set) : StdTypes.Int;
    function get__nFront():StdTypes.Int return this._nFront;
    function set__nFront(v:StdTypes.Int):StdTypes.Int {
        this._nFront = (v : stdgo.GoInt);
        return v;
    }
    public var _back(get, set) : Array<Attr>;
    function get__back():Array<Attr> return [for (i in this._back) i];
    function set__back(v:Array<Attr>):Array<Attr> {
        this._back = ([for (i in v) i] : stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr>);
        return v;
    }
    public function new(?time:stdgo._internal.time.Time_time.Time, ?message:String, ?level:Level, ?pC:stdgo.GoUIntptr, ?_front:haxe.ds.Vector<Attr>, ?_nFront:StdTypes.Int, ?_back:Array<Attr>) this = new stdgo._internal.log.slog.Slog_record.Record(time, (message : stdgo.GoString), level, (pC : stdgo.GoUIntptr), ([for (i in _front) i] : stdgo.GoArray<stdgo._internal.log.slog.Slog_attr.Attr>), (_nFront : stdgo.GoInt), ([for (i in _back) i] : stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.log.slog.Slog.Source_static_extension) abstract Source(stdgo._internal.log.slog.Slog_source.Source) from stdgo._internal.log.slog.Slog_source.Source to stdgo._internal.log.slog.Slog_source.Source {
    public var function_(get, set) : String;
    function get_function_():String return this.function_;
    function set_function_(v:String):String {
        this.function_ = (v : stdgo.GoString);
        return v;
    }
    public var file(get, set) : String;
    function get_file():String return this.file;
    function set_file(v:String):String {
        this.file = (v : stdgo.GoString);
        return v;
    }
    public var line(get, set) : StdTypes.Int;
    function get_line():StdTypes.Int return this.line;
    function set_line(v:StdTypes.Int):StdTypes.Int {
        this.line = (v : stdgo.GoInt);
        return v;
    }
    public function new(?function_:String, ?file:String, ?line:StdTypes.Int) this = new stdgo._internal.log.slog.Slog_source.Source((function_ : stdgo.GoString), (file : stdgo.GoString), (line : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.log.slog.Slog.TextHandler_static_extension) abstract TextHandler(stdgo._internal.log.slog.Slog_texthandler.TextHandler) from stdgo._internal.log.slog.Slog_texthandler.TextHandler to stdgo._internal.log.slog.Slog_texthandler.TextHandler {
    public var _commonHandler(get, set) : T_commonHandler;
    function get__commonHandler():T_commonHandler return this._commonHandler;
    function set__commonHandler(v:T_commonHandler):T_commonHandler {
        this._commonHandler = (v : stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler>);
        return v;
    }
    public function new(?_commonHandler:T_commonHandler) this = new stdgo._internal.log.slog.Slog_texthandler.TextHandler((_commonHandler : stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.log.slog.Slog.Value_static_extension) abstract Value(stdgo._internal.log.slog.Slog_value.Value) from stdgo._internal.log.slog.Slog_value.Value to stdgo._internal.log.slog.Slog_value.Value {
    public var __9(get, set) : haxe.ds.Vector<() -> Void>;
    function get___9():haxe.ds.Vector<() -> Void> return haxe.ds.Vector.fromArrayCopy([for (i in this.__9) () -> i()]);
    function set___9(v:haxe.ds.Vector<() -> Void>):haxe.ds.Vector<() -> Void> {
        this.__9 = ([for (i in v) i] : stdgo.GoArray<() -> Void>);
        return v;
    }
    public var _num(get, set) : haxe.UInt64;
    function get__num():haxe.UInt64 return this._num;
    function set__num(v:haxe.UInt64):haxe.UInt64 {
        this._num = (v : stdgo.GoUInt64);
        return v;
    }
    public var _any(get, set) : stdgo.AnyInterface;
    function get__any():stdgo.AnyInterface return this._any;
    function set__any(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._any = (v : stdgo.AnyInterface);
        return v;
    }
    public function new(?__9:haxe.ds.Vector<() -> Void>, ?_num:haxe.UInt64, ?_any:stdgo.AnyInterface) this = new stdgo._internal.log.slog.Slog_value.Value(([for (i in __9) i] : stdgo.GoArray<() -> Void>), (_num : stdgo.GoUInt64), (_any : stdgo.AnyInterface));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef Level = stdgo._internal.log.slog.Slog_level.Level;
@:dox(hide) typedef T_stringptr = stdgo._internal.log.slog.Slog_t_stringptr.T_stringptr;
@:dox(hide) typedef T_groupptr = stdgo._internal.log.slog.Slog_t_groupptr.T_groupptr;
typedef Kind = stdgo._internal.log.slog.Slog_kind.Kind;
@:dox(hide) typedef T_kind = stdgo._internal.log.slog.Slog_t_kind.T_kind;
@:dox(hide) typedef T_timeLocation = stdgo._internal.log.slog.Slog_t_timelocation.T_timeLocation;
typedef AttrPointer = stdgo._internal.log.slog.Slog_attrpointer.AttrPointer;
class Attr_static_extension {
    static public function _isEmpty(_a:Attr):Bool {
        return stdgo._internal.log.slog.Slog_attr_static_extension.Attr_static_extension._isEmpty(_a);
    }
    static public function string(_a:Attr):String {
        return stdgo._internal.log.slog.Slog_attr_static_extension.Attr_static_extension.string(_a);
    }
    static public function equal(_a:Attr, _b:Attr):Bool {
        return stdgo._internal.log.slog.Slog_attr_static_extension.Attr_static_extension.equal(_a, _b);
    }
}
@:dox(hide) typedef T_defaultHandlerPointer = stdgo._internal.log.slog.Slog_t_defaulthandlerpointer.T_defaultHandlerPointer;
@:dox(hide) class T_defaultHandler_static_extension {
    static public function withGroup(_h:T_defaultHandler, _name:String):Handler {
        final _h = (_h : stdgo.Ref<stdgo._internal.log.slog.Slog_t_defaulthandler.T_defaultHandler>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.log.slog.Slog_t_defaulthandler_static_extension.T_defaultHandler_static_extension.withGroup(_h, _name);
    }
    static public function withAttrs(_h:T_defaultHandler, _as:Array<Attr>):Handler {
        final _h = (_h : stdgo.Ref<stdgo._internal.log.slog.Slog_t_defaulthandler.T_defaultHandler>);
        final _as = ([for (i in _as) i] : stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr>);
        return stdgo._internal.log.slog.Slog_t_defaulthandler_static_extension.T_defaultHandler_static_extension.withAttrs(_h, _as);
    }
    static public function handle(_h:T_defaultHandler, _ctx:stdgo._internal.context.Context_context.Context, _r:Record):stdgo.Error {
        final _h = (_h : stdgo.Ref<stdgo._internal.log.slog.Slog_t_defaulthandler.T_defaultHandler>);
        return stdgo._internal.log.slog.Slog_t_defaulthandler_static_extension.T_defaultHandler_static_extension.handle(_h, _ctx, _r);
    }
    static public function enabled(_:T_defaultHandler, __682:stdgo._internal.context.Context_context.Context, _l:Level):Bool {
        final _ = (_ : stdgo.Ref<stdgo._internal.log.slog.Slog_t_defaulthandler.T_defaultHandler>);
        return stdgo._internal.log.slog.Slog_t_defaulthandler_static_extension.T_defaultHandler_static_extension.enabled(_, __682, _l);
    }
}
typedef HandlerOptionsPointer = stdgo._internal.log.slog.Slog_handleroptionspointer.HandlerOptionsPointer;
class HandlerOptions_static_extension {

}
@:dox(hide) typedef T_commonHandlerPointer = stdgo._internal.log.slog.Slog_t_commonhandlerpointer.T_commonHandlerPointer;
@:dox(hide) class T_commonHandler_static_extension {
    static public function _newHandleState(_h:T_commonHandler, _buf:stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer, _freeBuf:Bool, _sep:String):T_handleState {
        final _h = (_h : stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler>);
        final _buf = (_buf : stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer>);
        final _sep = (_sep : stdgo.GoString);
        return stdgo._internal.log.slog.Slog_t_commonhandler_static_extension.T_commonHandler_static_extension._newHandleState(_h, _buf, _freeBuf, _sep);
    }
    static public function _attrSep(_h:T_commonHandler):String {
        final _h = (_h : stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler>);
        return stdgo._internal.log.slog.Slog_t_commonhandler_static_extension.T_commonHandler_static_extension._attrSep(_h);
    }
    static public function _handle(_h:T_commonHandler, _r:Record):stdgo.Error {
        final _h = (_h : stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler>);
        return stdgo._internal.log.slog.Slog_t_commonhandler_static_extension.T_commonHandler_static_extension._handle(_h, _r);
    }
    static public function _withGroup(_h:T_commonHandler, _name:String):T_commonHandler {
        final _h = (_h : stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.log.slog.Slog_t_commonhandler_static_extension.T_commonHandler_static_extension._withGroup(_h, _name);
    }
    static public function _withAttrs(_h:T_commonHandler, _as:Array<Attr>):T_commonHandler {
        final _h = (_h : stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler>);
        final _as = ([for (i in _as) i] : stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr>);
        return stdgo._internal.log.slog.Slog_t_commonhandler_static_extension.T_commonHandler_static_extension._withAttrs(_h, _as);
    }
    static public function _enabled(_h:T_commonHandler, _l:Level):Bool {
        final _h = (_h : stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler>);
        return stdgo._internal.log.slog.Slog_t_commonhandler_static_extension.T_commonHandler_static_extension._enabled(_h, _l);
    }
    static public function _clone(_h:T_commonHandler):T_commonHandler {
        final _h = (_h : stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler>);
        return stdgo._internal.log.slog.Slog_t_commonhandler_static_extension.T_commonHandler_static_extension._clone(_h);
    }
}
@:dox(hide) typedef T_handleStatePointer = stdgo._internal.log.slog.Slog_t_handlestatepointer.T_handleStatePointer;
@:dox(hide) class T_handleState_static_extension {
    static public function _appendTime(_s:T_handleState, _t:stdgo._internal.time.Time_time.Time):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.log.slog.Slog_t_handlestate.T_handleState>);
        stdgo._internal.log.slog.Slog_t_handlestate_static_extension.T_handleState_static_extension._appendTime(_s, _t);
    }
    static public function _appendValue(_s:T_handleState, _v:Value):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.log.slog.Slog_t_handlestate.T_handleState>);
        stdgo._internal.log.slog.Slog_t_handlestate_static_extension.T_handleState_static_extension._appendValue(_s, _v);
    }
    static public function _appendString(_s:T_handleState, _str:String):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.log.slog.Slog_t_handlestate.T_handleState>);
        final _str = (_str : stdgo.GoString);
        stdgo._internal.log.slog.Slog_t_handlestate_static_extension.T_handleState_static_extension._appendString(_s, _str);
    }
    static public function _appendKey(_s:T_handleState, _key:String):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.log.slog.Slog_t_handlestate.T_handleState>);
        final _key = (_key : stdgo.GoString);
        stdgo._internal.log.slog.Slog_t_handlestate_static_extension.T_handleState_static_extension._appendKey(_s, _key);
    }
    static public function _appendError(_s:T_handleState, _err:stdgo.Error):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.log.slog.Slog_t_handlestate.T_handleState>);
        final _err = (_err : stdgo.Error);
        stdgo._internal.log.slog.Slog_t_handlestate_static_extension.T_handleState_static_extension._appendError(_s, _err);
    }
    static public function _appendAttr(_s:T_handleState, _a:Attr):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.log.slog.Slog_t_handlestate.T_handleState>);
        stdgo._internal.log.slog.Slog_t_handlestate_static_extension.T_handleState_static_extension._appendAttr(_s, _a);
    }
    static public function _closeGroup(_s:T_handleState, _name:String):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.log.slog.Slog_t_handlestate.T_handleState>);
        final _name = (_name : stdgo.GoString);
        stdgo._internal.log.slog.Slog_t_handlestate_static_extension.T_handleState_static_extension._closeGroup(_s, _name);
    }
    static public function _openGroup(_s:T_handleState, _name:String):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.log.slog.Slog_t_handlestate.T_handleState>);
        final _name = (_name : stdgo.GoString);
        stdgo._internal.log.slog.Slog_t_handlestate_static_extension.T_handleState_static_extension._openGroup(_s, _name);
    }
    static public function _openGroups(_s:T_handleState):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.log.slog.Slog_t_handlestate.T_handleState>);
        stdgo._internal.log.slog.Slog_t_handlestate_static_extension.T_handleState_static_extension._openGroups(_s);
    }
    static public function _free(_s:T_handleState):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.log.slog.Slog_t_handlestate.T_handleState>);
        stdgo._internal.log.slog.Slog_t_handlestate_static_extension.T_handleState_static_extension._free(_s);
    }
    static public function _appendNonBuiltIns(_s:T_handleState, _r:Record):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.log.slog.Slog_t_handlestate.T_handleState>);
        stdgo._internal.log.slog.Slog_t_handlestate_static_extension.T_handleState_static_extension._appendNonBuiltIns(_s, _r);
    }
}
typedef JSONHandlerPointer = stdgo._internal.log.slog.Slog_jsonhandlerpointer.JSONHandlerPointer;
class JSONHandler_static_extension {
    static public function handle(_h:JSONHandler, __766:stdgo._internal.context.Context_context.Context, _r:Record):stdgo.Error {
        final _h = (_h : stdgo.Ref<stdgo._internal.log.slog.Slog_jsonhandler.JSONHandler>);
        return stdgo._internal.log.slog.Slog_jsonhandler_static_extension.JSONHandler_static_extension.handle(_h, __766, _r);
    }
    static public function withGroup(_h:JSONHandler, _name:String):Handler {
        final _h = (_h : stdgo.Ref<stdgo._internal.log.slog.Slog_jsonhandler.JSONHandler>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.log.slog.Slog_jsonhandler_static_extension.JSONHandler_static_extension.withGroup(_h, _name);
    }
    static public function withAttrs(_h:JSONHandler, _attrs:Array<Attr>):Handler {
        final _h = (_h : stdgo.Ref<stdgo._internal.log.slog.Slog_jsonhandler.JSONHandler>);
        final _attrs = ([for (i in _attrs) i] : stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr>);
        return stdgo._internal.log.slog.Slog_jsonhandler_static_extension.JSONHandler_static_extension.withAttrs(_h, _attrs);
    }
    static public function enabled(_h:JSONHandler, __766:stdgo._internal.context.Context_context.Context, _level:Level):Bool {
        final _h = (_h : stdgo.Ref<stdgo._internal.log.slog.Slog_jsonhandler.JSONHandler>);
        return stdgo._internal.log.slog.Slog_jsonhandler_static_extension.JSONHandler_static_extension.enabled(_h, __766, _level);
    }
    public static function _withGroup(__self__:stdgo._internal.log.slog.Slog_jsonhandler.JSONHandler, _0:String):T_commonHandler {
        final _0 = (_0 : stdgo.GoString);
        return stdgo._internal.log.slog.Slog_jsonhandler_static_extension.JSONHandler_static_extension._withGroup(__self__, _0);
    }
    public static function _withAttrs(__self__:stdgo._internal.log.slog.Slog_jsonhandler.JSONHandler, _0:Array<Attr>):T_commonHandler {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr>);
        return stdgo._internal.log.slog.Slog_jsonhandler_static_extension.JSONHandler_static_extension._withAttrs(__self__, _0);
    }
    public static function _newHandleState(__self__:stdgo._internal.log.slog.Slog_jsonhandler.JSONHandler, _0:stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer, _1:Bool, _2:String):T_handleState {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer>);
        final _2 = (_2 : stdgo.GoString);
        return stdgo._internal.log.slog.Slog_jsonhandler_static_extension.JSONHandler_static_extension._newHandleState(__self__, _0, _1, _2);
    }
    public static function _handle(__self__:stdgo._internal.log.slog.Slog_jsonhandler.JSONHandler, _0:Record):stdgo.Error {
        return stdgo._internal.log.slog.Slog_jsonhandler_static_extension.JSONHandler_static_extension._handle(__self__, _0);
    }
    public static function _enabled(__self__:stdgo._internal.log.slog.Slog_jsonhandler.JSONHandler, _0:Level):Bool {
        return stdgo._internal.log.slog.Slog_jsonhandler_static_extension.JSONHandler_static_extension._enabled(__self__, _0);
    }
    public static function _clone(__self__:stdgo._internal.log.slog.Slog_jsonhandler.JSONHandler):T_commonHandler {
        return stdgo._internal.log.slog.Slog_jsonhandler_static_extension.JSONHandler_static_extension._clone(__self__);
    }
    public static function _attrSep(__self__:stdgo._internal.log.slog.Slog_jsonhandler.JSONHandler):String {
        return stdgo._internal.log.slog.Slog_jsonhandler_static_extension.JSONHandler_static_extension._attrSep(__self__);
    }
}
typedef LevelVarPointer = stdgo._internal.log.slog.Slog_levelvarpointer.LevelVarPointer;
class LevelVar_static_extension {
    static public function unmarshalText(_v:LevelVar, _data:Array<std.UInt>):stdgo.Error {
        final _v = (_v : stdgo.Ref<stdgo._internal.log.slog.Slog_levelvar.LevelVar>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.log.slog.Slog_levelvar_static_extension.LevelVar_static_extension.unmarshalText(_v, _data);
    }
    static public function marshalText(_v:LevelVar):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _v = (_v : stdgo.Ref<stdgo._internal.log.slog.Slog_levelvar.LevelVar>);
        return {
            final obj = stdgo._internal.log.slog.Slog_levelvar_static_extension.LevelVar_static_extension.marshalText(_v);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function string(_v:LevelVar):String {
        final _v = (_v : stdgo.Ref<stdgo._internal.log.slog.Slog_levelvar.LevelVar>);
        return stdgo._internal.log.slog.Slog_levelvar_static_extension.LevelVar_static_extension.string(_v);
    }
    static public function set(_v:LevelVar, _l:Level):Void {
        final _v = (_v : stdgo.Ref<stdgo._internal.log.slog.Slog_levelvar.LevelVar>);
        stdgo._internal.log.slog.Slog_levelvar_static_extension.LevelVar_static_extension.set(_v, _l);
    }
    static public function level(_v:LevelVar):Level {
        final _v = (_v : stdgo.Ref<stdgo._internal.log.slog.Slog_levelvar.LevelVar>);
        return stdgo._internal.log.slog.Slog_levelvar_static_extension.LevelVar_static_extension.level(_v);
    }
}
@:dox(hide) typedef T_handlerWriterPointer = stdgo._internal.log.slog.Slog_t_handlerwriterpointer.T_handlerWriterPointer;
@:dox(hide) class T_handlerWriter_static_extension {
    static public function write(_w:T_handlerWriter, _buf:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.log.slog.Slog_t_handlerwriter.T_handlerWriter>);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.log.slog.Slog_t_handlerwriter_static_extension.T_handlerWriter_static_extension.write(_w, _buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef LoggerPointer = stdgo._internal.log.slog.Slog_loggerpointer.LoggerPointer;
class Logger_static_extension {
    static public function _logAttrs(_l:Logger, _ctx:stdgo._internal.context.Context_context.Context, _level:Level, _msg:String, _attrs:haxe.Rest<Attr>):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger>);
        final _msg = (_msg : stdgo.GoString);
        stdgo._internal.log.slog.Slog_logger_static_extension.Logger_static_extension._logAttrs(_l, _ctx, _level, _msg, ...[for (i in _attrs) i]);
    }
    static public function _log(_l:Logger, _ctx:stdgo._internal.context.Context_context.Context, _level:Level, _msg:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger>);
        final _msg = (_msg : stdgo.GoString);
        stdgo._internal.log.slog.Slog_logger_static_extension.Logger_static_extension._log(_l, _ctx, _level, _msg, ...[for (i in _args) i]);
    }
    static public function errorContext(_l:Logger, _ctx:stdgo._internal.context.Context_context.Context, _msg:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger>);
        final _msg = (_msg : stdgo.GoString);
        stdgo._internal.log.slog.Slog_logger_static_extension.Logger_static_extension.errorContext(_l, _ctx, _msg, ...[for (i in _args) i]);
    }
    static public function error(_l:Logger, _msg:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger>);
        final _msg = (_msg : stdgo.GoString);
        stdgo._internal.log.slog.Slog_logger_static_extension.Logger_static_extension.error(_l, _msg, ...[for (i in _args) i]);
    }
    static public function warnContext(_l:Logger, _ctx:stdgo._internal.context.Context_context.Context, _msg:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger>);
        final _msg = (_msg : stdgo.GoString);
        stdgo._internal.log.slog.Slog_logger_static_extension.Logger_static_extension.warnContext(_l, _ctx, _msg, ...[for (i in _args) i]);
    }
    static public function warn(_l:Logger, _msg:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger>);
        final _msg = (_msg : stdgo.GoString);
        stdgo._internal.log.slog.Slog_logger_static_extension.Logger_static_extension.warn(_l, _msg, ...[for (i in _args) i]);
    }
    static public function infoContext(_l:Logger, _ctx:stdgo._internal.context.Context_context.Context, _msg:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger>);
        final _msg = (_msg : stdgo.GoString);
        stdgo._internal.log.slog.Slog_logger_static_extension.Logger_static_extension.infoContext(_l, _ctx, _msg, ...[for (i in _args) i]);
    }
    static public function info(_l:Logger, _msg:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger>);
        final _msg = (_msg : stdgo.GoString);
        stdgo._internal.log.slog.Slog_logger_static_extension.Logger_static_extension.info(_l, _msg, ...[for (i in _args) i]);
    }
    static public function debugContext(_l:Logger, _ctx:stdgo._internal.context.Context_context.Context, _msg:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger>);
        final _msg = (_msg : stdgo.GoString);
        stdgo._internal.log.slog.Slog_logger_static_extension.Logger_static_extension.debugContext(_l, _ctx, _msg, ...[for (i in _args) i]);
    }
    static public function debug(_l:Logger, _msg:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger>);
        final _msg = (_msg : stdgo.GoString);
        stdgo._internal.log.slog.Slog_logger_static_extension.Logger_static_extension.debug(_l, _msg, ...[for (i in _args) i]);
    }
    static public function logAttrs(_l:Logger, _ctx:stdgo._internal.context.Context_context.Context, _level:Level, _msg:String, _attrs:haxe.Rest<Attr>):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger>);
        final _msg = (_msg : stdgo.GoString);
        stdgo._internal.log.slog.Slog_logger_static_extension.Logger_static_extension.logAttrs(_l, _ctx, _level, _msg, ...[for (i in _attrs) i]);
    }
    static public function log(_l:Logger, _ctx:stdgo._internal.context.Context_context.Context, _level:Level, _msg:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger>);
        final _msg = (_msg : stdgo.GoString);
        stdgo._internal.log.slog.Slog_logger_static_extension.Logger_static_extension.log(_l, _ctx, _level, _msg, ...[for (i in _args) i]);
    }
    static public function enabled(_l:Logger, _ctx:stdgo._internal.context.Context_context.Context, _level:Level):Bool {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger>);
        return stdgo._internal.log.slog.Slog_logger_static_extension.Logger_static_extension.enabled(_l, _ctx, _level);
    }
    static public function withGroup(_l:Logger, _name:String):Logger {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.log.slog.Slog_logger_static_extension.Logger_static_extension.withGroup(_l, _name);
    }
    static public function with(_l:Logger, _args:haxe.Rest<stdgo.AnyInterface>):Logger {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger>);
        return stdgo._internal.log.slog.Slog_logger_static_extension.Logger_static_extension.with(_l, ...[for (i in _args) i]);
    }
    static public function handler(_l:Logger):Handler {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger>);
        return stdgo._internal.log.slog.Slog_logger_static_extension.Logger_static_extension.handler(_l);
    }
    static public function _clone(_l:Logger):Logger {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger>);
        return stdgo._internal.log.slog.Slog_logger_static_extension.Logger_static_extension._clone(_l);
    }
}
typedef RecordPointer = stdgo._internal.log.slog.Slog_recordpointer.RecordPointer;
class Record_static_extension {
    static public function _source(_r:Record):Source {
        return stdgo._internal.log.slog.Slog_record_static_extension.Record_static_extension._source(_r);
    }
    static public function add(_r:Record, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.log.slog.Slog_record.Record>);
        stdgo._internal.log.slog.Slog_record_static_extension.Record_static_extension.add(_r, ...[for (i in _args) i]);
    }
    static public function addAttrs(_r:Record, _attrs:haxe.Rest<Attr>):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.log.slog.Slog_record.Record>);
        stdgo._internal.log.slog.Slog_record_static_extension.Record_static_extension.addAttrs(_r, ...[for (i in _attrs) i]);
    }
    static public function attrs(_r:Record, _f:Attr -> Bool):Void {
        final _f = _f;
        stdgo._internal.log.slog.Slog_record_static_extension.Record_static_extension.attrs(_r, _f);
    }
    static public function numAttrs(_r:Record):StdTypes.Int {
        return stdgo._internal.log.slog.Slog_record_static_extension.Record_static_extension.numAttrs(_r);
    }
    static public function clone(_r:Record):Record {
        return stdgo._internal.log.slog.Slog_record_static_extension.Record_static_extension.clone(_r);
    }
}
typedef SourcePointer = stdgo._internal.log.slog.Slog_sourcepointer.SourcePointer;
class Source_static_extension {
    static public function _group(_s:Source):Value {
        final _s = (_s : stdgo.Ref<stdgo._internal.log.slog.Slog_source.Source>);
        return stdgo._internal.log.slog.Slog_source_static_extension.Source_static_extension._group(_s);
    }
}
typedef TextHandlerPointer = stdgo._internal.log.slog.Slog_texthandlerpointer.TextHandlerPointer;
class TextHandler_static_extension {
    static public function handle(_h:TextHandler, __892:stdgo._internal.context.Context_context.Context, _r:Record):stdgo.Error {
        final _h = (_h : stdgo.Ref<stdgo._internal.log.slog.Slog_texthandler.TextHandler>);
        return stdgo._internal.log.slog.Slog_texthandler_static_extension.TextHandler_static_extension.handle(_h, __892, _r);
    }
    static public function withGroup(_h:TextHandler, _name:String):Handler {
        final _h = (_h : stdgo.Ref<stdgo._internal.log.slog.Slog_texthandler.TextHandler>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.log.slog.Slog_texthandler_static_extension.TextHandler_static_extension.withGroup(_h, _name);
    }
    static public function withAttrs(_h:TextHandler, _attrs:Array<Attr>):Handler {
        final _h = (_h : stdgo.Ref<stdgo._internal.log.slog.Slog_texthandler.TextHandler>);
        final _attrs = ([for (i in _attrs) i] : stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr>);
        return stdgo._internal.log.slog.Slog_texthandler_static_extension.TextHandler_static_extension.withAttrs(_h, _attrs);
    }
    static public function enabled(_h:TextHandler, __892:stdgo._internal.context.Context_context.Context, _level:Level):Bool {
        final _h = (_h : stdgo.Ref<stdgo._internal.log.slog.Slog_texthandler.TextHandler>);
        return stdgo._internal.log.slog.Slog_texthandler_static_extension.TextHandler_static_extension.enabled(_h, __892, _level);
    }
    public static function _withGroup(__self__:stdgo._internal.log.slog.Slog_texthandler.TextHandler, _0:String):T_commonHandler {
        final _0 = (_0 : stdgo.GoString);
        return stdgo._internal.log.slog.Slog_texthandler_static_extension.TextHandler_static_extension._withGroup(__self__, _0);
    }
    public static function _withAttrs(__self__:stdgo._internal.log.slog.Slog_texthandler.TextHandler, _0:Array<Attr>):T_commonHandler {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr>);
        return stdgo._internal.log.slog.Slog_texthandler_static_extension.TextHandler_static_extension._withAttrs(__self__, _0);
    }
    public static function _newHandleState(__self__:stdgo._internal.log.slog.Slog_texthandler.TextHandler, _0:stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer, _1:Bool, _2:String):T_handleState {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer>);
        final _2 = (_2 : stdgo.GoString);
        return stdgo._internal.log.slog.Slog_texthandler_static_extension.TextHandler_static_extension._newHandleState(__self__, _0, _1, _2);
    }
    public static function _handle(__self__:stdgo._internal.log.slog.Slog_texthandler.TextHandler, _0:Record):stdgo.Error {
        return stdgo._internal.log.slog.Slog_texthandler_static_extension.TextHandler_static_extension._handle(__self__, _0);
    }
    public static function _enabled(__self__:stdgo._internal.log.slog.Slog_texthandler.TextHandler, _0:Level):Bool {
        return stdgo._internal.log.slog.Slog_texthandler_static_extension.TextHandler_static_extension._enabled(__self__, _0);
    }
    public static function _clone(__self__:stdgo._internal.log.slog.Slog_texthandler.TextHandler):T_commonHandler {
        return stdgo._internal.log.slog.Slog_texthandler_static_extension.TextHandler_static_extension._clone(__self__);
    }
    public static function _attrSep(__self__:stdgo._internal.log.slog.Slog_texthandler.TextHandler):String {
        return stdgo._internal.log.slog.Slog_texthandler_static_extension.TextHandler_static_extension._attrSep(__self__);
    }
}
typedef ValuePointer = stdgo._internal.log.slog.Slog_valuepointer.ValuePointer;
class Value_static_extension {
    static public function resolve(_v:Value):Value {
        return stdgo._internal.log.slog.Slog_value_static_extension.Value_static_extension.resolve(_v);
    }
    static public function _append(_v:Value, _dst:Array<std.UInt>):Array<std.UInt> {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.log.slog.Slog_value_static_extension.Value_static_extension._append(_v, _dst)) i];
    }
    static public function _isEmptyGroup(_v:Value):Bool {
        return stdgo._internal.log.slog.Slog_value_static_extension.Value_static_extension._isEmptyGroup(_v);
    }
    static public function equal(_v:Value, _w:Value):Bool {
        return stdgo._internal.log.slog.Slog_value_static_extension.Value_static_extension.equal(_v, _w);
    }
    static public function _group(_v:Value):Array<Attr> {
        return [for (i in stdgo._internal.log.slog.Slog_value_static_extension.Value_static_extension._group(_v)) i];
    }
    static public function group(_v:Value):Array<Attr> {
        return [for (i in stdgo._internal.log.slog.Slog_value_static_extension.Value_static_extension.group(_v)) i];
    }
    static public function logValuer(_v:Value):LogValuer {
        return stdgo._internal.log.slog.Slog_value_static_extension.Value_static_extension.logValuer(_v);
    }
    static public function _time(_v:Value):stdgo._internal.time.Time_time.Time {
        return stdgo._internal.log.slog.Slog_value_static_extension.Value_static_extension._time(_v);
    }
    static public function time(_v:Value):stdgo._internal.time.Time_time.Time {
        return stdgo._internal.log.slog.Slog_value_static_extension.Value_static_extension.time(_v);
    }
    static public function _float(_a:Value):StdTypes.Float {
        return stdgo._internal.log.slog.Slog_value_static_extension.Value_static_extension._float(_a);
    }
    static public function float64(_v:Value):StdTypes.Float {
        return stdgo._internal.log.slog.Slog_value_static_extension.Value_static_extension.float64(_v);
    }
    static public function _duration(_a:Value):stdgo._internal.time.Time_duration.Duration {
        return stdgo._internal.log.slog.Slog_value_static_extension.Value_static_extension._duration(_a);
    }
    static public function duration(_a:Value):stdgo._internal.time.Time_duration.Duration {
        return stdgo._internal.log.slog.Slog_value_static_extension.Value_static_extension.duration(_a);
    }
    static public function _bool(_a:Value):Bool {
        return stdgo._internal.log.slog.Slog_value_static_extension.Value_static_extension._bool(_a);
    }
    static public function bool_(_v:Value):Bool {
        return stdgo._internal.log.slog.Slog_value_static_extension.Value_static_extension.bool_(_v);
    }
    static public function uint64(_v:Value):haxe.UInt64 {
        return stdgo._internal.log.slog.Slog_value_static_extension.Value_static_extension.uint64(_v);
    }
    static public function int64(_v:Value):haxe.Int64 {
        return stdgo._internal.log.slog.Slog_value_static_extension.Value_static_extension.int64(_v);
    }
    static public function _str(_v:Value):String {
        return stdgo._internal.log.slog.Slog_value_static_extension.Value_static_extension._str(_v);
    }
    static public function string(_v:Value):String {
        return stdgo._internal.log.slog.Slog_value_static_extension.Value_static_extension.string(_v);
    }
    static public function any(_v:Value):stdgo.AnyInterface {
        return stdgo._internal.log.slog.Slog_value_static_extension.Value_static_extension.any(_v);
    }
    static public function kind(_v:Value):Kind {
        return stdgo._internal.log.slog.Slog_value_static_extension.Value_static_extension.kind(_v);
    }
}
typedef LevelPointer = stdgo._internal.log.slog.Slog_levelpointer.LevelPointer;
class Level_static_extension {
    static public function level(_l:Level):Level {
        return stdgo._internal.log.slog.Slog_level_static_extension.Level_static_extension.level(_l);
    }
    static public function _parse(_l:stdgo.Pointer<Level>, _s:String):stdgo.Error {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.log.slog.Slog_level_static_extension.Level_static_extension._parse(_l, _s);
    }
    static public function unmarshalText(_l:stdgo.Pointer<Level>, _data:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.log.slog.Slog_level_static_extension.Level_static_extension.unmarshalText(_l, _data);
    }
    static public function marshalText(_l:Level):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.log.slog.Slog_level_static_extension.Level_static_extension.marshalText(_l);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function unmarshalJSON(_l:stdgo.Pointer<Level>, _data:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.log.slog.Slog_level_static_extension.Level_static_extension.unmarshalJSON(_l, _data);
    }
    static public function marshalJSON(_l:Level):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.log.slog.Slog_level_static_extension.Level_static_extension.marshalJSON(_l);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function string(_l:Level):String {
        return stdgo._internal.log.slog.Slog_level_static_extension.Level_static_extension.string(_l);
    }
}
@:dox(hide) typedef T_stringptrPointer = stdgo._internal.log.slog.Slog_t_stringptrpointer.T_stringptrPointer;
@:dox(hide) class T_stringptr_static_extension {

}
@:dox(hide) typedef T_groupptrPointer = stdgo._internal.log.slog.Slog_t_groupptrpointer.T_groupptrPointer;
@:dox(hide) class T_groupptr_static_extension {

}
typedef KindPointer = stdgo._internal.log.slog.Slog_kindpointer.KindPointer;
class Kind_static_extension {
    static public function string(_k:Kind):String {
        return stdgo._internal.log.slog.Slog_kind_static_extension.Kind_static_extension.string(_k);
    }
}
@:dox(hide) typedef T_kindPointer = stdgo._internal.log.slog.Slog_t_kindpointer.T_kindPointer;
@:dox(hide) class T_kind_static_extension {

}
@:dox(hide) typedef T_timeLocationPointer = stdgo._internal.log.slog.Slog_t_timelocationpointer.T_timeLocationPointer;
@:dox(hide) class T_timeLocation_static_extension {

}
/**
    * 
    * Package slog provides structured logging,
    * in which log records include a message,
    * a severity level, and various other attributes
    * expressed as key-value pairs.
    * 
    * It defines a type, [Logger],
    * which provides several methods (such as [Logger.Info] and [Logger.Error])
    * for reporting events of interest.
    * 
    * Each Logger is associated with a [Handler].
    * A Logger output method creates a [Record] from the method arguments
    * and passes it to the Handler, which decides how to handle it.
    * There is a default Logger accessible through top-level functions
    * (such as [Info] and [Error]) that call the corresponding Logger methods.
    * 
    * A log record consists of a time, a level, a message, and a set of key-value
    * pairs, where the keys are strings and the values may be of any type.
    * As an example,
    * 
    * 	slog.Info("hello", "count", 3)
    * 
    * creates a record containing the time of the call,
    * a level of Info, the message "hello", and a single
    * pair with key "count" and value 3.
    * 
    * The [Info] top-level function calls the [Logger.Info] method on the default Logger.
    * In addition to [Logger.Info], there are methods for Debug, Warn and Error levels.
    * Besides these convenience methods for common levels,
    * there is also a [Logger.Log] method which takes the level as an argument.
    * Each of these methods has a corresponding top-level function that uses the
    * default logger.
    * 
    * The default handler formats the log record's message, time, level, and attributes
    * as a string and passes it to the [log] package.
    * 
    * 	2022/11/08 15:28:26 INFO hello count=3
    * 
    * For more control over the output format, create a logger with a different handler.
    * This statement uses [New] to create a new logger with a TextHandler
    * that writes structured records in text form to standard error:
    * 
    * 	logger := slog.New(slog.NewTextHandler(os.Stderr, nil))
    * 
    * [TextHandler] output is a sequence of key=value pairs, easily and unambiguously
    * parsed by machine. This statement:
    * 
    * 	logger.Info("hello", "count", 3)
    * 
    * produces this output:
    * 
    * 	time=2022-11-08T15:28:26.000-05:00 level=INFO msg=hello count=3
    * 
    * The package also provides [JSONHandler], whose output is line-delimited JSON:
    * 
    * 	logger := slog.New(slog.NewJSONHandler(os.Stdout, nil))
    * 	logger.Info("hello", "count", 3)
    * 
    * produces this output:
    * 
    * 	{"time":"2022-11-08T15:28:26.000000000-05:00","level":"INFO","msg":"hello","count":3}
    * 
    * Both [TextHandler] and [JSONHandler] can be configured with [HandlerOptions].
    * There are options for setting the minimum level (see Levels, below),
    * displaying the source file and line of the log call, and
    * modifying attributes before they are logged.
    * 
    * Setting a logger as the default with
    * 
    * 	slog.SetDefault(logger)
    * 
    * will cause the top-level functions like [Info] to use it.
    * [SetDefault] also updates the default logger used by the [log] package,
    * so that existing applications that use [log.Printf] and related functions
    * will send log records to the logger's handler without needing to be rewritten.
    * 
    * Some attributes are common to many log calls.
    * For example, you may wish to include the URL or trace identifier of a server request
    * with all log events arising from the request.
    * Rather than repeat the attribute with every log call, you can use [Logger.With]
    * to construct a new Logger containing the attributes:
    * 
    * 	logger2 := logger.With("url", r.URL)
    * 
    * The arguments to With are the same key-value pairs used in [Logger.Info].
    * The result is a new Logger with the same handler as the original, but additional
    * attributes that will appear in the output of every call.
    * 
    * # Levels
    * 
    * A [Level] is an integer representing the importance or severity of a log event.
    * The higher the level, the more severe the event.
    * This package defines constants for the most common levels,
    * but any int can be used as a level.
    * 
    * In an application, you may wish to log messages only at a certain level or greater.
    * One common configuration is to log messages at Info or higher levels,
    * suppressing debug logging until it is needed.
    * The built-in handlers can be configured with the minimum level to output by
    * setting [HandlerOptions.Level].
    * The program's `main` function typically does this.
    * The default value is LevelInfo.
    * 
    * Setting the [HandlerOptions.Level] field to a [Level] value
    * fixes the handler's minimum level throughout its lifetime.
    * Setting it to a [LevelVar] allows the level to be varied dynamically.
    * A LevelVar holds a Level and is safe to read or write from multiple
    * goroutines.
    * To vary the level dynamically for an entire program, first initialize
    * a global LevelVar:
    * 
    * 	var programLevel = new(slog.LevelVar) // Info by default
    * 
    * Then use the LevelVar to construct a handler, and make it the default:
    * 
    * 	h := slog.NewJSONHandler(os.Stderr, &slog.HandlerOptions{Level: programLevel})
    * 	slog.SetDefault(slog.New(h))
    * 
    * Now the program can change its logging level with a single statement:
    * 
    * 	programLevel.Set(slog.LevelDebug)
    * 
    * # Groups
    * 
    * Attributes can be collected into groups.
    * A group has a name that is used to qualify the names of its attributes.
    * How this qualification is displayed depends on the handler.
    * [TextHandler] separates the group and attribute names with a dot.
    * [JSONHandler] treats each group as a separate JSON object, with the group name as the key.
    * 
    * Use [Group] to create a Group attribute from a name and a list of key-value pairs:
    * 
    * 	slog.Group("request",
    * 	    "method", r.Method,
    * 	    "url", r.URL)
    * 
    * TextHandler would display this group as
    * 
    * 	request.method=GET request.url=http://example.com
    * 
    * JSONHandler would display it as
    * 
    * 	"request":{"method":"GET","url":"http://example.com"}
    * 
    * Use [Logger.WithGroup] to qualify all of a Logger's output
    * with a group name. Calling WithGroup on a Logger results in a
    * new Logger with the same Handler as the original, but with all
    * its attributes qualified by the group name.
    * 
    * This can help prevent duplicate attribute keys in large systems,
    * where subsystems might use the same keys.
    * Pass each subsystem a different Logger with its own group name so that
    * potential duplicates are qualified:
    * 
    * 	logger := slog.Default().With("id", systemID)
    * 	parserLogger := logger.WithGroup("parser")
    * 	parseInput(input, parserLogger)
    * 
    * When parseInput logs with parserLogger, its keys will be qualified with "parser",
    * so even if it uses the common key "id", the log line will have distinct keys.
    * 
    * # Contexts
    * 
    * Some handlers may wish to include information from the [context.Context] that is
    * available at the call site. One example of such information
    * is the identifier for the current span when tracing is enabled.
    * 
    * The [Logger.Log] and [Logger.LogAttrs] methods take a context as a first
    * argument, as do their corresponding top-level functions.
    * 
    * Although the convenience methods on Logger (Info and so on) and the
    * corresponding top-level functions do not take a context, the alternatives ending
    * in "Context" do. For example,
    * 
    * 	slog.InfoContext(ctx, "message")
    * 
    * It is recommended to pass a context to an output method if one is available.
    * 
    * # Attrs and Values
    * 
    * An [Attr] is a key-value pair. The Logger output methods accept Attrs as well as
    * alternating keys and values. The statement
    * 
    * 	slog.Info("hello", slog.Int("count", 3))
    * 
    * behaves the same as
    * 
    * 	slog.Info("hello", "count", 3)
    * 
    * There are convenience constructors for [Attr] such as [Int], [String], and [Bool]
    * for common types, as well as the function [Any] for constructing Attrs of any
    * type.
    * 
    * The value part of an Attr is a type called [Value].
    * Like an [any], a Value can hold any Go value,
    * but it can represent typical values, including all numbers and strings,
    * without an allocation.
    * 
    * For the most efficient log output, use [Logger.LogAttrs].
    * It is similar to [Logger.Log] but accepts only Attrs, not alternating
    * keys and values; this allows it, too, to avoid allocation.
    * 
    * The call
    * 
    * 	logger.LogAttrs(ctx, slog.LevelInfo, "hello", slog.Int("count", 3))
    * 
    * is the most efficient way to achieve the same output as
    * 
    * 	slog.Info("hello", "count", 3)
    * 
    * # Customizing a type's logging behavior
    * 
    * If a type implements the [LogValuer] interface, the [Value] returned from its LogValue
    * method is used for logging. You can use this to control how values of the type
    * appear in logs. For example, you can redact secret information like passwords,
    * or gather a struct's fields in a Group. See the examples under [LogValuer] for
    * details.
    * 
    * A LogValue method may return a Value that itself implements [LogValuer]. The [Value.Resolve]
    * method handles these cases carefully, avoiding infinite loops and unbounded recursion.
    * Handler authors and others may wish to use Value.Resolve instead of calling LogValue directly.
    * 
    * # Wrapping output methods
    * 
    * The logger functions use reflection over the call stack to find the file name
    * and line number of the logging call within the application. This can produce
    * incorrect source information for functions that wrap slog. For instance, if you
    * define this function in file mylog.go:
    * 
    * 	func Infof(format string, args ...any) {
    * 	    slog.Default().Info(fmt.Sprintf(format, args...))
    * 	}
    * 
    * and you call it like this in main.go:
    * 
    * 	Infof(slog.Default(), "hello, %s", "world")
    * 
    * then slog will report the source file as mylog.go, not main.go.
    * 
    * A correct implementation of Infof will obtain the source location
    * (pc) and pass it to NewRecord.
    * The Infof function in the package-level example called "wrapping"
    * demonstrates how to do this.
    * 
    * # Working with Records
    * 
    * Sometimes a Handler will need to modify a Record
    * before passing it on to another Handler or backend.
    * A Record contains a mixture of simple public fields (e.g. Time, Level, Message)
    * and hidden fields that refer to state (such as attributes) indirectly. This
    * means that modifying a simple copy of a Record (e.g. by calling
    * [Record.Add] or [Record.AddAttrs] to add attributes)
    * may have unexpected effects on the original.
    * Before modifying a Record, use [Record.Clone] to
    * create a copy that shares no state with the original,
    * or create a new Record with [NewRecord]
    * and build up its Attrs by traversing the old ones with [Record.Attrs].
    * 
    * # Performance considerations
    * 
    * If profiling your application demonstrates that logging is taking significant time,
    * the following suggestions may help.
    * 
    * If many log lines have a common attribute, use [Logger.With] to create a Logger with
    * that attribute. The built-in handlers will format that attribute only once, at the
    * call to [Logger.With]. The [Handler] interface is designed to allow that optimization,
    * and a well-written Handler should take advantage of it.
    * 
    * The arguments to a log call are always evaluated, even if the log event is discarded.
    * If possible, defer computation so that it happens only if the value is actually logged.
    * For example, consider the call
    * 
    * 	slog.Info("starting request", "url", r.URL.String())  // may compute String unnecessarily
    * 
    * The URL.String method will be called even if the logger discards Info-level events.
    * Instead, pass the URL directly:
    * 
    * 	slog.Info("starting request", "url", &r.URL) // calls URL.String only if needed
    * 
    * The built-in [TextHandler] will call its String method, but only
    * if the log event is enabled.
    * Avoiding the call to String also preserves the structure of the underlying value.
    * For example [JSONHandler] emits the components of the parsed URL as a JSON object.
    * If you want to avoid eagerly paying the cost of the String call
    * without causing the handler to potentially inspect the structure of the value,
    * wrap the value in a fmt.Stringer implementation that hides its Marshal methods.
    * 
    * You can also use the [LogValuer] interface to avoid unnecessary work in disabled log
    * calls. Say you need to log some expensive value:
    * 
    * 	slog.Debug("frobbing", "value", computeExpensiveValue(arg))
    * 
    * Even if this line is disabled, computeExpensiveValue will be called.
    * To avoid that, define a type implementing LogValuer:
    * 
    * 	type expensive struct { arg int }
    * 
    * 	func (e expensive) LogValue() slog.Value {
    * 	    return slog.AnyValue(computeExpensiveValue(e.arg))
    * 	}
    * 
    * Then use a value of that type in log calls:
    * 
    * 	slog.Debug("frobbing", "value", expensive{arg})
    * 
    * Now computeExpensiveValue will only be called when the line is enabled.
    * 
    * The built-in handlers acquire a lock before calling [io.Writer.Write]
    * to ensure that each record is written in one piece. User-defined
    * handlers are responsible for their own locking.
    * 
    * # Writing a handler
    * 
    * For a guide to writing a custom handler, see https://golang.org/s/slog-handler-guide.
    * 
**/
class Slog {
    /**
        * String returns an Attr for a string value.
    **/
    static public inline function string(_key:String, _value:String):Attr {
        final _key = (_key : stdgo.GoString);
        final _value = (_value : stdgo.GoString);
        return stdgo._internal.log.slog.Slog_string.string(_key, _value);
    }
    /**
        * Int64 returns an Attr for an int64.
    **/
    static public inline function int64(_key:String, _value:haxe.Int64):Attr {
        final _key = (_key : stdgo.GoString);
        final _value = (_value : stdgo.GoInt64);
        return stdgo._internal.log.slog.Slog_int64.int64(_key, _value);
    }
    /**
        * Int converts an int to an int64 and returns
        * an Attr with that value.
    **/
    static public inline function int_(_key:String, _value:StdTypes.Int):Attr {
        final _key = (_key : stdgo.GoString);
        final _value = (_value : stdgo.GoInt);
        return stdgo._internal.log.slog.Slog_int_.int_(_key, _value);
    }
    /**
        * Uint64 returns an Attr for a uint64.
    **/
    static public inline function uint64(_key:String, _v:haxe.UInt64):Attr {
        final _key = (_key : stdgo.GoString);
        final _v = (_v : stdgo.GoUInt64);
        return stdgo._internal.log.slog.Slog_uint64.uint64(_key, _v);
    }
    /**
        * Float64 returns an Attr for a floating-point number.
    **/
    static public inline function float64(_key:String, _v:StdTypes.Float):Attr {
        final _key = (_key : stdgo.GoString);
        final _v = (_v : stdgo.GoFloat64);
        return stdgo._internal.log.slog.Slog_float64.float64(_key, _v);
    }
    /**
        * Bool returns an Attr for a bool.
    **/
    static public inline function bool_(_key:String, _v:Bool):Attr {
        final _key = (_key : stdgo.GoString);
        return stdgo._internal.log.slog.Slog_bool_.bool_(_key, _v);
    }
    /**
        * Time returns an Attr for a time.Time.
        * It discards the monotonic portion.
    **/
    static public inline function time(_key:String, _v:stdgo._internal.time.Time_time.Time):Attr {
        final _key = (_key : stdgo.GoString);
        return stdgo._internal.log.slog.Slog_time.time(_key, _v);
    }
    /**
        * Duration returns an Attr for a time.Duration.
    **/
    static public inline function duration(_key:String, _v:stdgo._internal.time.Time_duration.Duration):Attr {
        final _key = (_key : stdgo.GoString);
        return stdgo._internal.log.slog.Slog_duration.duration(_key, _v);
    }
    /**
        * Group returns an Attr for a Group Value.
        * The first argument is the key; the remaining arguments
        * are converted to Attrs as in [Logger.Log].
        * 
        * Use Group to collect several key-value pairs under a single
        * key on a log line, or as the result of LogValue
        * in order to log a single value as multiple Attrs.
    **/
    static public inline function group(_key:String, _args:haxe.Rest<stdgo.AnyInterface>):Attr {
        final _key = (_key : stdgo.GoString);
        return stdgo._internal.log.slog.Slog_group.group(_key, ...[for (i in _args) i]);
    }
    /**
        * Any returns an Attr for the supplied value.
        * See [AnyValue] for how values are treated.
    **/
    static public inline function any(_key:String, _value:stdgo.AnyInterface):Attr {
        final _key = (_key : stdgo.GoString);
        final _value = (_value : stdgo.AnyInterface);
        return stdgo._internal.log.slog.Slog_any.any(_key, _value);
    }
    /**
        * NewJSONHandler creates a JSONHandler that writes to w,
        * using the given options.
        * If opts is nil, the default options are used.
    **/
    static public inline function newJSONHandler(_w:stdgo._internal.io.Io_writer.Writer, _opts:HandlerOptions):JSONHandler {
        final _opts = (_opts : stdgo.Ref<stdgo._internal.log.slog.Slog_handleroptions.HandlerOptions>);
        return stdgo._internal.log.slog.Slog_newjsonhandler.newJSONHandler(_w, _opts);
    }
    /**
        * Default returns the default Logger.
    **/
    static public inline function default_():Logger {
        return stdgo._internal.log.slog.Slog_default_.default_();
    }
    /**
        * SetDefault makes l the default Logger.
        * After this call, output from the log package's default Logger
        * (as with [log.Print], etc.) will be logged at LevelInfo using l's Handler.
    **/
    static public inline function setDefault(_l:Logger):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger>);
        stdgo._internal.log.slog.Slog_setdefault.setDefault(_l);
    }
    /**
        * New creates a new Logger with the given non-nil Handler.
    **/
    static public inline function new_(_h:Handler):Logger {
        return stdgo._internal.log.slog.Slog_new_.new_(_h);
    }
    /**
        * With calls Logger.With on the default logger.
    **/
    static public inline function with(_args:haxe.Rest<stdgo.AnyInterface>):Logger {
        return stdgo._internal.log.slog.Slog_with.with(...[for (i in _args) i]);
    }
    /**
        * NewLogLogger returns a new log.Logger such that each call to its Output method
        * dispatches a Record to the specified handler. The logger acts as a bridge from
        * the older log API to newer structured logging handlers.
    **/
    static public inline function newLogLogger(_h:Handler, _level:Level):stdgo._internal.log.Log_logger.Logger {
        return stdgo._internal.log.slog.Slog_newloglogger.newLogLogger(_h, _level);
    }
    /**
        * Debug calls Logger.Debug on the default logger.
    **/
    static public inline function debug(_msg:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _msg = (_msg : stdgo.GoString);
        stdgo._internal.log.slog.Slog_debug.debug(_msg, ...[for (i in _args) i]);
    }
    /**
        * DebugContext calls Logger.DebugContext on the default logger.
    **/
    static public inline function debugContext(_ctx:stdgo._internal.context.Context_context.Context, _msg:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _msg = (_msg : stdgo.GoString);
        stdgo._internal.log.slog.Slog_debugcontext.debugContext(_ctx, _msg, ...[for (i in _args) i]);
    }
    /**
        * Info calls Logger.Info on the default logger.
    **/
    static public inline function info(_msg:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _msg = (_msg : stdgo.GoString);
        stdgo._internal.log.slog.Slog_info.info(_msg, ...[for (i in _args) i]);
    }
    /**
        * InfoContext calls Logger.InfoContext on the default logger.
    **/
    static public inline function infoContext(_ctx:stdgo._internal.context.Context_context.Context, _msg:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _msg = (_msg : stdgo.GoString);
        stdgo._internal.log.slog.Slog_infocontext.infoContext(_ctx, _msg, ...[for (i in _args) i]);
    }
    /**
        * Warn calls Logger.Warn on the default logger.
    **/
    static public inline function warn(_msg:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _msg = (_msg : stdgo.GoString);
        stdgo._internal.log.slog.Slog_warn.warn(_msg, ...[for (i in _args) i]);
    }
    /**
        * WarnContext calls Logger.WarnContext on the default logger.
    **/
    static public inline function warnContext(_ctx:stdgo._internal.context.Context_context.Context, _msg:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _msg = (_msg : stdgo.GoString);
        stdgo._internal.log.slog.Slog_warncontext.warnContext(_ctx, _msg, ...[for (i in _args) i]);
    }
    /**
        * Error calls Logger.Error on the default logger.
    **/
    static public inline function error(_msg:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _msg = (_msg : stdgo.GoString);
        stdgo._internal.log.slog.Slog_error.error(_msg, ...[for (i in _args) i]);
    }
    /**
        * ErrorContext calls Logger.ErrorContext on the default logger.
    **/
    static public inline function errorContext(_ctx:stdgo._internal.context.Context_context.Context, _msg:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _msg = (_msg : stdgo.GoString);
        stdgo._internal.log.slog.Slog_errorcontext.errorContext(_ctx, _msg, ...[for (i in _args) i]);
    }
    /**
        * Log calls Logger.Log on the default logger.
    **/
    static public inline function log(_ctx:stdgo._internal.context.Context_context.Context, _level:Level, _msg:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _msg = (_msg : stdgo.GoString);
        stdgo._internal.log.slog.Slog_log.log(_ctx, _level, _msg, ...[for (i in _args) i]);
    }
    /**
        * LogAttrs calls Logger.LogAttrs on the default logger.
    **/
    static public inline function logAttrs(_ctx:stdgo._internal.context.Context_context.Context, _level:Level, _msg:String, _attrs:haxe.Rest<Attr>):Void {
        final _msg = (_msg : stdgo.GoString);
        stdgo._internal.log.slog.Slog_logattrs.logAttrs(_ctx, _level, _msg, ...[for (i in _attrs) i]);
    }
    /**
        * NewRecord creates a Record from the given arguments.
        * Use [Record.AddAttrs] to add attributes to the Record.
        * 
        * NewRecord is intended for logging APIs that want to support a [Handler] as
        * a backend.
    **/
    static public inline function newRecord(_t:stdgo._internal.time.Time_time.Time, _level:Level, _msg:String, _pc:stdgo.GoUIntptr):Record {
        final _msg = (_msg : stdgo.GoString);
        final _pc = (_pc : stdgo.GoUIntptr);
        return stdgo._internal.log.slog.Slog_newrecord.newRecord(_t, _level, _msg, _pc);
    }
    /**
        * NewTextHandler creates a TextHandler that writes to w,
        * using the given options.
        * If opts is nil, the default options are used.
    **/
    static public inline function newTextHandler(_w:stdgo._internal.io.Io_writer.Writer, _opts:HandlerOptions):TextHandler {
        final _opts = (_opts : stdgo.Ref<stdgo._internal.log.slog.Slog_handleroptions.HandlerOptions>);
        return stdgo._internal.log.slog.Slog_newtexthandler.newTextHandler(_w, _opts);
    }
    /**
        * StringValue returns a new Value for a string.
    **/
    static public inline function stringValue(_value:String):Value {
        final _value = (_value : stdgo.GoString);
        return stdgo._internal.log.slog.Slog_stringvalue.stringValue(_value);
    }
    /**
        * IntValue returns a Value for an int.
    **/
    static public inline function intValue(_v:StdTypes.Int):Value {
        final _v = (_v : stdgo.GoInt);
        return stdgo._internal.log.slog.Slog_intvalue.intValue(_v);
    }
    /**
        * Int64Value returns a Value for an int64.
    **/
    static public inline function int64Value(_v:haxe.Int64):Value {
        final _v = (_v : stdgo.GoInt64);
        return stdgo._internal.log.slog.Slog_int64value.int64Value(_v);
    }
    /**
        * Uint64Value returns a Value for a uint64.
    **/
    static public inline function uint64Value(_v:haxe.UInt64):Value {
        final _v = (_v : stdgo.GoUInt64);
        return stdgo._internal.log.slog.Slog_uint64value.uint64Value(_v);
    }
    /**
        * Float64Value returns a Value for a floating-point number.
    **/
    static public inline function float64Value(_v:StdTypes.Float):Value {
        final _v = (_v : stdgo.GoFloat64);
        return stdgo._internal.log.slog.Slog_float64value.float64Value(_v);
    }
    /**
        * BoolValue returns a Value for a bool.
    **/
    static public inline function boolValue(_v:Bool):Value {
        return stdgo._internal.log.slog.Slog_boolvalue.boolValue(_v);
    }
    /**
        * TimeValue returns a Value for a time.Time.
        * It discards the monotonic portion.
    **/
    static public inline function timeValue(_v:stdgo._internal.time.Time_time.Time):Value {
        return stdgo._internal.log.slog.Slog_timevalue.timeValue(_v);
    }
    /**
        * DurationValue returns a Value for a time.Duration.
    **/
    static public inline function durationValue(_v:stdgo._internal.time.Time_duration.Duration):Value {
        return stdgo._internal.log.slog.Slog_durationvalue.durationValue(_v);
    }
    /**
        * GroupValue returns a new Value for a list of Attrs.
        * The caller must not subsequently mutate the argument slice.
    **/
    static public inline function groupValue(_as:haxe.Rest<Attr>):Value {
        return stdgo._internal.log.slog.Slog_groupvalue.groupValue(...[for (i in _as) i]);
    }
    /**
        * AnyValue returns a Value for the supplied value.
        * 
        * If the supplied value is of type Value, it is returned
        * unmodified.
        * 
        * Given a value of one of Go's predeclared string, bool, or
        * (non-complex) numeric types, AnyValue returns a Value of kind
        * String, Bool, Uint64, Int64, or Float64. The width of the
        * original numeric type is not preserved.
        * 
        * Given a time.Time or time.Duration value, AnyValue returns a Value of kind
        * KindTime or KindDuration. The monotonic time is not preserved.
        * 
        * For nil, or values of all other types, including named types whose
        * underlying type is numeric, AnyValue returns a value of kind KindAny.
    **/
    static public inline function anyValue(_v:stdgo.AnyInterface):Value {
        final _v = (_v : stdgo.AnyInterface);
        return stdgo._internal.log.slog.Slog_anyvalue.anyValue(_v);
    }
}
