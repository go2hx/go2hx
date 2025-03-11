package stdgo._internal.log.slog;
@:keep @:allow(stdgo._internal.log.slog.Slog.T_handlerWriter_asInterface) class T_handlerWriter_static_extension {
    @:keep
    @:tdfield
    static public function write( _w:stdgo.Ref<stdgo._internal.log.slog.Slog_t_handlerwriter.T_handlerWriter>, _buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.log.slog.Slog_t_handlerwriter.T_handlerWriter> = _w;
        if (!(@:checkr _w ?? throw "null pointer dereference")._h.enabled(stdgo._internal.context.Context_background.background(), (@:checkr _w ?? throw "null pointer dereference")._level)) {
            return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
        };
        var _pc:stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
        if ((!stdgo._internal.log.slog.internal.Internal_ignorepc.ignorePC && (@:checkr _w ?? throw "null pointer dereference")._capturePC : Bool)) {
            var _pcs:stdgo.GoArray<stdgo.GoUIntptr> = new stdgo.GoArray<stdgo.GoUIntptr>(1, 1);
            stdgo._internal.runtime.Runtime_callers.callers((4 : stdgo.GoInt), (_pcs.__slice__(0) : stdgo.Slice<stdgo.GoUIntptr>));
            _pc = _pcs[(0 : stdgo.GoInt)];
        };
        var _origLen = (_buf.length : stdgo.GoInt);
        if ((((_buf.length) > (0 : stdgo.GoInt) : Bool) && (_buf[((_buf.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
            _buf = (_buf.__slice__(0, ((_buf.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _r = (stdgo._internal.log.slog.Slog_newrecord.newRecord(stdgo._internal.time.Time_now.now()?.__copy__(), (@:checkr _w ?? throw "null pointer dereference")._level, (_buf : stdgo.GoString)?.__copy__(), _pc)?.__copy__() : stdgo._internal.log.slog.Slog_record.Record);
        return { _0 : _origLen, _1 : (@:checkr _w ?? throw "null pointer dereference")._h.handle(stdgo._internal.context.Context_background.background(), _r?.__copy__()) };
    }
}
