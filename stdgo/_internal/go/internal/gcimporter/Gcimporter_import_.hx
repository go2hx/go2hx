package stdgo._internal.go.internal.gcimporter;
function import_(_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _packages:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>, _path:stdgo.GoString, _srcDir:stdgo.GoString, _lookup:stdgo.GoString -> { var _0 : stdgo._internal.io.Io_readcloser.ReadCloser; var _1 : stdgo.Error; }):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _pkg = (null : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>), _err = (null : stdgo.Error);
        try {
            var _rc:stdgo._internal.io.Io_readcloser.ReadCloser = (null : stdgo._internal.io.Io_readcloser.ReadCloser);
            var _id:stdgo.GoString = ("" : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/gcimporter.go#L147"
            if (_lookup != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/gcimporter.go#L150"
                if (_path == (("unsafe" : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/gcimporter.go#L151"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.go.types.Types_unsafe.unsafe, _1 : (null : stdgo.Error) };
                        _pkg = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
                _id = _path?.__copy__();
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/gcimporter.go#L156"
                {
                    _pkg = (_packages[_id] ?? (null : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>));
                    if ((({
                        final value = _pkg;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    }) && _pkg.complete() : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/gcimporter.go#L157"
                        return { _0 : _pkg, _1 : _err };
                    };
                };
                var __tmp__ = _lookup(_path?.__copy__()), _f:stdgo._internal.io.Io_readcloser.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/gcimporter.go#L160"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/gcimporter.go#L161"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                        _pkg = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
                _rc = _f;
            } else {
                var _filename:stdgo.GoString = ("" : stdgo.GoString);
                {
                    var __tmp__ = stdgo._internal.go.internal.gcimporter.Gcimporter_findpkg.findPkg(_path?.__copy__(), _srcDir?.__copy__());
                    _filename = @:tmpset0 __tmp__._0?.__copy__();
                    _id = @:tmpset0 __tmp__._1?.__copy__();
                };
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/gcimporter.go#L167"
                if (_filename == ((stdgo.Go.str() : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/gcimporter.go#L168"
                    if (_path == (("unsafe" : stdgo.GoString))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/gcimporter.go#L169"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.go.types.Types_unsafe.unsafe, _1 : (null : stdgo.Error) };
                            _pkg = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/gcimporter.go#L171"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("can\'t find import: %q" : stdgo.GoString), stdgo.Go.toInterface(_id)) };
                        _pkg = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/gcimporter.go#L175"
                {
                    _pkg = (_packages[_id] ?? (null : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>));
                    if ((({
                        final value = _pkg;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    }) && _pkg.complete() : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/gcimporter.go#L176"
                        return { _0 : _pkg, _1 : _err };
                    };
                };
                var __tmp__ = stdgo._internal.os.Os_open.open(_filename?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/gcimporter.go#L181"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/gcimporter.go#L182"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                        _pkg = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
                {
                    __deferstack__.unshift({ ran : false, f : () -> ({
                        var a = function():Void {
                            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/gcimporter.go#L185"
                            if (_err != null) {
                                _err = stdgo._internal.fmt.Fmt_errorf.errorf(("%s: %v" : stdgo.GoString), stdgo.Go.toInterface(_filename), stdgo.Go.toInterface(_err));
                            };
                        };
                        a();
                    }) });
                };
                _rc = stdgo.Go.asInterface(_f);
            };
            {
                final __f__ = _rc.close;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _buf = stdgo._internal.bufio.Bufio_newreader.newReader(_rc);
            var __tmp__ = stdgo._internal.go.internal.gcimporter.Gcimporter_findexportdata.findExportData(_buf), _hdr:stdgo.GoString = __tmp__._0, _size:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/gcimporter.go#L196"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/gcimporter.go#L197"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return { _0 : _pkg, _1 : _err };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/gcimporter.go#L200"
            {
                final __value__ = _hdr;
                if (__value__ == (("$$\n" : stdgo.GoString))) {
                    _err = stdgo._internal.fmt.Fmt_errorf.errorf(("import %q: old textual export format no longer supported (recompile library)" : stdgo.GoString), stdgo.Go.toInterface(_path));
                } else if (__value__ == (("$$B\n" : stdgo.GoString))) {
                    var _exportFormat:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/gcimporter.go#L206"
                    {
                        {
                            var __tmp__ = _buf.readByte();
                            _exportFormat = @:tmpset0 __tmp__._0;
                            _err = @:tmpset0 __tmp__._1;
                        };
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/gcimporter.go#L207"
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
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/gcimporter.go#L209"
                    _size--;
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/gcimporter.go#L215"
                    {
                        final __value__ = _exportFormat;
                        if (__value__ == ((117 : stdgo.GoUInt8))) {
                            var _data:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
                            var _r:stdgo._internal.io.Io_reader.Reader = stdgo.Go.asInterface(_buf);
                            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/gcimporter.go#L219"
                            if ((_size >= (0 : stdgo.GoInt) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/gcimporter.go#L220"
                                {
                                    {
                                        var __tmp__ = stdgo._internal.internal.saferio.Saferio_readdata.readData(_r, (_size : stdgo.GoUInt64));
                                        _data = @:tmpset0 __tmp__._0;
                                        _err = @:tmpset0 __tmp__._1;
                                    };
                                    if (_err != null) {
                                        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/gcimporter.go#L221"
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
                            } else {
                                {
                                    var __tmp__ = stdgo._internal.io.Io_readall.readAll(_r);
                                    _data = @:tmpset0 __tmp__._0;
                                    _err = @:tmpset0 __tmp__._1;
                                };
                                if (_err != null) {
                                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/gcimporter.go#L224"
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
                            var _s = ((_data : stdgo.GoString)?.__copy__() : stdgo.GoString);
                            _s = (_s.__slice__(0, stdgo._internal.strings.Strings_lastindex.lastIndex(_s?.__copy__(), ("\n$$\n" : stdgo.GoString))) : stdgo.GoString)?.__copy__();
                            var _input = (stdgo._internal.internal.pkgbits.Pkgbits_newpkgdecoder.newPkgDecoder(_id?.__copy__(), _s?.__copy__())?.__copy__() : stdgo._internal.internal.pkgbits.Pkgbits_pkgdecoder.PkgDecoder);
                            _pkg = stdgo._internal.go.internal.gcimporter.Gcimporter__readunifiedpackage._readUnifiedPackage(_fset, null, _packages, _input?.__copy__());
                        } else if (__value__ == ((105 : stdgo.GoUInt8))) {
                            {
                                var __tmp__ = stdgo._internal.go.internal.gcimporter.Gcimporter__iimportdata._iImportData(_fset, _packages, _buf, _id?.__copy__());
                                _pkg = @:tmpset0 __tmp__._0;
                                _err = @:tmpset0 __tmp__._1;
                            };
                        } else {
                            _err = stdgo._internal.fmt.Fmt_errorf.errorf(("import %q: old binary export format no longer supported (recompile library)" : stdgo.GoString), stdgo.Go.toInterface(_path));
                        };
                    };
                } else {
                    _err = stdgo._internal.fmt.Fmt_errorf.errorf(("import %q: unknown export data header: %q" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_hdr));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/gcimporter.go#L241"
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
    }
