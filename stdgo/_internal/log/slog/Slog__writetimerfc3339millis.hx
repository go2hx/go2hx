package stdgo._internal.log.slog;
function _writeTimeRFC3339Millis(_buf:stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer>, _t:stdgo._internal.time.Time_time.Time):Void {
        var __tmp__ = _t.date(), _year:stdgo.GoInt = __tmp__._0, _month:stdgo._internal.time.Time_month.Month = __tmp__._1, _day:stdgo.GoInt = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L537"
        _buf.writePosIntWidth(_year, (4 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L538"
        _buf.writeByte((45 : stdgo.GoUInt8));
        //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L539"
        _buf.writePosIntWidth((_month : stdgo.GoInt), (2 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L540"
        _buf.writeByte((45 : stdgo.GoUInt8));
        //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L541"
        _buf.writePosIntWidth(_day, (2 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L542"
        _buf.writeByte((84 : stdgo.GoUInt8));
        var __tmp__ = _t.clock(), _hour:stdgo.GoInt = __tmp__._0, _min:stdgo.GoInt = __tmp__._1, _sec:stdgo.GoInt = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L544"
        _buf.writePosIntWidth(_hour, (2 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L545"
        _buf.writeByte((58 : stdgo.GoUInt8));
        //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L546"
        _buf.writePosIntWidth(_min, (2 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L547"
        _buf.writeByte((58 : stdgo.GoUInt8));
        //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L548"
        _buf.writePosIntWidth(_sec, (2 : stdgo.GoInt));
        var _ns = (_t.nanosecond() : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L550"
        _buf.writeByte((46 : stdgo.GoUInt8));
        //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L551"
        _buf.writePosIntWidth((_ns / (1000000 : stdgo.GoInt) : stdgo.GoInt), (3 : stdgo.GoInt));
        var __tmp__ = _t.zone(), __10:stdgo.GoString = __tmp__._0, _offsetSeconds:stdgo.GoInt = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L553"
        if (_offsetSeconds == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L554"
            _buf.writeByte((90 : stdgo.GoUInt8));
        } else {
            var _offsetMinutes = (_offsetSeconds / (60 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L557"
            if ((_offsetMinutes < (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L558"
                _buf.writeByte((45 : stdgo.GoUInt8));
                _offsetMinutes = -_offsetMinutes;
            } else {
                //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L561"
                _buf.writeByte((43 : stdgo.GoUInt8));
            };
            //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L563"
            _buf.writePosIntWidth((_offsetMinutes / (60 : stdgo.GoInt) : stdgo.GoInt), (2 : stdgo.GoInt));
            //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L564"
            _buf.writeByte((58 : stdgo.GoUInt8));
            //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L565"
            _buf.writePosIntWidth((_offsetMinutes % (60 : stdgo.GoInt) : stdgo.GoInt), (2 : stdgo.GoInt));
        };
    }
