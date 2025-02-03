package stdgo.log.slog;
@:structInit @:using(stdgo.log.slog.Slog.T_handleState_static_extension) abstract T_handleState(stdgo._internal.log.slog.Slog_T_handleState.T_handleState) from stdgo._internal.log.slog.Slog_T_handleState.T_handleState to stdgo._internal.log.slog.Slog_T_handleState.T_handleState {
    public var _h(get, set) : T_commonHandler;
    function get__h():T_commonHandler return this._h;
    function set__h(v:T_commonHandler):T_commonHandler {
        this._h = (v : stdgo.Ref<stdgo._internal.log.slog.Slog_T_commonHandler.T_commonHandler>);
        return v;
    }
    public var _buf(get, set) : Buffer;
    function get__buf():Buffer return this._buf;
    function set__buf(v:Buffer):Buffer {
        this._buf = (v : stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_Buffer.Buffer>);
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
    public var _prefix(get, set) : Buffer;
    function get__prefix():Buffer return this._prefix;
    function set__prefix(v:Buffer):Buffer {
        this._prefix = (v : stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_Buffer.Buffer>);
        return v;
    }
    public var _groups(get, set) : Array<String>;
    function get__groups():Array<String> return this._groups;
    function set__groups(v:Array<String>):Array<String> {
        this._groups = (v : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);
        return v;
    }
    public function new(?_h:T_commonHandler, ?_buf:Buffer, ?_freeBuf:Bool, ?_sep:String, ?_prefix:Buffer, ?_groups:Array<String>) this = new stdgo._internal.log.slog.Slog_T_handleState.T_handleState((_h : stdgo.Ref<stdgo._internal.log.slog.Slog_T_commonHandler.T_commonHandler>), (_buf : stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_Buffer.Buffer>), _freeBuf, (_sep : stdgo.GoString), (_prefix : stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_Buffer.Buffer>), (_groups : stdgo.Ref<stdgo.Slice<stdgo.GoString>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
