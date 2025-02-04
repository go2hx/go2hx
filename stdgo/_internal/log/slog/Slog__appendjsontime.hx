package stdgo._internal.log.slog;
function _appendJSONTime(_s:stdgo.Ref<stdgo._internal.log.slog.Slog_t_handlestate.T_handleState>, _t:stdgo._internal.time.Time_time.Time):Void {
        {
            var _y = (_t.year() : stdgo.GoInt);
            if (((_y < (0 : stdgo.GoInt) : Bool) || (_y >= (10000 : stdgo.GoInt) : Bool) : Bool)) {
                @:check2r _s._appendError(stdgo._internal.errors.Errors_new_.new_(("time.Time year outside of range [0,9999]" : stdgo.GoString)));
            };
        };
        @:check2r (@:checkr _s ?? throw "null pointer dereference")._buf.writeByte((34 : stdgo.GoUInt8));
        ((@:checkr _s ?? throw "null pointer dereference")._buf : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer).__setData__(_t.appendFormat(((@:checkr _s ?? throw "null pointer dereference")._buf : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer), ("2006-01-02T15:04:05.999999999Z07:00" : stdgo.GoString)));
        @:check2r (@:checkr _s ?? throw "null pointer dereference")._buf.writeByte((34 : stdgo.GoUInt8));
    }
