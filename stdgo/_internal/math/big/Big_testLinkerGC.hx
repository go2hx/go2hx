package stdgo._internal.math.big;
function testLinkerGC(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (stdgo._internal.testing.Testing_short.short()) {
            _t.skip(stdgo.Go.toInterface(("skipping in short mode" : stdgo.GoString)));
        };
        _t.parallel();
        var _tmp = (_t.tempDir()?.__copy__() : stdgo.GoString);
        var _goBin = (stdgo._internal.internal.testenv.Testenv_goToolPath.goToolPath(stdgo.Go.asInterface(_t))?.__copy__() : stdgo.GoString);
        var _goFile = (stdgo._internal.path.filepath.Filepath_join.join(_tmp?.__copy__(), ("x.go" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _file = (("package main\nimport _ \"math/big\"\nfunc main() {}\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _err = (stdgo._internal.os.Os_writeFile.writeFile(_goFile?.__copy__(), _file, (420u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _cmd = stdgo._internal.os.exec.Exec_command.command(_goBin?.__copy__(), ("build" : stdgo.GoString), ("-o" : stdgo.GoString), ("x.exe" : stdgo.GoString), ("x.go" : stdgo.GoString));
        _cmd.dir = _tmp?.__copy__();
        {
            var __tmp__ = _cmd.combinedOutput(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("compile: %v, %s" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_out));
            };
        };
        _cmd = stdgo._internal.os.exec.Exec_command.command(_goBin?.__copy__(), ("tool" : stdgo.GoString), ("nm" : stdgo.GoString), ("x.exe" : stdgo.GoString));
        _cmd.dir = _tmp?.__copy__();
        var __tmp__ = _cmd.combinedOutput(), _nm:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("nm: %v, %s" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_nm));
        };
        {};
        if (!stdgo._internal.bytes.Bytes_contains.contains(_nm, (("runtime.main" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>))) {
            _t.errorf(("expected symbol %q not found" : stdgo.GoString), stdgo.Go.toInterface(("runtime.main" : stdgo.GoString)));
        };
        var _bad = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("math/big.(*Float)" : stdgo.GoString), ("math/big.(*Rat)" : stdgo.GoString), ("math/big.(*Int)" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (__54 => _sym in _bad) {
            if (stdgo._internal.bytes.Bytes_contains.contains(_nm, (_sym : stdgo.Slice<stdgo.GoUInt8>))) {
                _t.errorf(("unexpected symbol %q found" : stdgo.GoString), stdgo.Go.toInterface(_sym));
            };
        };
        if (_t.failed()) {
            _t.logf(("Got: %s" : stdgo.GoString), stdgo.Go.toInterface(_nm));
        };
    }