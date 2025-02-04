package stdgo._internal.internal.testenv;
function _findGOROOT():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:check2 stdgo._internal.internal.testenv.Testenv__gorootonce._gorootOnce.do_(function():Void {
            stdgo._internal.internal.testenv.Testenv__gorootpath._gorootPath = stdgo._internal.runtime.Runtime_goroot.gOROOT()?.__copy__();
            if (stdgo._internal.internal.testenv.Testenv__gorootpath._gorootPath != ((stdgo.Go.str() : stdgo.GoString))) {
                return;
            };
            var __tmp__ = stdgo._internal.os.Os_getwd.getwd(), _cwd:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.internal.testenv.Testenv__gorooterr._gorootErr = stdgo._internal.fmt.Fmt_errorf.errorf(("finding GOROOT: %w" : stdgo.GoString), stdgo.Go.toInterface(_err));
                return;
            };
            var _dir = (_cwd?.__copy__() : stdgo.GoString);
            while (true) {
                var _parent = (stdgo._internal.path.filepath.Filepath_dir.dir(_dir?.__copy__())?.__copy__() : stdgo.GoString);
                if (_parent == (_dir)) {
                    stdgo._internal.internal.testenv.Testenv__gorooterr._gorootErr = stdgo._internal.fmt.Fmt_errorf.errorf(("failed to locate GOROOT/src in any parent directory" : stdgo.GoString));
                    return;
                };
                {
                    var _base = (stdgo._internal.path.filepath.Filepath_base.base(_dir?.__copy__())?.__copy__() : stdgo.GoString);
                    if (_base != (("src" : stdgo.GoString))) {
                        _dir = _parent?.__copy__();
                        continue;
                    };
                };
                var __tmp__ = stdgo._internal.os.Os_readfile.readFile(stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), ("go.mod" : stdgo.GoString))?.__copy__()), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    if (stdgo._internal.os.Os_isnotexist.isNotExist(_err)) {
                        _dir = _parent?.__copy__();
                        continue;
                    };
                    stdgo._internal.internal.testenv.Testenv__gorooterr._gorootErr = stdgo._internal.fmt.Fmt_errorf.errorf(("finding GOROOT: %w" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    return;
                };
                var _goMod = ((_b : stdgo.GoString)?.__copy__() : stdgo.GoString);
                while (_goMod != ((stdgo.Go.str() : stdgo.GoString))) {
                    var _line:stdgo.GoString = ("" : stdgo.GoString);
                    {
                        var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_goMod?.__copy__(), ("\n" : stdgo.GoString));
                        _line = @:tmpset0 __tmp__._0?.__copy__();
                        _goMod = @:tmpset0 __tmp__._1?.__copy__();
                    };
                    var _fields = stdgo._internal.strings.Strings_fields.fields(_line?.__copy__());
                    if (((((_fields.length) >= (2 : stdgo.GoInt) : Bool) && _fields[(0 : stdgo.GoInt)] == (("module" : stdgo.GoString)) : Bool) && (_fields[(1 : stdgo.GoInt)] == ("std" : stdgo.GoString)) : Bool)) {
                        stdgo._internal.internal.testenv.Testenv__gorootpath._gorootPath = _parent?.__copy__();
                        return;
                    };
                };
            };
        });
        return { _0 : stdgo._internal.internal.testenv.Testenv__gorootpath._gorootPath?.__copy__(), _1 : stdgo._internal.internal.testenv.Testenv__gorooterr._gorootErr };
    }
