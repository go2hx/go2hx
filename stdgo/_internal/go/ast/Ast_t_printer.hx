package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_t_printer_static_extension.T_printer_static_extension) class T_printer {
    public var _output : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public var _fset : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet> = (null : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
    public var _filter : stdgo._internal.go.ast.Ast_fieldfilter.FieldFilter = (null : stdgo._internal.go.ast.Ast_fieldfilter.FieldFilter);
    public var _ptrmap : stdgo.GoMap<stdgo.AnyInterface, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.AnyInterface, stdgo.GoInt>);
    public var _indent : stdgo.GoInt = 0;
    public var _last : stdgo.GoUInt8 = 0;
    public var _line : stdgo.GoInt = 0;
    public function new(?_output:stdgo._internal.io.Io_writer.Writer, ?_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, ?_filter:stdgo._internal.go.ast.Ast_fieldfilter.FieldFilter, ?_ptrmap:stdgo.GoMap<stdgo.AnyInterface, stdgo.GoInt>, ?_indent:stdgo.GoInt, ?_last:stdgo.GoUInt8, ?_line:stdgo.GoInt) {
        if (_output != null) this._output = _output;
        if (_fset != null) this._fset = _fset;
        if (_filter != null) this._filter = _filter;
        if (_ptrmap != null) this._ptrmap = _ptrmap;
        if (_indent != null) this._indent = _indent;
        if (_last != null) this._last = _last;
        if (_line != null) this._line = _line;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_printer(_output, _fset, _filter, _ptrmap, _indent, _last, _line);
    }
}
