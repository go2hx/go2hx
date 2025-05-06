package stdgo._internal.go.build;
@:structInit @:using(stdgo._internal.go.build.Build_t_fileinfo_static_extension.T_fileInfo_static_extension) class T_fileInfo {
    public var _name : stdgo.GoString = "";
    public var _header : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _fset : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet> = (null : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
    public var _parsed : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>);
    public var _parseErr : stdgo.Error = (null : stdgo.Error);
    public var _imports : stdgo.Slice<stdgo._internal.go.build.Build_t_fileimport.T_fileImport> = (null : stdgo.Slice<stdgo._internal.go.build.Build_t_fileimport.T_fileImport>);
    public var _embeds : stdgo.Slice<stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed> = (null : stdgo.Slice<stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed>);
    public var _directives : stdgo.Slice<stdgo._internal.go.build.Build_directive.Directive> = (null : stdgo.Slice<stdgo._internal.go.build.Build_directive.Directive>);
    public function new(?_name:stdgo.GoString, ?_header:stdgo.Slice<stdgo.GoUInt8>, ?_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, ?_parsed:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>, ?_parseErr:stdgo.Error, ?_imports:stdgo.Slice<stdgo._internal.go.build.Build_t_fileimport.T_fileImport>, ?_embeds:stdgo.Slice<stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed>, ?_directives:stdgo.Slice<stdgo._internal.go.build.Build_directive.Directive>) {
        if (_name != null) this._name = _name;
        if (_header != null) this._header = _header;
        if (_fset != null) this._fset = _fset;
        if (_parsed != null) this._parsed = _parsed;
        if (_parseErr != null) this._parseErr = _parseErr;
        if (_imports != null) this._imports = _imports;
        if (_embeds != null) this._embeds = _embeds;
        if (_directives != null) this._directives = _directives;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fileInfo(_name, _header, _fset, _parsed, _parseErr, _imports, _embeds, _directives);
    }
}
