package stdgo._internal.log;
@:structInit @:using(stdgo._internal.log.Log_logger_static_extension.Logger_static_extension) class Logger {
    public var _outMu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _out : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public var _prefix : stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo.GoString> = ({} : stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo.GoString>);
    public var _flag : stdgo._internal.sync.atomic_.Atomic__int32.Int32 = ({} : stdgo._internal.sync.atomic_.Atomic__int32.Int32);
    public var _isDiscard : stdgo._internal.sync.atomic_.Atomic__bool_.Bool_ = ({} : stdgo._internal.sync.atomic_.Atomic__bool_.Bool_);
    public function new(?_outMu:stdgo._internal.sync.Sync_mutex.Mutex, ?_out:stdgo._internal.io.Io_writer.Writer, ?_prefix:stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo.GoString>, ?_flag:stdgo._internal.sync.atomic_.Atomic__int32.Int32, ?_isDiscard:stdgo._internal.sync.atomic_.Atomic__bool_.Bool_) {
        if (_outMu != null) this._outMu = _outMu;
        if (_out != null) this._out = _out;
        if (_prefix != null) this._prefix = _prefix;
        if (_flag != null) this._flag = _flag;
        if (_isDiscard != null) this._isDiscard = _isDiscard;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Logger(_outMu, _out, _prefix, _flag, _isDiscard);
    }
}
