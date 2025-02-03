package stdgo.testing.iotest;
@:structInit @:using(stdgo.testing.iotest.Iotest.T_errWriter_static_extension) abstract T_errWriter(stdgo._internal.testing.iotest.Iotest_T_errWriter.T_errWriter) from stdgo._internal.testing.iotest.Iotest_T_errWriter.T_errWriter to stdgo._internal.testing.iotest.Iotest_T_errWriter.T_errWriter {
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?_err:stdgo.Error) this = new stdgo._internal.testing.iotest.Iotest_T_errWriter.T_errWriter((_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
