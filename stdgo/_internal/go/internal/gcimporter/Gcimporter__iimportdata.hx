package stdgo._internal.go.internal.gcimporter;
function _iImportData(_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _imports:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>, _dataReader:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>, _path:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _pkg = (null : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>), _err = (null : stdgo.Error);
        try {
            {};
            var _version = ((-1i64 : stdgo.GoInt64) : stdgo.GoInt64);
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L90"
                        {
                            var _e = ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            } : stdgo.AnyInterface);
                            if (_e != null) {
                                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L91"
                                if ((_version > (2i64 : stdgo.GoInt64) : Bool)) {
                                    _err = stdgo._internal.fmt.Fmt_errorf.errorf(("cannot import %q (%v), export data is newer version - update tool" : stdgo.GoString), stdgo.Go.toInterface(_path), _e);
                                } else {
                                    _err = stdgo._internal.fmt.Fmt_errorf.errorf(("cannot import %q (%v), possibly version skew - reinstall package" : stdgo.GoString), stdgo.Go.toInterface(_path), _e);
                                };
                            };
                        };
                    };
                    a();
                }) });
            };
            var _r = (stdgo.Go.setRef((new stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader(_dataReader, _path?.__copy__()) : stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader)) : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader>);
            _version = (_r._uint64() : stdgo.GoInt64);
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L102"
            {
                final __value__ = _version;
                if (__value__ == ((2i64 : stdgo.GoInt64)) || __value__ == ((1i64 : stdgo.GoInt64)) || __value__ == ((0i64 : stdgo.GoInt64))) {} else {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L105"
                    stdgo._internal.go.internal.gcimporter.Gcimporter__errorf._errorf(("unknown iexport format version %d" : stdgo.GoString), stdgo.Go.toInterface(_version));
                };
            };
            var _sLen = (_r._uint64() : stdgo.GoUInt64);
            var _dLen = (_r._uint64() : stdgo.GoUInt64);
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L111"
            if ((_sLen > ((-1i64 : stdgo.GoUInt64) - _dLen : stdgo.GoUInt64) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L112"
                stdgo._internal.go.internal.gcimporter.Gcimporter__errorf._errorf(("lengths out of range (%d, %d)" : stdgo.GoString), stdgo.Go.toInterface(_sLen), stdgo.Go.toInterface(_dLen));
            };
            var __tmp__ = stdgo._internal.internal.saferio.Saferio_readdata.readData(stdgo.Go.asInterface(_r), (_sLen + _dLen : stdgo.GoUInt64)), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L116"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L117"
                stdgo._internal.go.internal.gcimporter.Gcimporter__errorf._errorf(("cannot read %d bytes of stringData and declData: %s" : stdgo.GoString), stdgo.Go.toInterface((_sLen + _dLen : stdgo.GoUInt64)), stdgo.Go.toInterface(_err));
            };
            var _stringData = (_data.__slice__(0, _sLen) : stdgo.Slice<stdgo.GoUInt8>);
            var _declData = (_data.__slice__(_sLen) : stdgo.Slice<stdgo.GoUInt8>);
            var _p = ({ _exportVersion : _version, _ipath : _path?.__copy__(), _version : (_version : stdgo.GoInt), _stringData : _stringData, _stringCache : (({
                final x = new stdgo.GoMap.GoUInt64Map<stdgo.GoString>();
                x.__defaultValue__ = () -> ("" : stdgo.GoString);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoUInt64, stdgo.GoString>) : stdgo.GoMap<stdgo.GoUInt64, stdgo.GoString>), _pkgCache : (({
                final x = new stdgo.GoMap.GoUInt64Map<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>) : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>), _declData : _declData, _pkgIndex : ({
                final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, stdgo.GoMap<stdgo.GoString, stdgo.GoUInt64>>();
                {};
                cast x;
            } : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, stdgo.GoMap<stdgo.GoString, stdgo.GoUInt64>>), _typCache : (({
                final x = new stdgo.GoMap.GoUInt64Map<stdgo._internal.go.types.Types_type_.Type_>();
                x.__defaultValue__ = () -> (null : stdgo._internal.go.types.Types_type_.Type_);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoUInt64, stdgo._internal.go.types.Types_type_.Type_>) : stdgo.GoMap<stdgo.GoUInt64, stdgo._internal.go.types.Types_type_.Type_>), _tparamIndex : (({
                final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.go.internal.gcimporter.Gcimporter_t_ident.T_ident, stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>();
                x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.go.internal.gcimporter.Gcimporter_t_ident.T_ident", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_pkg", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.go.types.Types_package.Package", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_path", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_scope", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.go.types.Types_scope.Scope", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_parent", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.go.types.Types_scope.Scope", [], stdgo._internal.internal.reflect.Reflect.GoType.invalidType, false, { get : () -> null }) }) }, optional : false }, { name : "_children", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.go.types.Types_scope.Scope", [], stdgo._internal.internal.reflect.Reflect.GoType.invalidType, false, { get : () -> null }) }) }) }, optional : false }, { name : "_number", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }, { name : "_elems", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.go.types.Types_object.Object", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }) }) }, optional : false }, { name : "_pos", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.go.token.Token_pos.Pos", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind), false, { get : () -> null }) }, optional : false }, { name : "_end", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.go.token.Token_pos.Pos", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind), false, { get : () -> null }) }, optional : false }, { name : "_comment", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_isFunc", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "_imports", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.go.types.Types_package.Package", [], stdgo._internal.internal.reflect.Reflect.GoType.invalidType, false, { get : () -> null }) }) }) }, optional : false }, { name : "_complete", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_fake", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_cgo", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_goVersion", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "_name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }]), false, { get : () -> null }));
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>);
                {};
                cast x;
            } : stdgo.GoMap<stdgo._internal.go.internal.gcimporter.Gcimporter_t_ident.T_ident, stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>) : stdgo.GoMap<stdgo._internal.go.internal.gcimporter.Gcimporter_t_ident.T_ident, stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>), _fake : ({ _fset : _fset, _files : (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_fileinfo.T_fileInfo>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_fileinfo.T_fileInfo>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_fileinfo.T_fileInfo>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_fileinfo.T_fileInfo>>) } : stdgo._internal.go.internal.gcimporter.Gcimporter_t_fakefileset.T_fakeFileSet) } : stdgo._internal.go.internal.gcimporter.Gcimporter_t_iimporter.T_iimporter);
            {
                final __f__ = _p._fake._setLines;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L145"
            for (_i => _pt in stdgo._internal.go.internal.gcimporter.Gcimporter__predeclared._predeclared) {
                _p._typCache[(_i : stdgo.GoUInt64)] = _pt;
            };
            var _pkgList = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>((_r._uint64() : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>);
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L150"
            for (_i => _ in _pkgList) {
                var _pkgPathOff = (_r._uint64() : stdgo.GoUInt64);
                var _pkgPath = (_p._stringAt(_pkgPathOff)?.__copy__() : stdgo.GoString);
                var _pkgName = (_p._stringAt(_r._uint64())?.__copy__() : stdgo.GoString);
                _r._uint64();
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L156"
                if (_pkgPath == ((stdgo.Go.str() : stdgo.GoString))) {
                    _pkgPath = _path?.__copy__();
                };
                var _pkg = (_imports[_pkgPath] ?? (null : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>));
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L160"
                if (({
                    final value = _pkg;
                    (value == null || (value : Dynamic).__nil__);
                })) {
                    _pkg = stdgo._internal.go.types.Types_newpackage.newPackage(_pkgPath?.__copy__(), _pkgName?.__copy__());
                    _imports[_pkgPath] = _pkg;
                } else if (_pkg.name() != (_pkgName)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L164"
                    stdgo._internal.go.internal.gcimporter.Gcimporter__errorf._errorf(("conflicting names %s and %s for package %q" : stdgo.GoString), stdgo.Go.toInterface(_pkg.name()), stdgo.Go.toInterface(_pkgName), stdgo.Go.toInterface(_path));
                };
                _p._pkgCache[_pkgPathOff] = _pkg;
                var _nameIndex = (({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.GoUInt64>();
                    x.__defaultValue__ = () -> (0 : stdgo.GoUInt64);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.GoUInt64>) : stdgo.GoMap<stdgo.GoString, stdgo.GoUInt64>);
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L170"
                {
                    var _nSyms = (_r._uint64() : stdgo.GoUInt64);
                    while ((_nSyms > (0i64 : stdgo.GoUInt64) : Bool)) {
                        var _name = (_p._stringAt(_r._uint64()).__copy__() : stdgo.GoString);
_nameIndex[_name] = _r._uint64();
                        _nSyms--;
                    };
                };
                _p._pkgIndex[_pkg] = _nameIndex;
                _pkgList[(_i : stdgo.GoInt)] = _pkg;
            };
            var _localpkg = _pkgList[(0 : stdgo.GoInt)];
            var _names = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), ((_p._pkgIndex[_localpkg] ?? (null : stdgo.GoMap<stdgo.GoString, stdgo.GoUInt64>)).length)).__setString__() : stdgo.Slice<stdgo.GoString>);
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L182"
            for (_name => _ in (_p._pkgIndex[_localpkg] ?? (null : stdgo.GoMap<stdgo.GoString, stdgo.GoUInt64>))) {
                _names = (_names.__append__(_name?.__copy__()) : stdgo.Slice<stdgo.GoString>);
            };
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L185"
            stdgo._internal.sort.Sort_strings.strings(_names);
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L186"
            for (__32 => _name in _names) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L187"
                _p._doDecl(_localpkg, _name?.__copy__());
            };
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L195"
            for (__41 => _d in _p._later) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L196"
                _d._t.setConstraint(_d._constraint);
            };
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L199"
            for (__50 => _typ in _p._interfaceList) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L200"
                _typ.complete();
            };
            var _list = ((null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>).__append__(...((_pkgList.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>) : Array<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>)) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>);
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L205"
            stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface((_list : stdgo._internal.go.internal.gcimporter.Gcimporter_t_bypath.T_byPath)));
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L206"
            _localpkg.setImports(_list);
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L209"
            _localpkg.markComplete();
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L210"
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.Error; } = {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.Error; } = { _0 : _localpkg, _1 : (null : stdgo.Error) };
                    _pkg = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
                _pkg = __ret__._0;
                _err = __ret__._1;
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : _pkg, _1 : _err };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : _pkg, _1 : _err };
            };
        };
    }
