package stdgo._internal.archive.tar;
@:structInit @:using(stdgo._internal.archive.tar.Tar_t_parser_static_extension.T_parser_static_extension) class T_parser {
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_err:stdgo.Error) {
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_parser(_err);
    }
}
