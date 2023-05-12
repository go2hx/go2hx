package stdgo.go.importer;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
/**
    // Package importer provides access to export data importers.
**/
private var __go2hxdoc__package : Bool;
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.go.importer.Importer.T_gcimports_static_extension) class T_gcimports {
    public var _fset : Ref<stdgo.go.token.Token.FileSet> = (null : Ref<stdgo.go.token.Token.FileSet>);
    public var _packages : GoMap<GoString, Ref<stdgo.go.types.Types.Package>> = (null : GoMap<GoString, Ref<stdgo.go.types.Types.Package>>);
    public var _lookup : stdgo.go.importer.Importer.Lookup = (null : stdgo.go.importer.Importer.Lookup);
    public function new(?_fset:Ref<stdgo.go.token.Token.FileSet>, ?_packages:GoMap<GoString, Ref<stdgo.go.types.Types.Package>>, ?_lookup:stdgo.go.importer.Importer.Lookup) {
        if (_fset != null) this._fset = _fset;
        if (_packages != null) this._packages = _packages;
        if (_lookup != null) this._lookup = _lookup;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_gcimports(_fset, _packages, _lookup);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.go.importer.Importer.T_gccgoimports_static_extension) class T_gccgoimports {
    public var _packages : GoMap<GoString, Ref<stdgo.go.types.Types.Package>> = (null : GoMap<GoString, Ref<stdgo.go.types.Types.Package>>);
    public var _importer : stdgo.go.internal.gccgoimporter.Gccgoimporter.Importer = (null : stdgo.go.internal.gccgoimporter.Gccgoimporter.Importer);
    public var _lookup : stdgo.go.importer.Importer.Lookup = (null : stdgo.go.importer.Importer.Lookup);
    public function new(?_packages:GoMap<GoString, Ref<stdgo.go.types.Types.Package>>, ?_importer:stdgo.go.internal.gccgoimporter.Gccgoimporter.Importer, ?_lookup:stdgo.go.importer.Importer.Lookup) {
        if (_packages != null) this._packages = _packages;
        if (_importer != null) this._importer = _importer;
        if (_lookup != null) this._lookup = _lookup;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_gccgoimports(_packages, _importer, _lookup);
    }
}
/**
    // A Lookup function returns a reader to access package data for
    // a given import path, or an error if no matching package is found.
**/
@:named typedef Lookup = GoString -> { var _0 : stdgo.io.Io.ReadCloser; var _1 : Error; };
/**
    // ForCompiler returns an Importer for importing from installed packages
    // for the compilers "gc" and "gccgo", or for importing directly
    // from the source if the compiler argument is "source". In this
    // latter case, importing may fail under circumstances where the
    // exported API is not entirely defined in pure Go source code
    // (if the package API depends on cgo-defined entities, the type
    // checker won't have access to those).
    //
    // The lookup function is called each time the resulting importer needs
    // to resolve an import path. In this mode the importer can only be
    // invoked with canonical import paths (not relative or absolute ones);
    // it is assumed that the translation to canonical import paths is being
    // done by the client of the importer.
    //
    // A lookup function must be provided for correct module-aware operation.
    // Deprecated: If lookup is nil, for backwards-compatibility, the importer
    // will attempt to resolve imports in the $GOPATH workspace.
**/
function forCompiler(_fset:Ref<stdgo.go.token.Token.FileSet>, _compiler:GoString, _lookup:Lookup):stdgo.go.types.Types.Importer {
        {
            final __value__ = _compiler;
            if (__value__ == (("gc" : GoString))) {
                return Go.asInterface((Go.setRef(({ _fset : _fset, _packages : ({
                    final x = new stdgo.GoMap.GoStringMap<Ref<stdgo.go.types.Types.Package>>();
                    x.__defaultValue__ = () -> (null : Ref<stdgo.go.types.Types.Package>);
                    @:mergeBlock {};
                    x;
                } : GoMap<GoString, Ref<stdgo.go.types.Types.Package>>), _lookup : _lookup } : T_gcimports)) : Ref<stdgo.go.importer.Importer.T_gcimports>));
            } else if (__value__ == (("gccgo" : GoString))) {
                var _inst:stdgo.go.internal.gccgoimporter.Gccgoimporter.GccgoInstallation = ({} : stdgo.go.internal.gccgoimporter.Gccgoimporter.GccgoInstallation);
                {
                    var _err:Error = _inst.initFromDriver(("gccgo" : GoString));
                    if (_err != null) {
                        return (null : stdgo.go.types.Types.Importer);
                    };
                };
                return Go.asInterface((Go.setRef(({ _packages : ({
                    final x = new stdgo.GoMap.GoStringMap<Ref<stdgo.go.types.Types.Package>>();
                    x.__defaultValue__ = () -> (null : Ref<stdgo.go.types.Types.Package>);
                    @:mergeBlock {};
                    x;
                } : GoMap<GoString, Ref<stdgo.go.types.Types.Package>>), _importer : _inst.getImporter((null : Slice<GoString>), (null : GoMap<Ref<stdgo.go.types.Types.Package>, stdgo.go.internal.gccgoimporter.Gccgoimporter.InitData>)), _lookup : _lookup } : T_gccgoimports)) : Ref<stdgo.go.importer.Importer.T_gccgoimports>));
            } else if (__value__ == (("source" : GoString))) {
                if (_lookup != null) {
                    throw Go.toInterface(("source importer for custom import path lookup not supported (issue #13847)." : GoString));
                };
                return Go.asInterface(go.internal.srcimporter.Srcimporter.new_((Go.setRef(stdgo.go.build.Build.default_) : Ref<stdgo.go.build.Build.Context>), _fset, ({
                    final x = new stdgo.GoMap.GoStringMap<Ref<stdgo.go.types.Types.Package>>();
                    x.__defaultValue__ = () -> (null : Ref<stdgo.go.types.Types.Package>);
                    @:mergeBlock {};
                    x;
                } : GoMap<GoString, Ref<stdgo.go.types.Types.Package>>)));
            };
        };
        return (null : stdgo.go.types.Types.Importer);
    }
/**
    // For calls ForCompiler with a new FileSet.
    //
    // Deprecated: Use ForCompiler, which populates a FileSet
    // with the positions of objects created by the importer.
**/
function for_(_compiler:GoString, _lookup:Lookup):stdgo.go.types.Types.Importer {
        return forCompiler(stdgo.go.token.Token.newFileSet(), _compiler, _lookup);
    }
/**
    // Default returns an Importer for the compiler that built the running binary.
    // If available, the result implements types.ImporterFrom.
**/
function default_():stdgo.go.types.Types.Importer {
        return for_(("gc" : GoString), null);
    }
function testMain(_m:Ref<stdgo.testing.Testing.M>):Void {
        stdgo.go.build.Build.default_.goroot = stdgo.internal.testenv.Testenv.goroot((null : stdgo.testing.Testing.TB));
        Sys.exit(_m.run());
    }
function testForCompiler(_t:Ref<stdgo.testing.Testing.T>):Void {
        stdgo.internal.testenv.Testenv.mustHaveGoBuild(Go.asInterface(_t));
        {};
        var __tmp__ = stdgo.internal.testenv.Testenv.command(Go.asInterface(_t), stdgo.internal.testenv.Testenv.goToolPath(Go.asInterface(_t)), ("list" : GoString), ("-export" : GoString), ("-f={{context.Compiler}}:{{.Export}}" : GoString), ("math/big" : GoString)).combinedOutput(), _out:Slice<GoUInt8> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("go list %s: %v\n%s" : GoString), Go.toInterface(("math/big" : GoString)), Go.toInterface(_err), Go.toInterface(_out));
        };
        var _export:GoString = stdgo.strings.Strings.trimSpace((_out : GoString));
        var __tmp__ = stdgo.strings.Strings.cut(_export, (":" : GoString)), _compiler:GoString = __tmp__._0, _target:GoString = __tmp__._1, __0:Bool = __tmp__._2;
        if (_compiler == (("gccgo" : GoString))) {
            _t.skip(Go.toInterface(("golang.org/issue/22500" : GoString)));
        };
        var _fset = stdgo.go.token.Token.newFileSet();
        _t.run(("LookupDefault" : GoString), function(_t:Ref<stdgo.testing.Testing.T>):Void {
            var _imp:stdgo.go.types.Types.Importer = forCompiler(_fset, _compiler, null);
            var __tmp__ = _imp.import_(("math/big" : GoString)), _pkg:Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            if (_pkg.path() != (("math/big" : GoString))) {
                _t.fatalf(("Path() = %q, want %q" : GoString), Go.toInterface(_pkg.path()), Go.toInterface(("math/big" : GoString)));
            };
            var _mathBigInt:stdgo.go.types.Types.Object = _pkg.scope().lookup(("Int" : GoString));
            var _posn:stdgo.go.token.Token.Position = _fset.position(_mathBigInt.pos())?.__copy__();
            var _filename:GoString = stdgo.strings.Strings.replace(_posn.filename, ("$GOROOT" : GoString), stdgo.internal.testenv.Testenv.goroot(Go.asInterface(_t)), (1 : GoInt));
            var __tmp__ = stdgo.os.Os.readFile(_filename), _data:Slice<GoUInt8> = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("can\'t read file containing declaration of math/big.Int: %v" : GoString), Go.toInterface(_err));
            };
            var _lines = stdgo.strings.Strings.split((_data : GoString), ("\n" : GoString));
            if ((_posn.line > _lines.length) || !stdgo.strings.Strings.hasPrefix(_lines[(_posn.line - (1 : GoInt) : GoInt)], ("type Int" : GoString))) {
                _t.fatalf(("Object %v position %s does not contain its declaration" : GoString), Go.toInterface(_mathBigInt), Go.toInterface(Go.asInterface(_posn)));
            };
        });
        _t.run(("LookupCustom" : GoString), function(_t:Ref<stdgo.testing.Testing.T>):Void {
            if (stdgo.internal.buildcfg.Buildcfg.experiment.flags.unified) {
                _t.skip(Go.toInterface(("not supported by GOEXPERIMENT=unified; see go.dev/cl/406319" : GoString)));
            };
            var _lookup:GoString -> { var _0 : stdgo.io.Io.ReadCloser; var _1 : Error; } = function(_path:GoString):{ var _0 : stdgo.io.Io.ReadCloser; var _1 : Error; } {
                if (_path != (("math/bigger" : GoString))) {
                    _t.fatalf(("lookup called with unexpected path %q" : GoString), Go.toInterface(_path));
                };
                var __tmp__ = stdgo.os.Os.open(_target), _f:Ref<stdgo.os.Os.File> = __tmp__._0, _err:Error = __tmp__._1;
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
                return { _0 : Go.asInterface(_f), _1 : (null : Error) };
            };
            var _imp:stdgo.go.types.Types.Importer = forCompiler(_fset, _compiler, _lookup);
            var __tmp__ = _imp.import_(("math/bigger" : GoString)), _pkg:Ref<stdgo.go.types.Types.Package> = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            if (_pkg.path() != (("math/bigger" : GoString))) {
                _t.fatalf(("Path() = %q, want %q" : GoString), Go.toInterface(_pkg.path()), Go.toInterface(("math/bigger" : GoString)));
            };
        });
    }
class T_gcimports_asInterface {
    @:keep
    public dynamic function importFrom(_path:GoString, _srcDir:GoString, _mode:stdgo.go.types.Types.ImportMode):{ var _0 : Ref<stdgo.go.types.Types.Package>; var _1 : Error; } return __self__.value.importFrom(_path, _srcDir, _mode);
    @:keep
    public dynamic function import_(_path:GoString):{ var _0 : Ref<stdgo.go.types.Types.Package>; var _1 : Error; } return __self__.value.import_(_path);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_gcimports>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.importer.Importer.T_gcimports_asInterface) class T_gcimports_static_extension {
    @:keep
    static public function importFrom( _m:Ref<T_gcimports>, _path:GoString, _srcDir:GoString, _mode:stdgo.go.types.Types.ImportMode):{ var _0 : Ref<stdgo.go.types.Types.Package>; var _1 : Error; } {
        if (_mode != ((0 : stdgo.go.types.Types.ImportMode))) {
            throw Go.toInterface(("mode must be 0" : GoString));
        };
        return stdgo.go.internal.gcimporter.Gcimporter.import_(_m._fset, _m._packages, _path, _srcDir, _m._lookup);
    }
    @:keep
    static public function import_( _m:Ref<T_gcimports>, _path:GoString):{ var _0 : Ref<stdgo.go.types.Types.Package>; var _1 : Error; } {
        return _m.importFrom(_path, Go.str(), (0 : stdgo.go.types.Types.ImportMode));
    }
}
class T_gccgoimports_asInterface {
    @:keep
    public dynamic function importFrom(_path:GoString, _srcDir:GoString, _mode:stdgo.go.types.Types.ImportMode):{ var _0 : Ref<stdgo.go.types.Types.Package>; var _1 : Error; } return __self__.value.importFrom(_path, _srcDir, _mode);
    @:keep
    public dynamic function import_(_path:GoString):{ var _0 : Ref<stdgo.go.types.Types.Package>; var _1 : Error; } return __self__.value.import_(_path);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_gccgoimports>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.importer.Importer.T_gccgoimports_asInterface) class T_gccgoimports_static_extension {
    @:keep
    static public function importFrom( _m:Ref<T_gccgoimports>, _path:GoString, _srcDir:GoString, _mode:stdgo.go.types.Types.ImportMode):{ var _0 : Ref<stdgo.go.types.Types.Package>; var _1 : Error; } {
        if (_mode != ((0 : stdgo.go.types.Types.ImportMode))) {
            throw Go.toInterface(("mode must be 0" : GoString));
        };
        return _m._importer(_m._packages, _path, _srcDir, _m._lookup);
    }
    @:keep
    static public function import_( _m:Ref<T_gccgoimports>, _path:GoString):{ var _0 : Ref<stdgo.go.types.Types.Package>; var _1 : Error; } {
        return _m.importFrom(_path, Go.str(), (0 : stdgo.go.types.Types.ImportMode));
    }
}
