package stdgo.log.syslog;
class Writer_static_extension {
    static public function _write(_w:Writer, _p:Priority, _msg:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer>);
        final _msg = (_msg : stdgo.GoString);
        return {
            final obj = stdgo._internal.log.syslog.Syslog_Writer_static_extension.Writer_static_extension._write(_w, _p, _msg);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _writeAndRetry(_w:Writer, _p:Priority, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.log.syslog.Syslog_Writer_static_extension.Writer_static_extension._writeAndRetry(_w, _p, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function debug(_w:Writer, _m:String):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer>);
        final _m = (_m : stdgo.GoString);
        return stdgo._internal.log.syslog.Syslog_Writer_static_extension.Writer_static_extension.debug(_w, _m);
    }
    static public function info(_w:Writer, _m:String):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer>);
        final _m = (_m : stdgo.GoString);
        return stdgo._internal.log.syslog.Syslog_Writer_static_extension.Writer_static_extension.info(_w, _m);
    }
    static public function notice(_w:Writer, _m:String):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer>);
        final _m = (_m : stdgo.GoString);
        return stdgo._internal.log.syslog.Syslog_Writer_static_extension.Writer_static_extension.notice(_w, _m);
    }
    static public function warning(_w:Writer, _m:String):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer>);
        final _m = (_m : stdgo.GoString);
        return stdgo._internal.log.syslog.Syslog_Writer_static_extension.Writer_static_extension.warning(_w, _m);
    }
    static public function err(_w:Writer, _m:String):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer>);
        final _m = (_m : stdgo.GoString);
        return stdgo._internal.log.syslog.Syslog_Writer_static_extension.Writer_static_extension.err(_w, _m);
    }
    static public function crit(_w:Writer, _m:String):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer>);
        final _m = (_m : stdgo.GoString);
        return stdgo._internal.log.syslog.Syslog_Writer_static_extension.Writer_static_extension.crit(_w, _m);
    }
    static public function alert(_w:Writer, _m:String):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer>);
        final _m = (_m : stdgo.GoString);
        return stdgo._internal.log.syslog.Syslog_Writer_static_extension.Writer_static_extension.alert(_w, _m);
    }
    static public function emerg(_w:Writer, _m:String):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer>);
        final _m = (_m : stdgo.GoString);
        return stdgo._internal.log.syslog.Syslog_Writer_static_extension.Writer_static_extension.emerg(_w, _m);
    }
    static public function close(_w:Writer):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer>);
        return stdgo._internal.log.syslog.Syslog_Writer_static_extension.Writer_static_extension.close(_w);
    }
    static public function write(_w:Writer, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.log.syslog.Syslog_Writer_static_extension.Writer_static_extension.write(_w, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _connect(_w:Writer):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer>);
        return stdgo._internal.log.syslog.Syslog_Writer_static_extension.Writer_static_extension._connect(_w);
    }
}
