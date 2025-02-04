package stdgo._internal.testing.internal.testdeps;
@:structInit @:using(stdgo._internal.testing.internal.testdeps.Testdeps_t_testlog_static_extension.T_testLog_static_extension) class T_testLog {
    public var _mu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _w : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>);
    public var _set : Bool = false;
    public function new(?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_w:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>, ?_set:Bool) {
        if (_mu != null) this._mu = _mu;
        if (_w != null) this._w = _w;
        if (_set != null) this._set = _set;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testLog(_mu, _w, _set);
    }
}
