package stdgo.srcimporter;
@:structInit @:using(stdgo.go.internal.srcimporter.Srcimporter.Importer_static_extension) abstract Importer(stdgo._internal.go.internal.srcimporter.Srcimporter_importer.Importer) from stdgo._internal.go.internal.srcimporter.Srcimporter_importer.Importer to stdgo._internal.go.internal.srcimporter.Srcimporter_importer.Importer {
    public var _ctxt(get, set) : stdgo._internal.go.build.Build_context.Context;
    function get__ctxt():stdgo._internal.go.build.Build_context.Context return this._ctxt;
    function set__ctxt(v:stdgo._internal.go.build.Build_context.Context):stdgo._internal.go.build.Build_context.Context {
        this._ctxt = (v : stdgo.Ref<stdgo._internal.go.build.Build_context.Context>);
        return v;
    }
    public var _fset(get, set) : stdgo._internal.go.token.Token_fileset.FileSet;
    function get__fset():stdgo._internal.go.token.Token_fileset.FileSet return this._fset;
    function set__fset(v:stdgo._internal.go.token.Token_fileset.FileSet):stdgo._internal.go.token.Token_fileset.FileSet {
        this._fset = (v : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
        return v;
    }
    public var _sizes(get, set) : stdgo._internal.go.types.Types_sizes.Sizes;
    function get__sizes():stdgo._internal.go.types.Types_sizes.Sizes return this._sizes;
    function set__sizes(v:stdgo._internal.go.types.Types_sizes.Sizes):stdgo._internal.go.types.Types_sizes.Sizes {
        this._sizes = v;
        return v;
    }
    public var _packages(get, set) : Map<String, stdgo._internal.go.types.Types_package.Package>;
    function get__packages():Map<String, stdgo._internal.go.types.Types_package.Package> return {
        final __obj__:Map<String, stdgo._internal.go.types.Types_package.Package> = [];
        for (key => value in this._packages) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__packages(v:Map<String, stdgo._internal.go.types.Types_package.Package>):Map<String, stdgo._internal.go.types.Types_package.Package> {
        this._packages = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
            };
            __obj__;
        };
        return v;
    }
    public function new(?_ctxt:stdgo._internal.go.build.Build_context.Context, ?_fset:stdgo._internal.go.token.Token_fileset.FileSet, ?_sizes:stdgo._internal.go.types.Types_sizes.Sizes, ?_packages:Map<String, stdgo._internal.go.types.Types_package.Package>) this = new stdgo._internal.go.internal.srcimporter.Srcimporter_importer.Importer((_ctxt : stdgo.Ref<stdgo._internal.go.build.Build_context.Context>), (_fset : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>), _sizes, {
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>();
        for (key => value in _packages) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        };
        __obj__;
    });
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef ImporterPointer = stdgo._internal.go.internal.srcimporter.Srcimporter_importerpointer.ImporterPointer;
class Importer_static_extension {
    static public function _joinPath(_p:Importer, _elem:haxe.Rest<String>):String {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.srcimporter.Srcimporter_importer.Importer>);
        return stdgo._internal.go.internal.srcimporter.Srcimporter_importer_static_extension.Importer_static_extension._joinPath(_p, ...[for (i in _elem) i]);
    }
    static public function _isAbsPath(_p:Importer, _path:String):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.srcimporter.Srcimporter_importer.Importer>);
        final _path = (_path : stdgo.GoString);
        return stdgo._internal.go.internal.srcimporter.Srcimporter_importer_static_extension.Importer_static_extension._isAbsPath(_p, _path);
    }
    static public function _absPath(_p:Importer, _path:String):stdgo.Tuple<String, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.srcimporter.Srcimporter_importer.Importer>);
        final _path = (_path : stdgo.GoString);
        return {
            final obj = stdgo._internal.go.internal.srcimporter.Srcimporter_importer_static_extension.Importer_static_extension._absPath(_p, _path);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _cgo(_p:Importer, _bp:stdgo._internal.go.build.Build_package.Package):stdgo.Tuple<stdgo._internal.go.ast.Ast_file.File, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.srcimporter.Srcimporter_importer.Importer>);
        final _bp = (_bp : stdgo.Ref<stdgo._internal.go.build.Build_package.Package>);
        return {
            final obj = stdgo._internal.go.internal.srcimporter.Srcimporter_importer_static_extension.Importer_static_extension._cgo(_p, _bp);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _parseFiles(_p:Importer, _dir:String, _filenames:Array<String>):stdgo.Tuple<Array<stdgo._internal.go.ast.Ast_file.File>, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.srcimporter.Srcimporter_importer.Importer>);
        final _dir = (_dir : stdgo.GoString);
        final _filenames = ([for (i in _filenames) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return {
            final obj = stdgo._internal.go.internal.srcimporter.Srcimporter_importer_static_extension.Importer_static_extension._parseFiles(_p, _dir, _filenames);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function importFrom(_p:Importer, _path:String, _srcDir:String, _mode:stdgo._internal.go.types.Types_importmode.ImportMode):stdgo.Tuple<stdgo._internal.go.types.Types_package.Package, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.srcimporter.Srcimporter_importer.Importer>);
        final _path = (_path : stdgo.GoString);
        final _srcDir = (_srcDir : stdgo.GoString);
        return {
            final obj = stdgo._internal.go.internal.srcimporter.Srcimporter_importer_static_extension.Importer_static_extension.importFrom(_p, _path, _srcDir, _mode);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function import_(_p:Importer, _path:String):stdgo.Tuple<stdgo._internal.go.types.Types_package.Package, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.srcimporter.Srcimporter_importer.Importer>);
        final _path = (_path : stdgo.GoString);
        return {
            final obj = stdgo._internal.go.internal.srcimporter.Srcimporter_importer_static_extension.Importer_static_extension.import_(_p, _path);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
/**
    * Package srcimporter implements importing directly
    * from source files rather than installed packages.
**/
class Srcimporter {
    /**
        * New returns a new Importer for the given context, file set, and map
        * of packages. The context is used to resolve import paths to package paths,
        * and identifying the files belonging to the package. If the context provides
        * non-nil file system functions, they are used instead of the regular package
        * os functions. The file set is used to track position information of package
        * files; and imported packages are added to the packages map.
    **/
    static public inline function new_(_ctxt:stdgo._internal.go.build.Build_context.Context, _fset:stdgo._internal.go.token.Token_fileset.FileSet, _packages:Map<String, stdgo._internal.go.types.Types_package.Package>):Importer {
        final _ctxt = (_ctxt : stdgo.Ref<stdgo._internal.go.build.Build_context.Context>);
        final _fset = (_fset : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
        final _packages = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>();
            for (key => value in _packages) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
            };
            __obj__;
        };
        return stdgo._internal.go.internal.srcimporter.Srcimporter_new_.new_(_ctxt, _fset, _packages);
    }
}
