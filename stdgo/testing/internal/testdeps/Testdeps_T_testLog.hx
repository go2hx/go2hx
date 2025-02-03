package stdgo.testing.internal.testdeps;
@:structInit @:using(stdgo.testing.internal.testdeps.Testdeps.T_testLog_static_extension) abstract T_testLog(stdgo._internal.testing.internal.testdeps.Testdeps_T_testLog.T_testLog) from stdgo._internal.testing.internal.testdeps.Testdeps_T_testLog.T_testLog to stdgo._internal.testing.internal.testdeps.Testdeps_T_testLog.T_testLog {
    public var _mu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_Mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _w(get, set) : stdgo._internal.bufio.Bufio_Writer.Writer;
    function get__w():stdgo._internal.bufio.Bufio_Writer.Writer return this._w;
    function set__w(v:stdgo._internal.bufio.Bufio_Writer.Writer):stdgo._internal.bufio.Bufio_Writer.Writer {
        this._w = (v : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>);
        return v;
    }
    public var _set(get, set) : Bool;
    function get__set():Bool return this._set;
    function set__set(v:Bool):Bool {
        this._set = v;
        return v;
    }
    public function new(?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_w:stdgo._internal.bufio.Bufio_Writer.Writer, ?_set:Bool) this = new stdgo._internal.testing.internal.testdeps.Testdeps_T_testLog.T_testLog(_mu, (_w : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>), _set);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
