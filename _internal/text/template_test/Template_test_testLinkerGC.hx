package _internal.text.template_test;
function testLinkerGC(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (stdgo._internal.testing.Testing_short.short()) {
            _t.skip(stdgo.Go.toInterface(("skipping in short mode" : stdgo.GoString)));
        };
        stdgo._internal.internal.testenv.Testenv_mustHaveGoBuild.mustHaveGoBuild(stdgo.Go.asInterface(_t));
        {};
        var _td = (_t.tempDir()?.__copy__() : stdgo.GoString);
        {
            var _err = (stdgo._internal.os.Os_writeFile.writeFile(stdgo._internal.path.filepath.Filepath_join.join(_td?.__copy__(), ("x.go" : stdgo.GoString))?.__copy__(), (("package main\n\nimport (\n\t_ \"text/template\"\n)\n\ntype T struct{}\n\nfunc (t *T) Unused() { println(\"THIS SHOULD BE ELIMINATED\") }\nfunc (t *T) Used() {}\n\nvar sink *T\n\nfunc main() {\n\tvar t T\n\tsink = &t\n\tt.Used()\n}\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (420u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _cmd = stdgo._internal.os.exec.Exec_command.command(stdgo._internal.internal.testenv.Testenv_goToolPath.goToolPath(stdgo.Go.asInterface(_t))?.__copy__(), ("build" : stdgo.GoString), ("-o" : stdgo.GoString), ("x.exe" : stdgo.GoString), ("x.go" : stdgo.GoString));
        _cmd.dir = _td?.__copy__();
        {
            var __tmp__ = _cmd.combinedOutput(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("go build: %v, %s" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_out));
            };
        };
        var __tmp__ = stdgo._internal.os.Os_readFile.readFile(stdgo._internal.path.filepath.Filepath_join.join(_td?.__copy__(), ("x.exe" : stdgo.GoString))?.__copy__()), _slurp:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        if (stdgo._internal.bytes.Bytes_contains.contains(_slurp, (("THIS SHOULD BE ELIMINATED" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>))) {
            _t.error(stdgo.Go.toInterface(("binary contains code that should be deadcode eliminated" : stdgo.GoString)));
        };
    }
