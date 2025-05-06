package stdgo._internal.go.internal.srcimporter;
@:structInit @:using(stdgo._internal.go.internal.srcimporter.Srcimporter_importer_static_extension.Importer_static_extension) class Importer {
    public var _ctxt : stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = (null : stdgo.Ref<stdgo._internal.go.build.Build_context.Context>);
    public var _fset : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet> = (null : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
    public var _sizes : stdgo._internal.go.types.Types_sizes.Sizes = (null : stdgo._internal.go.types.Types_sizes.Sizes);
    public var _packages : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>);
    public function new(?_ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, ?_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, ?_sizes:stdgo._internal.go.types.Types_sizes.Sizes, ?_packages:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>) {
        if (_ctxt != null) this._ctxt = _ctxt;
        if (_fset != null) this._fset = _fset;
        if (_sizes != null) this._sizes = _sizes;
        if (_packages != null) this._packages = _packages;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Importer(_ctxt, _fset, _sizes, _packages);
    }
}
