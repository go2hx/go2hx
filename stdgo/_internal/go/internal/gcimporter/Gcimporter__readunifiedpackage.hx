package stdgo._internal.go.internal.gcimporter;
function _readUnifiedPackage(_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _ctxt:stdgo.Ref<stdgo._internal.go.types.Types_context.Context>, _imports:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>, _input:stdgo._internal.internal.pkgbits.Pkgbits_pkgdecoder.PkgDecoder):stdgo.Ref<stdgo._internal.go.types.Types_package.Package> {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _pr = ({ pkgDecoder : _input?.__copy__(), _fake : ({ _fset : _fset, _files : (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_fileinfo.T_fileInfo>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_fileinfo.T_fileInfo>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_fileinfo.T_fileInfo>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_fileinfo.T_fileInfo>>) } : stdgo._internal.go.internal.gcimporter.Gcimporter_t_fakefileset.T_fakeFileSet), _ctxt : _ctxt, _imports : _imports, _posBases : (new stdgo.Slice<stdgo.GoString>((_input.numElems((2 : stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind)) : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>), _pkgs : (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>((_input.numElems((3 : stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind)) : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>), _typs : (new stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>((_input.numElems((5 : stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind)) : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>) } : stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader);
            {
                final __f__ = _pr._fake._setLines;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _r = _pr._newReader((1 : stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind), (0 : stdgo._internal.internal.pkgbits.Pkgbits_index.Index), (11 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
            var _pkg = _r._pkg();
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L66"
            _r.bool_();
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L68"
            {
                var __0 = (0 : stdgo.GoInt), __1 = (_r.len() : stdgo.GoInt);
var _n = __1, _i = __0;
                while ((_i < _n : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L71"
                    _r.sync((14 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
//"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L72"
                    stdgo._internal.go.internal.gcimporter.Gcimporter__assert._assert(!_r.bool_());
//"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L73"
                    (@:checkr _r ?? throw "null pointer dereference")._p._objIdx(_r.reloc((6 : stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind)));
//"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L74"
                    stdgo._internal.go.internal.gcimporter.Gcimporter__assert._assert(_r.len() == ((0 : stdgo.GoInt)));
                    _i++;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L77"
            _r.sync((1 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L79"
            for (__64 => _fn in _pr._laterFns) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L80"
                _fn();
            };
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L83"
            for (__73 => _iface in _pr._ifaces) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L84"
                _iface.complete();
            };
            var _imps:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>);
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L89"
            for (__82 => _imp in _pr._pkgs) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L90"
                if ((({
                    final value = _imp;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                }) && (_imp != _pkg) : Bool)) {
                    _imps = (_imps.__append__(_imp) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>);
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L94"
            stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface((_imps : stdgo._internal.go.internal.gcimporter.Gcimporter_t_bypath.T_byPath)));
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L95"
            _pkg.setImports(_imps);
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L97"
            _pkg.markComplete();
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L98"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _pkg;
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
                return (null : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
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
                return (null : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
            };
        };
    }
