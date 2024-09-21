package _internal.internal.abi_test;
function testFuncPCCompileError(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.internal.testenv.Testenv_mustHaveGoBuild.mustHaveGoBuild(stdgo.Go.asInterface(_t));
        var _tmpdir = (_t.tempDir()?.__copy__() : stdgo.GoString);
        var _asmSrc = (stdgo._internal.path.filepath.Filepath_join.join(("testdata" : stdgo.GoString), ("x.s" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _goSrc = (stdgo._internal.path.filepath.Filepath_join.join(("testdata" : stdgo.GoString), ("x.go" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _symabi = (stdgo._internal.path.filepath.Filepath_join.join(_tmpdir?.__copy__(), ("symabi" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _obj = (stdgo._internal.path.filepath.Filepath_join.join(_tmpdir?.__copy__(), ("x.o" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _importcfgfile = (stdgo._internal.path.filepath.Filepath_join.join(_tmpdir?.__copy__(), ("hello.importcfg" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        stdgo._internal.internal.testenv.Testenv_writeImportcfg.writeImportcfg(stdgo.Go.asInterface(_t), _importcfgfile?.__copy__(), (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>), ("internal/abi" : stdgo.GoString));
        var _cmd = stdgo._internal.internal.testenv.Testenv_command.command(stdgo.Go.asInterface(_t), stdgo._internal.internal.testenv.Testenv_goToolPath.goToolPath(stdgo.Go.asInterface(_t))?.__copy__(), ("tool" : stdgo.GoString), ("asm" : stdgo.GoString), ("-gensymabis" : stdgo.GoString), ("-o" : stdgo.GoString), _symabi?.__copy__(), _asmSrc?.__copy__());
        var __tmp__ = _cmd.combinedOutput(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("go tool asm -gensymabis failed: %v\n%s" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_out));
        };
        _cmd = stdgo._internal.internal.testenv.Testenv_command.command(stdgo.Go.asInterface(_t),
stdgo._internal.internal.testenv.Testenv_goToolPath.goToolPath(stdgo.Go.asInterface(_t))?.__copy__(),
("tool" : stdgo.GoString),
("compile" : stdgo.GoString),
(("-importcfg=" : stdgo.GoString) + _importcfgfile?.__copy__() : stdgo.GoString)?.__copy__(),
("-p=p" : stdgo.GoString),
("-symabis" : stdgo.GoString),
_symabi?.__copy__(),
("-o" : stdgo.GoString),
_obj?.__copy__(),
_goSrc?.__copy__());
        {
            var __tmp__ = _cmd.combinedOutput();
            _out = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err == null) {
            _t.fatalf(("go tool compile did not fail" : stdgo.GoString));
        };
        var _want = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("x.go:17" : stdgo.GoString), ("x.go:18" : stdgo.GoString), ("x.go:20" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _got = stdgo._internal.strings.Strings_split.split((_out : stdgo.GoString)?.__copy__(), ("\n" : stdgo.GoString));
        if (_got[((_got.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (stdgo.Go.str())) {
            _got = (_got.__slice__(0, ((_got.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
        };
        for (_i => _s in _got) {
            if (!stdgo._internal.strings.Strings_contains.contains(_s?.__copy__(), _want[(_i : stdgo.GoInt)]?.__copy__())) {
                _t.errorf(("did not error on line %s" : stdgo.GoString), stdgo.Go.toInterface(_want[(_i : stdgo.GoInt)]));
            };
        };
        if ((_got.length) != ((_want.length))) {
            _t.errorf(("unexpected number of errors, want %d, got %d" : stdgo.GoString), stdgo.Go.toInterface((_want.length)), stdgo.Go.toInterface((_got.length)));
        };
        if (_t.failed()) {
            _t.logf(("output:\n%s" : stdgo.GoString), stdgo.Go.toInterface((_out : stdgo.GoString)));
        };
    }
