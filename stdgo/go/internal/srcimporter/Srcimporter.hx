package stdgo.go.internal.srcimporter;
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
    // Package srcimporter implements importing directly
    // from source files rather than installed packages.
**/
private var __go2hxdoc__package : Bool;
/**
    // Importing is a sentinel taking the place in Importer.packages
    // for a package that is in the process of being imported.
    
    
**/
private var _importing : stdgo.go.types.Types.Package = ({} : stdgo.go.types.Types.Package);
/**
    // An Importer provides the context for importing packages from source code.
    
    
**/
@:structInit @:using(go.internal.srcimporter.Srcimporter.Importer_static_extension) class Importer {
    public var _ctxt : Ref<stdgo.go.build.Build.Context> = (null : Ref<stdgo.go.build.Build.Context>);
    public var _fset : Ref<stdgo.go.token.Token.FileSet> = (null : Ref<stdgo.go.token.Token.FileSet>);
    public var _sizes : stdgo.go.types.Types.Sizes = (null : stdgo.go.types.Types.Sizes);
    public var _packages : GoMap<GoString, Ref<stdgo.go.types.Types.Package>> = (null : GoMap<GoString, Ref<stdgo.go.types.Types.Package>>);
    public function new(?_ctxt:Ref<stdgo.go.build.Build.Context>, ?_fset:Ref<stdgo.go.token.Token.FileSet>, ?_sizes:stdgo.go.types.Types.Sizes, ?_packages:GoMap<GoString, Ref<stdgo.go.types.Types.Package>>) {
        if (_ctxt != null) this._ctxt = _ctxt;
        if (_fset != null) this._fset = _fset;
        if (_sizes != null) this._sizes = _sizes;
        if (_packages != null) this._packages = _packages;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new Importer(_ctxt, _fset, _sizes, _packages);
    }
}
/**
    // New returns a new Importer for the given context, file set, and map
    // of packages. The context is used to resolve import paths to package paths,
    // and identifying the files belonging to the package. If the context provides
    // non-nil file system functions, they are used instead of the regular package
    // os functions. The file set is used to track position information of package
    // files; and imported packages are added to the packages map.
**/
function new_(_ctxt:Ref<stdgo.go.build.Build.Context>, _fset:Ref<stdgo.go.token.Token.FileSet>, _packages:GoMap<GoString, Ref<stdgo.go.types.Types.Package>>):Ref<Importer> {
        return (({ _ctxt : _ctxt, _fset : _fset, _sizes : stdgo.go.types.Types.sizesFor(_ctxt.compiler, _ctxt.goarch), _packages : _packages } : Importer) : Ref<Importer>);
    }
/**
    //go:linkname setUsesCgo go/types.srcimporter_setUsesCgo
**/
private function _setUsesCgo(_conf:Ref<stdgo.go.types.Types.Config>):Void {}
class Importer_asInterface {
    @:keep
    public function _joinPath(_elem:haxe.Rest<GoString>):GoString return __self__.value._joinPath(..._elem);
    @:keep
    public function _isAbsPath(_path:GoString):Bool return __self__.value._isAbsPath(_path);
    @:keep
    public function _absPath(_path:GoString):{ var _0 : GoString; var _1 : Error; } return __self__.value._absPath(_path);
    @:keep
    public function _cgo(_bp:Ref<stdgo.go.build.Build.Package>):{ var _0 : Ref<stdgo.go.ast.Ast.File>; var _1 : Error; } return __self__.value._cgo(_bp);
    @:keep
    public function _parseFiles(_dir:GoString, _filenames:Slice<GoString>):{ var _0 : Slice<Ref<stdgo.go.ast.Ast.File>>; var _1 : Error; } return __self__.value._parseFiles(_dir, _filenames);
    /**
        // ImportFrom imports the package with the given import path resolved from the given srcDir,
        // adds the new package to the set of packages maintained by the importer, and returns the
        // package. Package path resolution and file system operations are controlled by the context
        // maintained with the importer. The import mode must be zero but is otherwise ignored.
        // Packages that are not comprised entirely of pure Go files may fail to import because the
        // type checker may not be able to determine all exported entities (e.g. due to cgo dependencies).
    **/
    @:keep
    public function importFrom(_path:GoString, _srcDir:GoString, _mode:stdgo.go.types.Types.ImportMode):{ var _0 : Ref<stdgo.go.types.Types.Package>; var _1 : Error; } return __self__.value.importFrom(_path, _srcDir, _mode);
    /**
        // Import(path) is a shortcut for ImportFrom(path, ".", 0).
    **/
    @:keep
    public function import_(_path:GoString):{ var _0 : Ref<stdgo.go.types.Types.Package>; var _1 : Error; } return __self__.value.import_(_path);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<Importer>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(go.internal.srcimporter.Srcimporter.Importer_asInterface) class Importer_static_extension {
    @:keep
    static public function _joinPath( _p:Ref<Importer>, _elem:haxe.Rest<GoString>):GoString {
        var _elem = new Slice<GoString>(0, 0, ..._elem);
        {
            var _f = _p._ctxt.joinPath;
            if (_f != null) {
                return _f(..._elem.__toArray__());
            };
        };
        return stdgo.path.filepath.Filepath.join(..._elem.__toArray__());
    }
    @:keep
    static public function _isAbsPath( _p:Ref<Importer>, _path:GoString):Bool {
        {
            var _f:GoString -> Bool = _p._ctxt.isAbsPath;
            if (_f != null) {
                return _f(_path);
            };
        };
        return stdgo.path.filepath.Filepath.isAbs(_path);
    }
    @:keep
    static public function _absPath( _p:Ref<Importer>, _path:GoString):{ var _0 : GoString; var _1 : Error; } {
        return stdgo.path.filepath.Filepath.abs(_path);
    }
    @:keep
    static public function _cgo( _p:Ref<Importer>, _bp:Ref<stdgo.go.build.Build.Package>):{ var _0 : Ref<stdgo.go.ast.Ast.File>; var _1 : Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var __tmp__ = stdgo.os.Os.mkdirTemp(Go.str(), ("srcimporter" : GoString)), _tmpdir:GoString = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        {
            var _a0 = _tmpdir;
            __deferstack__.unshift(() -> stdgo.os.Os.removeAll(_a0));
        };
        try {
            var _goCmd:GoString = ("go" : GoString);
            if (_p._ctxt.goroot != (Go.str())) {
                _goCmd = stdgo.path.filepath.Filepath.join(_p._ctxt.goroot, ("bin" : GoString), ("go" : GoString));
            };
            var _args = (new Slice<GoString>(0, 0, _goCmd, ("tool" : GoString), ("cgo" : GoString), ("-objdir" : GoString), _tmpdir) : Slice<GoString>);
            if (_bp.goroot) {
                if (_bp.importPath == (("runtime/cgo" : GoString))) {
                    _args = _args.__appendref__(("-import_runtime_cgo=false" : GoString), ("-import_syscall=false" : GoString));
                } else if (_bp.importPath == (("runtime/race" : GoString))) {
                    _args = _args.__appendref__(("-import_syscall=false" : GoString));
                };
            };
            _args = _args.__appendref__(("--" : GoString));
            _args = _args.__appendref__(...stdgo.strings.Strings.fields(stdgo.os.Os.getenv(("CGO_CPPFLAGS" : GoString))).__toArray__());
            _args = _args.__appendref__(..._bp.cgoCPPFLAGS.__toArray__());
            if ((_bp.cgoPkgConfig.length) > (0 : GoInt)) {
                var _cmd = stdgo.os.exec.Exec.command(("pkg-config" : GoString), ...((new Slice<GoString>(0, 0, ("--cflags" : GoString)) : Slice<GoString>).__append__(..._bp.cgoPkgConfig.__toArray__())).__toArray__());
                var __tmp__ = _cmd.output(), _out:Slice<GoUInt8> = __tmp__._0, _err:Error = __tmp__._1;
                if (_err != null) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return { _0 : null, _1 : stdgo.fmt.Fmt.errorf(("pkg-config --cflags: %w" : GoString), Go.toInterface(_err)) };
                    };
                };
                _args = _args.__appendref__(...stdgo.strings.Strings.fields((_out : GoString)).__toArray__());
            };
            _args = _args.__appendref__(("-I" : GoString), _tmpdir);
            _args = _args.__appendref__(...stdgo.strings.Strings.fields(stdgo.os.Os.getenv(("CGO_CFLAGS" : GoString))).__toArray__());
            _args = _args.__appendref__(..._bp.cgoCFLAGS.__toArray__());
            _args = _args.__appendref__(..._bp.cgoFiles.__toArray__());
            var _cmd = stdgo.os.exec.Exec.command(_args[(0 : GoInt)], ...(_args.__slice__((1 : GoInt)) : Slice<GoString>).__toArray__());
            _cmd.dir = _bp.dir;
            {
                var _err:Error = _cmd.run();
                if (_err != null) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return { _0 : null, _1 : stdgo.fmt.Fmt.errorf(("go tool cgo: %w" : GoString), Go.toInterface(_err)) };
                    };
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return stdgo.go.parser.Parser.parseFile(_p._fset, stdgo.path.filepath.Filepath.join(_tmpdir, ("_cgo_gotypes.go" : GoString)), (null : AnyInterface), (("64" : GoUInt) : stdgo.go.parser.Parser.Mode));
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return { _0 : (null : Ref<stdgo.go.ast.Ast.File>), _1 : (null : Error) };
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return { _0 : (null : Ref<stdgo.go.ast.Ast.File>), _1 : (null : Error) };
        };
    }
    @:keep
    static public function _parseFiles( _p:Ref<Importer>, _dir:GoString, _filenames:Slice<GoString>):{ var _0 : Slice<Ref<stdgo.go.ast.Ast.File>>; var _1 : Error; } {
        var _open:GoString -> { var _0 : stdgo.io.Io.ReadCloser; var _1 : Error; } = _p._ctxt.openFile;
        if (_open == null) {
            _open = function(_name:GoString):{ var _0 : stdgo.io.Io.ReadCloser; var _1 : Error; } {
                return stdgo.os.Os.open(_name);
            };
        };
        var _files = new Slice<Ref<stdgo.go.ast.Ast.File>>((_filenames.length : GoInt).toBasic(), 0, ...[for (i in 0 ... (_filenames.length : GoInt).toBasic()) (null : Ref<stdgo.go.ast.Ast.File>)]);
        var _errors = new Slice<Error>((_filenames.length : GoInt).toBasic(), 0, ...[for (i in 0 ... (_filenames.length : GoInt).toBasic()) (null : Error)]);
        var _wg:stdgo.sync.Sync.WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
        _wg.add((_filenames.length));
        for (_i => _filename in _filenames) {
            Go.routine(() -> {
                var a = function(_i:GoInt, _filepath:GoString):Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    __deferstack__.unshift(() -> _wg.done());
                    try {
                        var __tmp__ = _open(_filepath), _src:stdgo.io.Io.ReadCloser = __tmp__._0, _err:Error = __tmp__._1;
                        if (_err != null) {
                            _errors[(_i : GoInt)] = _err;
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return;
                            };
                        };
                        {
                            var __tmp__ = stdgo.go.parser.Parser.parseFile(_p._fset, _filepath, Go.toInterface(_src), (("64" : GoUInt) : stdgo.go.parser.Parser.Mode));
                            _files[(_i : GoInt)] = __tmp__._0;
                            _errors[(_i : GoInt)] = __tmp__._1;
                        };
                        _src.close();
                        for (defer in __deferstack__) {
                            defer();
                        };
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (Go.recover_exception != null) throw Go.recover_exception;
                            return;
                        };
                    } catch(__exception__) {
                        var exe:Dynamic = __exception__.native;
                        if ((exe is haxe.ValueException)) exe = exe.value;
                        Go.recover_exception = exe;
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (Go.recover_exception != null) throw Go.recover_exception;
                        return;
                    };
                };
                a(_i, _p._joinPath(_dir, _filename));
            });
        };
        _wg.wait_();
        for (_8 => _err in _errors) {
            if (_err != null) {
                return { _0 : (null : Slice<Ref<stdgo.go.ast.Ast.File>>), _1 : _err };
            };
        };
        return { _0 : _files, _1 : (null : Error) };
    }
    /**
        // ImportFrom imports the package with the given import path resolved from the given srcDir,
        // adds the new package to the set of packages maintained by the importer, and returns the
        // package. Package path resolution and file system operations are controlled by the context
        // maintained with the importer. The import mode must be zero but is otherwise ignored.
        // Packages that are not comprised entirely of pure Go files may fail to import because the
        // type checker may not be able to determine all exported entities (e.g. due to cgo dependencies).
    **/
    @:keep
    static public function importFrom( _p:Ref<Importer>, _path:GoString, _srcDir:GoString, _mode:stdgo.go.types.Types.ImportMode):{ var _0 : Ref<stdgo.go.types.Types.Package>; var _1 : Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        if (_mode != ((0 : stdgo.go.types.Types.ImportMode))) {
            throw Go.toInterface(("non-zero import mode" : GoString));
        };
        {
            var __tmp__ = _p._absPath(_srcDir), _abs:GoString = __tmp__._0, _err:Error = __tmp__._1;
            if (_err == null) {
                _srcDir = _abs;
            };
        };
        var __tmp__ = _p._ctxt.import_(_path, _srcDir, (("0" : GoUInt) : stdgo.go.build.Build.ImportMode)), _bp:Ref<stdgo.go.build.Build.Package> = __tmp__._0, _err:Error = __tmp__._1;
        try {
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            if (_bp.importPath == (("unsafe" : GoString))) {
                return { _0 : stdgo.go.types.Types.unsafe, _1 : (null : Error) };
            };
            var _pkg = _p._packages[_bp.importPath];
            if (_pkg != null) {
                if (_pkg == ((_importing : Ref<stdgo.go.types.Types.Package>))) {
                    return { _0 : null, _1 : stdgo.fmt.Fmt.errorf(("import cycle through package %q" : GoString), Go.toInterface(_bp.importPath)) };
                };
                if (!_pkg.complete()) {
                    return { _0 : _pkg, _1 : stdgo.fmt.Fmt.errorf(("reimported partially imported package %q" : GoString), Go.toInterface(_bp.importPath)) };
                };
                return { _0 : _pkg, _1 : (null : Error) };
            };
            _p._packages[_bp.importPath] = (_importing : Ref<stdgo.go.types.Types.Package>);
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    if (_p._packages[_bp.importPath] == ((_importing : Ref<stdgo.go.types.Types.Package>))) {
                        _p._packages[_bp.importPath] = null;
                    };
                };
                a();
            });
            var _filenames:Slice<GoString> = (null : Slice<GoString>);
            _filenames = _filenames.__appendref__(..._bp.goFiles.__toArray__());
            _filenames = _filenames.__appendref__(..._bp.cgoFiles.__toArray__());
            var __tmp__ = _p._parseFiles(_bp.dir, _filenames), _files:Slice<Ref<stdgo.go.ast.Ast.File>> = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return { _0 : null, _1 : _err };
                };
            };
            var _firstHardErr:Error = (null : Error);
            var _conf:stdgo.go.types.Types.Config = ({ ignoreFuncBodies : true, error : function(_err:Error):Void {
                if ((_firstHardErr == null) && !(Go.typeAssert((Go.toInterface(_err) : stdgo.go.types.Types.T_error)) : stdgo.go.types.Types.T_error).soft) {
                    _firstHardErr = _err;
                };
            }, importer : Go.asInterface(_p), sizes : _p._sizes } : stdgo.go.types.Types.Config);
            if ((_bp.cgoFiles.length) > (0 : GoInt)) {
                if (_p._ctxt.openFile != null) {
                    _conf.fakeImportC = true;
                } else {
                    _setUsesCgo((_conf : Ref<stdgo.go.types.Types.Config>));
                    var __tmp__ = _p._cgo(_bp), _file:Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:Error = __tmp__._1;
                    if (_err != null) {
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return { _0 : null, _1 : stdgo.fmt.Fmt.errorf(("error processing cgo for package %q: %w" : GoString), Go.toInterface(_bp.importPath), Go.toInterface(_err)) };
                        };
                    };
                    _files = _files.__appendref__(_file);
                };
            };
            {
                var __tmp__ = _conf.check(_bp.importPath, _p._fset, _files, null);
                _pkg = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                if (_firstHardErr != null) {
                    _pkg = null;
                    _err = _firstHardErr;
                };
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return { _0 : _pkg, _1 : stdgo.fmt.Fmt.errorf(("type-checking package %q failed (%v)" : GoString), Go.toInterface(_bp.importPath), Go.toInterface(_err)) };
                };
            };
            if (_firstHardErr != null) {
                throw Go.toInterface(("package is not safe yet no error was returned" : GoString));
            };
            _p._packages[_bp.importPath] = _pkg;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return { _0 : _pkg, _1 : (null : Error) };
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return { _0 : (null : Ref<stdgo.go.types.Types.Package>), _1 : (null : Error) };
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return { _0 : (null : Ref<stdgo.go.types.Types.Package>), _1 : (null : Error) };
        };
    }
    /**
        // Import(path) is a shortcut for ImportFrom(path, ".", 0).
    **/
    @:keep
    static public function import_( _p:Ref<Importer>, _path:GoString):{ var _0 : Ref<stdgo.go.types.Types.Package>; var _1 : Error; } {
        return _p.importFrom(_path, ("." : GoString), (0 : stdgo.go.types.Types.ImportMode));
    }
}
