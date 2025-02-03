package stdgo.testing.iotest;
@:structInit @:using(stdgo.testing.iotest.Iotest.T_writeLogger_static_extension) abstract T_writeLogger(stdgo._internal.testing.iotest.Iotest_T_writeLogger.T_writeLogger) from stdgo._internal.testing.iotest.Iotest_T_writeLogger.T_writeLogger to stdgo._internal.testing.iotest.Iotest_T_writeLogger.T_writeLogger {
    public var _prefix(get, set) : String;
    function get__prefix():String return this._prefix;
    function set__prefix(v:String):String {
        this._prefix = (v : stdgo.GoString);
        return v;
    }
    public var _w(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get__w():stdgo._internal.io.Io_Writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this._w = v;
        return v;
    }
    public function new(?_prefix:String, ?_w:stdgo._internal.io.Io_Writer.Writer) this = new stdgo._internal.testing.iotest.Iotest_T_writeLogger.T_writeLogger((_prefix : stdgo.GoString), _w);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
