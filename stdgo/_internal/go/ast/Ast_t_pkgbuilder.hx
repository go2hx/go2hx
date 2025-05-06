package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_t_pkgbuilder_static_extension.T_pkgBuilder_static_extension) class T_pkgBuilder {
    public var _fset : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet> = (null : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
    public var _errors : stdgo._internal.go.scanner.Scanner_errorlist.ErrorList = (new stdgo._internal.go.scanner.Scanner_errorlist.ErrorList(0, 0) : stdgo._internal.go.scanner.Scanner_errorlist.ErrorList);
    public function new(?_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, ?_errors:stdgo._internal.go.scanner.Scanner_errorlist.ErrorList) {
        if (_fset != null) this._fset = _fset;
        if (_errors != null) this._errors = _errors;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_pkgBuilder(_fset, _errors);
    }
}
