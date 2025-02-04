package stdgo._internal.io;
@:structInit @:using(stdgo._internal.io.Io_pipereader_static_extension.PipeReader_static_extension) class PipeReader {
    public var _p : stdgo.Ref<stdgo._internal.io.Io_t_pipe.T_pipe> = (null : stdgo.Ref<stdgo._internal.io.Io_t_pipe.T_pipe>);
    public function new(?_p:stdgo.Ref<stdgo._internal.io.Io_t_pipe.T_pipe>) {
        if (_p != null) this._p = _p;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PipeReader(_p);
    }
}
