package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_t_localerror_static_extension.T_localError_static_extension) class T_localError {
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_err:stdgo.Error) {
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_localError(_err);
    }
}
