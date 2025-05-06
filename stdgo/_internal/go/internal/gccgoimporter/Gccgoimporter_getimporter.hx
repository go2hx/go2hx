package stdgo._internal.go.internal.gccgoimporter;
function getImporter(_searchpaths:stdgo.Slice<stdgo.GoString>, _initmap:stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_initdata.InitData>):stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_importer.Importer {
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer.go#L146"
        return function(_imports:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>, _pkgpath:stdgo.GoString, _srcDir:stdgo.GoString, _lookup:stdgo.GoString -> { var _0 : stdgo._internal.io.Io_readcloser.ReadCloser; var _1 : stdgo.Error; }):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.Error; } {
            var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
            var _pkg = (null : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>), _err = (null : stdgo.Error);
            try {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer.go#L151"
                if (_pkgpath == (("unsafe" : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer.go#L152"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.go.types.Types_unsafe.unsafe, _1 : (null : stdgo.Error) };
                        _pkg = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
                var _reader:stdgo._internal.io.Io_readseeker.ReadSeeker = (null : stdgo._internal.io.Io_readseeker.ReadSeeker);
                var _fpath:stdgo.GoString = ("" : stdgo.GoString);
                var _rc:stdgo._internal.io.Io_readcloser.ReadCloser = (null : stdgo._internal.io.Io_readcloser.ReadCloser);
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer.go#L158"
                if (_lookup != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer.go#L159"
                    {
                        var _p = (_imports[_pkgpath] ?? (null : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>));
                        if ((({
                            final value = _p;
                            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                        }) && _p.complete() : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer.go#L160"
                            return {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.Error; } = { _0 : _p, _1 : (null : stdgo.Error) };
                                _pkg = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                        };
                    };
                    {
                        var __tmp__ = _lookup(_pkgpath?.__copy__());
                        _rc = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer.go#L163"
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer.go#L164"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            _pkg = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer.go#L167"
                if (_rc != null) {
                    {
                        final __f__ = _rc.close;
                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                    };
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_rc) : stdgo._internal.io.Io_readseeker.ReadSeeker)) : stdgo._internal.io.Io_readseeker.ReadSeeker), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo._internal.io.Io_readseeker.ReadSeeker), _1 : false };
                    }, _rs = __tmp__._0, _ok = __tmp__._1;
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer.go#L170"
                    if (!_ok) {
                        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer.go#L171"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("gccgo importer requires lookup to return an io.ReadSeeker, have %T" : stdgo.GoString), stdgo.Go.toInterface(_rc)) };
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
                    };
                    _reader = _rs;
                    _fpath = ((("<lookup " : stdgo.GoString) + _pkgpath?.__copy__() : stdgo.GoString) + (">" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer.go#L176"
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_rc) : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t__interface_0.T__interface_0)) : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t__interface_0.T__interface_0), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t__interface_0.T__interface_0), _1 : false };
                        }, _n = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            _fpath = _n.name()?.__copy__();
                        };
                    };
                } else {
                    {
                        var __tmp__ = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter__findexportfile._findExportFile(_searchpaths, _pkgpath?.__copy__());
                        _fpath = @:tmpset0 __tmp__._0?.__copy__();
                        _err = @:tmpset0 __tmp__._1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer.go#L181"
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer.go#L182"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
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
                    };
                    var __tmp__ = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter__openexportfile._openExportFile(_fpath?.__copy__()), _r:stdgo._internal.io.Io_readseeker.ReadSeeker = __tmp__._0, _closer:stdgo._internal.io.Io_closer.Closer = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer.go#L186"
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer.go#L187"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
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
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer.go#L189"
                    if (_closer != null) {
                        {
                            final __f__ = _closer.close;
                            __deferstack__.unshift({ ran : false, f : () -> __f__() });
                        };
                    };
                    _reader = _r;
                };
                var _magics:stdgo.GoString = ("" : stdgo.GoString);
                {
                    var __tmp__ = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter__readmagic._readMagic(_reader);
                    _magics = @:tmpset0 __tmp__._0?.__copy__();
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer.go#L197"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer.go#L198"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return { _0 : _pkg, _1 : _err };
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer.go#L201"
                if (((_magics == ("!<ar" : stdgo.GoString)) || (_magics == ("<big" : stdgo.GoString)) : Bool)) {
                    {
                        var __tmp__ = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter__arexportdata._arExportData(_reader);
                        _reader = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer.go#L203"
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer.go#L204"
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return { _0 : _pkg, _1 : _err };
                        };
                    };
                    {
                        var __tmp__ = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter__readmagic._readMagic(_reader);
                        _magics = @:tmpset0 __tmp__._0?.__copy__();
                        _err = @:tmpset0 __tmp__._1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer.go#L207"
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer.go#L208"
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return { _0 : _pkg, _1 : _err };
                        };
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer.go#L212"
                {
                    final __value__ = _magics;
                    if (__value__ == (("v1;\n" : stdgo.GoString)) || __value__ == (("v2;\n" : stdgo.GoString)) || __value__ == (("v3;\n" : stdgo.GoString))) {
                        var _p:stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser = ({} : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser);
                        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer.go#L215"
                        _p._init(_fpath?.__copy__(), _reader, _imports);
                        _pkg = _p._parsePackage();
                        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer.go#L217"
                        if (_initmap != null) {
                            _initmap[_pkg] = _p._initdata?.__copy__();
                        };
                    } else {
                        _err = stdgo._internal.fmt.Fmt_errorf.errorf(("unrecognized magic string: %q" : stdgo.GoString), stdgo.Go.toInterface(_magics));
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer.go#L246"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return { _0 : _pkg, _1 : _err };
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
        };
    }
