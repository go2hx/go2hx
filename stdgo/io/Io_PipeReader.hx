package stdgo.io;
@:structInit @:using(stdgo.io.Io.PipeReader_static_extension) abstract PipeReader(stdgo._internal.io.Io_PipeReader.PipeReader) from stdgo._internal.io.Io_PipeReader.PipeReader to stdgo._internal.io.Io_PipeReader.PipeReader {
    public var _p(get, set) : T_pipe;
    function get__p():T_pipe return this._p;
    function set__p(v:T_pipe):T_pipe {
        this._p = (v : stdgo.Ref<stdgo._internal.io.Io_T_pipe.T_pipe>);
        return v;
    }
    public function new(?_p:T_pipe) this = new stdgo._internal.io.Io_PipeReader.PipeReader((_p : stdgo.Ref<stdgo._internal.io.Io_T_pipe.T_pipe>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
