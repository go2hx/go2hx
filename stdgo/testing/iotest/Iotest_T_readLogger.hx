package stdgo.testing.iotest;
@:structInit @:using(stdgo.testing.iotest.Iotest.T_readLogger_static_extension) abstract T_readLogger(stdgo._internal.testing.iotest.Iotest_T_readLogger.T_readLogger) from stdgo._internal.testing.iotest.Iotest_T_readLogger.T_readLogger to stdgo._internal.testing.iotest.Iotest_T_readLogger.T_readLogger {
    public var _prefix(get, set) : String;
    function get__prefix():String return this._prefix;
    function set__prefix(v:String):String {
        this._prefix = (v : stdgo.GoString);
        return v;
    }
    public var _r(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get__r():stdgo._internal.io.Io_Reader.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        this._r = v;
        return v;
    }
    public function new(?_prefix:String, ?_r:stdgo._internal.io.Io_Reader.Reader) this = new stdgo._internal.testing.iotest.Iotest_T_readLogger.T_readLogger((_prefix : stdgo.GoString), _r);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
