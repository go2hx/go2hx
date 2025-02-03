package stdgo.text.tabwriter;
@:structInit @:using(stdgo.text.tabwriter.Tabwriter.T_osError_static_extension) abstract T_osError(stdgo._internal.text.tabwriter.Tabwriter_T_osError.T_osError) from stdgo._internal.text.tabwriter.Tabwriter_T_osError.T_osError to stdgo._internal.text.tabwriter.Tabwriter_T_osError.T_osError {
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?_err:stdgo.Error) this = new stdgo._internal.text.tabwriter.Tabwriter_T_osError.T_osError((_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
