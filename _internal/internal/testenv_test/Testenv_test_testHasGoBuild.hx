package _internal.internal.testenv_test;
function testHasGoBuild(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (!stdgo._internal.internal.testenv.Testenv_hasGoBuild.hasGoBuild()) {
            {
                final __value__ = ("js" : stdgo.GoString);
                if (__value__ == (("js" : stdgo.GoString)) || __value__ == (("wasip1" : stdgo.GoString))) {
                    _t.logf(("HasGoBuild is false on %s" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)));
                    return;
                };
            };
            var _b = (stdgo._internal.internal.testenv.Testenv_builder.builder()?.__copy__() : stdgo.GoString);
            if (_b == (stdgo.Go.str())) {
                _t.skipf(("skipping: \'go build\' unavailable" : stdgo.GoString));
            };
            {
                final __value__ = ("js" : stdgo.GoString);
                if (__value__ == (("ios" : stdgo.GoString))) {
                    if (stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_b?.__copy__(), ("-corellium" : stdgo.GoString))) {} else {
                        _t.logf(("HasGoBuild is false on %s" : stdgo.GoString), stdgo.Go.toInterface(_b));
                        return;
                    };
                } else if (__value__ == (("android" : stdgo.GoString))) {
                    if ((stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_b?.__copy__(), ("-emu" : stdgo.GoString)) && stdgo._internal.internal.platform.Platform_mustLinkExternal.mustLinkExternal(("js" : stdgo.GoString), ("wasm" : stdgo.GoString), false) : Bool)) {
                        _t.logf(("HasGoBuild is false on %s" : stdgo.GoString), stdgo.Go.toInterface(_b));
                        return;
                    };
                };
            };
            if (stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_b?.__copy__(), ("-noopt" : stdgo.GoString))) {
                _t.logf(("HasGoBuild is false on %s" : stdgo.GoString), stdgo.Go.toInterface(_b));
                return;
            };
            _t.fatalf(("HasGoBuild unexpectedly false on %s" : stdgo.GoString), stdgo.Go.toInterface(_b));
        };
        _t.logf(("HasGoBuild is true; checking consistency with other functions" : stdgo.GoString));
        var _hasExec = (false : Bool);
        var _hasExecGo = (false : Bool);
        _t.run(("MustHaveExec" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            stdgo._internal.internal.testenv.Testenv_mustHaveExec.mustHaveExec(stdgo.Go.asInterface(_t));
            _hasExec = true;
        });
        _t.run(("MustHaveExecPath" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            stdgo._internal.internal.testenv.Testenv_mustHaveExecPath.mustHaveExecPath(stdgo.Go.asInterface(_t), ("go" : stdgo.GoString));
            _hasExecGo = true;
        });
        if (!_hasExec) {
            _t.errorf(("MustHaveExec(t) skipped unexpectedly" : stdgo.GoString));
        };
        if (!_hasExecGo) {
            _t.errorf(("MustHaveExecPath(t, \"go\") skipped unexpectedly" : stdgo.GoString));
        };
        var _dir = (_t.tempDir()?.__copy__() : stdgo.GoString);
        var _mainGo = (stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), ("main.go" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        {
            var _err = (stdgo._internal.os.Os_writeFile.writeFile(_mainGo?.__copy__(), (("package main\nfunc main() {}\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (420u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _cmd = stdgo._internal.internal.testenv.Testenv_command.command(stdgo.Go.asInterface(_t), ("go" : stdgo.GoString), ("build" : stdgo.GoString), ("-o" : stdgo.GoString), ("/dev/null" : stdgo.GoString), _mainGo?.__copy__());
        var __tmp__ = _cmd.combinedOutput(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("%v: %v\n%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_cmd)), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_out));
        };
    }
