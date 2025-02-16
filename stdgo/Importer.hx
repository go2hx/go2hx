package stdgo;
@:structInit @:using(stdgo.go.importer.Importer.T_gcimports_static_extension) @:dox(hide) abstract T_gcimports(stdgo._internal.go.importer.Importer_t_gcimports.T_gcimports) from stdgo._internal.go.importer.Importer_t_gcimports.T_gcimports to stdgo._internal.go.importer.Importer_t_gcimports.T_gcimports {
    public var _fset(get, set) : stdgo._internal.go.token.Token_fileset.FileSet;
    function get__fset():stdgo._internal.go.token.Token_fileset.FileSet return this._fset;
    function set__fset(v:stdgo._internal.go.token.Token_fileset.FileSet):stdgo._internal.go.token.Token_fileset.FileSet {
        this._fset = (v : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
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
    public var _lookup(get, set) : Lookup;
    function get__lookup():Lookup return this._lookup;
    function set__lookup(v:Lookup):Lookup {
        this._lookup = v;
        return v;
    }
    public function new(?_fset:stdgo._internal.go.token.Token_fileset.FileSet, ?_packages:Map<String, stdgo._internal.go.types.Types_package.Package>, ?_lookup:Lookup) this = new stdgo._internal.go.importer.Importer_t_gcimports.T_gcimports((_fset : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>), {
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>();
        for (key => value in _packages) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        };
        __obj__;
    }, _lookup);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.importer.Importer.T_gccgoimports_static_extension) @:dox(hide) abstract T_gccgoimports(stdgo._internal.go.importer.Importer_t_gccgoimports.T_gccgoimports) from stdgo._internal.go.importer.Importer_t_gccgoimports.T_gccgoimports to stdgo._internal.go.importer.Importer_t_gccgoimports.T_gccgoimports {
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
    public var _importer(get, set) : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_importer.Importer;
    function get__importer():stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_importer.Importer return this._importer;
    function set__importer(v:stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_importer.Importer):stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_importer.Importer {
        this._importer = v;
        return v;
    }
    public var _lookup(get, set) : Lookup;
    function get__lookup():Lookup return this._lookup;
    function set__lookup(v:Lookup):Lookup {
        this._lookup = v;
        return v;
    }
    public function new(?_packages:Map<String, stdgo._internal.go.types.Types_package.Package>, ?_importer:stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_importer.Importer, ?_lookup:Lookup) this = new stdgo._internal.go.importer.Importer_t_gccgoimports.T_gccgoimports({
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>();
        for (key => value in _packages) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        };
        __obj__;
    }, _importer, _lookup);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef Lookup = stdgo._internal.go.importer.Importer_lookup.Lookup;
@:dox(hide) typedef T_gcimportsPointer = stdgo._internal.go.importer.Importer_t_gcimportspointer.T_gcimportsPointer;
@:dox(hide) class T_gcimports_static_extension {
    static public function importFrom(_m:T_gcimports, _path:String, _srcDir:String, _mode:stdgo._internal.go.types.Types_importmode.ImportMode):stdgo.Tuple<stdgo._internal.go.types.Types_package.Package, stdgo.Error> {
        final _m = (_m : stdgo.Ref<stdgo._internal.go.importer.Importer_t_gcimports.T_gcimports>);
        final _path = (_path : stdgo.GoString);
        final _srcDir = (_srcDir : stdgo.GoString);
        return {
            final obj = stdgo._internal.go.importer.Importer_t_gcimports_static_extension.T_gcimports_static_extension.importFrom(_m, _path, _srcDir, _mode);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function import_(_m:T_gcimports, _path:String):stdgo.Tuple<stdgo._internal.go.types.Types_package.Package, stdgo.Error> {
        final _m = (_m : stdgo.Ref<stdgo._internal.go.importer.Importer_t_gcimports.T_gcimports>);
        final _path = (_path : stdgo.GoString);
        return {
            final obj = stdgo._internal.go.importer.Importer_t_gcimports_static_extension.T_gcimports_static_extension.import_(_m, _path);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_gccgoimportsPointer = stdgo._internal.go.importer.Importer_t_gccgoimportspointer.T_gccgoimportsPointer;
@:dox(hide) class T_gccgoimports_static_extension {
    static public function importFrom(_m:T_gccgoimports, _path:String, _srcDir:String, _mode:stdgo._internal.go.types.Types_importmode.ImportMode):stdgo.Tuple<stdgo._internal.go.types.Types_package.Package, stdgo.Error> {
        final _m = (_m : stdgo.Ref<stdgo._internal.go.importer.Importer_t_gccgoimports.T_gccgoimports>);
        final _path = (_path : stdgo.GoString);
        final _srcDir = (_srcDir : stdgo.GoString);
        return {
            final obj = stdgo._internal.go.importer.Importer_t_gccgoimports_static_extension.T_gccgoimports_static_extension.importFrom(_m, _path, _srcDir, _mode);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function import_(_m:T_gccgoimports, _path:String):stdgo.Tuple<stdgo._internal.go.types.Types_package.Package, stdgo.Error> {
        final _m = (_m : stdgo.Ref<stdgo._internal.go.importer.Importer_t_gccgoimports.T_gccgoimports>);
        final _path = (_path : stdgo.GoString);
        return {
            final obj = stdgo._internal.go.importer.Importer_t_gccgoimports_static_extension.T_gccgoimports_static_extension.import_(_m, _path);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef LookupPointer = stdgo._internal.go.importer.Importer_lookuppointer.LookupPointer;
class Lookup_static_extension {

}
/**
    * Package importer provides access to export data importers.
**/
class Importer {
    /**
        * ForCompiler returns an Importer for importing from installed packages
        * for the compilers "gc" and "gccgo", or for importing directly
        * from the source if the compiler argument is "source". In this
        * latter case, importing may fail under circumstances where the
        * exported API is not entirely defined in pure Go source code
        * (if the package API depends on cgo-defined entities, the type
        * checker won't have access to those).
        * 
        * The lookup function is called each time the resulting importer needs
        * to resolve an import path. In this mode the importer can only be
        * invoked with canonical import paths (not relative or absolute ones);
        * it is assumed that the translation to canonical import paths is being
        * done by the client of the importer.
        * 
        * A lookup function must be provided for correct module-aware operation.
        * Deprecated: If lookup is nil, for backwards-compatibility, the importer
        * will attempt to resolve imports in the $GOPATH workspace.
    **/
    static public inline function forCompiler(_fset:stdgo._internal.go.token.Token_fileset.FileSet, _compiler:String, _lookup:Lookup):stdgo._internal.go.types.Types_importer.Importer {
        final _fset = (_fset : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
        final _compiler = (_compiler : stdgo.GoString);
        return stdgo._internal.go.importer.Importer_forcompiler.forCompiler(_fset, _compiler, _lookup);
    }
    /**
        * For calls ForCompiler with a new FileSet.
        * 
        * Deprecated: Use ForCompiler, which populates a FileSet
        * with the positions of objects created by the importer.
    **/
    static public inline function for_(_compiler:String, _lookup:Lookup):stdgo._internal.go.types.Types_importer.Importer {
        final _compiler = (_compiler : stdgo.GoString);
        return stdgo._internal.go.importer.Importer_for_.for_(_compiler, _lookup);
    }
    /**
        * Default returns an Importer for the compiler that built the running binary.
        * If available, the result implements types.ImporterFrom.
    **/
    static public inline function default_():stdgo._internal.go.types.Types_importer.Importer {
        return stdgo._internal.go.importer.Importer_default_.default_();
    }
    static public inline function testMain(_m:stdgo._internal.testing.Testing_m.M):Void {
        final _m = (_m : stdgo.Ref<stdgo._internal.testing.Testing_m.M>);
        stdgo._internal.go.importer.Importer_testmain.testMain(_m);
    }
    static public inline function testForCompiler(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.importer.Importer_testforcompiler.testForCompiler(_t);
    }
}
