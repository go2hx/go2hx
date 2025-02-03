package stdgo.log;
@:structInit @:using(stdgo.log.Log.Logger_static_extension) abstract Logger(stdgo._internal.log.Log_Logger.Logger) from stdgo._internal.log.Log_Logger.Logger to stdgo._internal.log.Log_Logger.Logger {
    public var _outMu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__outMu():stdgo._internal.sync.Sync_Mutex.Mutex return this._outMu;
    function set__outMu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._outMu = v;
        return v;
    }
    public var _out(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get__out():stdgo._internal.io.Io_Writer.Writer return this._out;
    function set__out(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this._out = v;
        return v;
    }
    public var _prefix(get, set) : stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo.GoString>;
    function get__prefix():stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo.GoString> return this._prefix;
    function set__prefix(v:stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo.GoString>):stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo.GoString> {
        this._prefix = v;
        return v;
    }
    public var _flag(get, set) : stdgo._internal.sync.atomic_.Atomic__Int32.Int32;
    function get__flag():stdgo._internal.sync.atomic_.Atomic__Int32.Int32 return this._flag;
    function set__flag(v:stdgo._internal.sync.atomic_.Atomic__Int32.Int32):stdgo._internal.sync.atomic_.Atomic__Int32.Int32 {
        this._flag = v;
        return v;
    }
    public var _isDiscard(get, set) : stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_;
    function get__isDiscard():stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ return this._isDiscard;
    function set__isDiscard(v:stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_):stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ {
        this._isDiscard = v;
        return v;
    }
    public function new(?_outMu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_out:stdgo._internal.io.Io_Writer.Writer, ?_prefix:stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo.GoString>, ?_flag:stdgo._internal.sync.atomic_.Atomic__Int32.Int32, ?_isDiscard:stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_) this = new stdgo._internal.log.Log_Logger.Logger(_outMu, _out, _prefix, _flag, _isDiscard);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
