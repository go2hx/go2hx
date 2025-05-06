package stdgo._internal.go.internal.gccgoimporter;
function testObjImporter(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _gpath = (stdgo._internal.go.internal.gccgoimporter.Gccgoimporter__gccgopath._gccgoPath()?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L129"
        if (_gpath == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L130"
            _t.skip(stdgo.Go.toInterface(("This test needs gccgo" : stdgo.GoString)));
        };
        var __tmp__ = stdgo._internal.internal.testenv.Testenv_command.command(stdgo.Go.asInterface(_t), _gpath?.__copy__(), ("--version" : stdgo.GoString)).combinedOutput(), _verout:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L134"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L135"
            _t.logf(("%s" : stdgo.GoString), stdgo.Go.toInterface(_verout));
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L136"
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _vers = stdgo._internal.regexp.Regexp_mustcompile.mustCompile(("(\\d+)\\.(\\d+)" : stdgo.GoString)).findSubmatch(_verout);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L139"
        if ((_vers.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L140"
            _t.fatalf(("could not find version number in %s" : stdgo.GoString), stdgo.Go.toInterface(_verout));
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi((_vers[(1 : stdgo.GoInt)] : stdgo.GoString)?.__copy__()), _major:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L143"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L144"
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi((_vers[(2 : stdgo.GoInt)] : stdgo.GoString)?.__copy__()), _minor:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L147"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L148"
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L150"
        _t.logf(("gccgo version %d.%d" : stdgo.GoString), stdgo.Go.toInterface(_major), stdgo.Go.toInterface(_minor));
        var _tmpdir = (_t.tempDir()?.__copy__() : stdgo.GoString);
        var _initmap = ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_initdata.InitData>();
            {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_initdata.InitData>);
        var _imp = (stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_getimporter.getImporter((new stdgo.Slice<stdgo.GoString>(1, 1, ...[_tmpdir?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), _initmap) : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_importer.Importer);
        var _artmpdir = (_t.tempDir()?.__copy__() : stdgo.GoString);
        var _arinitmap = ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_initdata.InitData>();
            {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_initdata.InitData>);
        var _arimp = (stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_getimporter.getImporter((new stdgo.Slice<stdgo.GoString>(1, 1, ...[_artmpdir?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), _arinitmap) : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_importer.Importer);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L160"
        for (__30 => _test in stdgo._internal.go.internal.gccgoimporter.Gccgoimporter__importertests._importerTests.__copy__()) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L161"
            if ((_major < _test._gccgoVersion : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L163"
                _t.logf(("skipping %q: not supported before gccgo version %d" : stdgo.GoString), stdgo.Go.toInterface(_test._pkgpath), stdgo.Go.toInterface(_test._gccgoVersion));
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L164"
                continue;
            };
            var _gofile = (stdgo._internal.path.filepath.Filepath_join.join(("testdata" : stdgo.GoString), (_test._pkgpath + (".go" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__())?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L168"
            {
                var __tmp__ = stdgo._internal.os.Os_stat.stat(_gofile?.__copy__()), __31:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (stdgo._internal.os.Os_isnotexist.isNotExist(_err)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L169"
                    continue;
                };
            };
            var _ofile = (stdgo._internal.path.filepath.Filepath_join.join(_tmpdir?.__copy__(), (_test._pkgpath + (".o" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__())?.__copy__() : stdgo.GoString);
            var _afile = (stdgo._internal.path.filepath.Filepath_join.join(_artmpdir?.__copy__(), ((("lib" : stdgo.GoString) + _test._pkgpath?.__copy__() : stdgo.GoString) + (".a" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__())?.__copy__() : stdgo.GoString);
            var _cmd = stdgo._internal.internal.testenv.Testenv_command.command(stdgo.Go.asInterface(_t), _gpath?.__copy__(), (("-fgo-pkgpath=" : stdgo.GoString) + _test._pkgpath?.__copy__() : stdgo.GoString)?.__copy__(), ("-c" : stdgo.GoString), ("-o" : stdgo.GoString), _ofile?.__copy__(), _gofile?.__copy__());
            var __tmp__ = _cmd.combinedOutput(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L176"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L177"
                _t.logf(("%s" : stdgo.GoString), stdgo.Go.toInterface(_out));
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L178"
                _t.fatalf(("gccgo %s failed: %s" : stdgo.GoString), stdgo.Go.toInterface(_gofile), stdgo.Go.toInterface(_err));
            };
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L181"
            stdgo._internal.go.internal.gccgoimporter.Gccgoimporter__runimportertest._runImporterTest(_t, _imp, _initmap, (stdgo.Go.setRef(_test) : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_importertest.T_importerTest>));
            _cmd = stdgo._internal.internal.testenv.Testenv_command.command(stdgo.Go.asInterface(_t), ("ar" : stdgo.GoString), ("cr" : stdgo.GoString), _afile?.__copy__(), _ofile?.__copy__());
            {
                var __tmp__ = _cmd.combinedOutput();
                _out = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L185"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L186"
                _t.logf(("%s" : stdgo.GoString), stdgo.Go.toInterface(_out));
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L187"
                _t.fatalf(("ar cr %s %s failed: %s" : stdgo.GoString), stdgo.Go.toInterface(_afile), stdgo.Go.toInterface(_ofile), stdgo.Go.toInterface(_err));
            };
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L190"
            stdgo._internal.go.internal.gccgoimporter.Gccgoimporter__runimportertest._runImporterTest(_t, _arimp, _arinitmap, (stdgo.Go.setRef(_test) : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_importertest.T_importerTest>));
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L192"
            {
                _err = stdgo._internal.os.Os_remove.remove(_ofile?.__copy__());
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L193"
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L195"
            {
                _err = stdgo._internal.os.Os_remove.remove(_afile?.__copy__());
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L196"
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
        };
    }
