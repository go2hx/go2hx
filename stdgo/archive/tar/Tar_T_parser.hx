package stdgo.archive.tar;
@:structInit @:using(stdgo.archive.tar.Tar.T_parser_static_extension) abstract T_parser(stdgo._internal.archive.tar.Tar_T_parser.T_parser) from stdgo._internal.archive.tar.Tar_T_parser.T_parser to stdgo._internal.archive.tar.Tar_T_parser.T_parser {
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?_err:stdgo.Error) this = new stdgo._internal.archive.tar.Tar_T_parser.T_parser((_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
