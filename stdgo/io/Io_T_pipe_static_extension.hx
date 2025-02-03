package stdgo.io;
class T_pipe_static_extension {
    static public function _writeCloseError(_p:T_pipe):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.io.Io_T_pipe.T_pipe>);
        return stdgo._internal.io.Io_T_pipe_static_extension.T_pipe_static_extension._writeCloseError(_p);
    }
    static public function _readCloseError(_p:T_pipe):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.io.Io_T_pipe.T_pipe>);
        return stdgo._internal.io.Io_T_pipe_static_extension.T_pipe_static_extension._readCloseError(_p);
    }
    static public function _closeWrite(_p:T_pipe, _err:stdgo.Error):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.io.Io_T_pipe.T_pipe>);
        final _err = (_err : stdgo.Error);
        return stdgo._internal.io.Io_T_pipe_static_extension.T_pipe_static_extension._closeWrite(_p, _err);
    }
    static public function _write(_p:T_pipe, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.io.Io_T_pipe.T_pipe>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_T_pipe_static_extension.T_pipe_static_extension._write(_p, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _closeRead(_p:T_pipe, _err:stdgo.Error):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.io.Io_T_pipe.T_pipe>);
        final _err = (_err : stdgo.Error);
        return stdgo._internal.io.Io_T_pipe_static_extension.T_pipe_static_extension._closeRead(_p, _err);
    }
    static public function _read(_p:T_pipe, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.io.Io_T_pipe.T_pipe>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_T_pipe_static_extension.T_pipe_static_extension._read(_p, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
