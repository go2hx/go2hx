package stdgo._internal.internal.goroot;
@:keep @:allow(stdgo._internal.internal.goroot.Goroot.T_gccgoDirs_asInterface) class T_gccgoDirs_static_extension {
    @:keep
    @:tdfield
    static public function _isStandard( _gd:stdgo.Ref<stdgo._internal.internal.goroot.Goroot_t_gccgodirs.T_gccgoDirs>, _path:stdgo.GoString):Bool {
        @:recv var _gd:stdgo.Ref<stdgo._internal.internal.goroot.Goroot_t_gccgodirs.T_gccgoDirs> = _gd;
        var _i = (stdgo._internal.strings.Strings_index.index(_path?.__copy__(), ("/" : stdgo.GoString)) : stdgo.GoInt);
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            _i = (_path.length);
        };
        if (stdgo._internal.strings.Strings_contains.contains((_path.__slice__(0, _i) : stdgo.GoString)?.__copy__(), ("." : stdgo.GoString))) {
            return false;
        };
        if (_path == (("unsafe" : stdgo.GoString))) {
            return true;
        };
        @:check2 (@:checkr _gd ?? throw "null pointer dereference")._once.do_(@:check2r _gd._init);
        if ((@:checkr _gd ?? throw "null pointer dereference")._dirs == null) {
            return true;
        };
        for (__0 => _dir in (@:checkr _gd ?? throw "null pointer dereference")._dirs) {
            var _full = ((stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), _path?.__copy__()) + (".gox" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            {
                var __tmp__ = stdgo._internal.os.Os_stat.stat(_full?.__copy__()), _fi:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_err == null) && !_fi.isDir() : Bool)) {
                    return true;
                };
            };
        };
        return false;
    }
    @:keep
    @:tdfield
    static public function _init( _gd:stdgo.Ref<stdgo._internal.internal.goroot.Goroot_t_gccgodirs.T_gccgoDirs>):Void {
        @:recv var _gd:stdgo.Ref<stdgo._internal.internal.goroot.Goroot_t_gccgodirs.T_gccgoDirs> = _gd;
        var _gccgo = (stdgo._internal.os.Os_getenv.getenv(("GCCGO" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        if (_gccgo == ((stdgo.Go.str() : stdgo.GoString))) {
            _gccgo = ("gccgo" : stdgo.GoString);
        };
        var __tmp__ = stdgo._internal.os.exec.Exec_lookpath.lookPath(_gccgo?.__copy__()), _bin:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return;
        };
        var __tmp__ = @:check2r stdgo._internal.os.exec.Exec_command.command(_bin?.__copy__(), ("-print-search-dirs" : stdgo.GoString)).output(), _allDirs:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return;
        };
        var __tmp__ = @:check2r stdgo._internal.os.exec.Exec_command.command(_bin?.__copy__(), ("-dumpversion" : stdgo.GoString)).output(), _versionB:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return;
        };
        var _version = (stdgo._internal.strings.Strings_trimspace.trimSpace((_versionB : stdgo.GoString)?.__copy__())?.__copy__() : stdgo.GoString);
        var __tmp__ = @:check2r stdgo._internal.os.exec.Exec_command.command(_bin?.__copy__(), ("-dumpmachine" : stdgo.GoString)).output(), _machineB:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return;
        };
        var _machine = (stdgo._internal.strings.Strings_trimspace.trimSpace((_machineB : stdgo.GoString)?.__copy__())?.__copy__() : stdgo.GoString);
        var _dirsEntries = stdgo._internal.strings.Strings_split.split((_allDirs : stdgo.GoString)?.__copy__(), ("\n" : stdgo.GoString));
        {};
        var _dirs:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        for (__18 => _dirEntry in _dirsEntries) {
            if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_dirEntry?.__copy__(), ("libraries: =" : stdgo.GoString))) {
                _dirs = stdgo._internal.path.filepath.Filepath_splitlist.splitList(stdgo._internal.strings.Strings_trimprefix.trimPrefix(_dirEntry?.__copy__(), ("libraries: =" : stdgo.GoString))?.__copy__());
                break;
            };
        };
        if ((_dirs.length) == ((0 : stdgo.GoInt))) {
            return;
        };
        var _lastDirs:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        for (__19 => _dir in _dirs) {
            var _goDir = (stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), ("go" : stdgo.GoString), _version?.__copy__())?.__copy__() : stdgo.GoString);
            {
                var __tmp__ = stdgo._internal.os.Os_stat.stat(_goDir?.__copy__()), _fi:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_err == null) && _fi.isDir() : Bool)) {
                    (@:checkr _gd ?? throw "null pointer dereference")._dirs = ((@:checkr _gd ?? throw "null pointer dereference")._dirs.__append__(_goDir?.__copy__()));
                    _goDir = stdgo._internal.path.filepath.Filepath_join.join(_goDir?.__copy__(), _machine?.__copy__())?.__copy__();
                    {
                        {
                            var __tmp__ = stdgo._internal.os.Os_stat.stat(_goDir?.__copy__());
                            _fi = @:tmpset0 __tmp__._0;
                            _err = @:tmpset0 __tmp__._1;
                        };
                        if (((_err == null) && _fi.isDir() : Bool)) {
                            (@:checkr _gd ?? throw "null pointer dereference")._dirs = ((@:checkr _gd ?? throw "null pointer dereference")._dirs.__append__(_goDir?.__copy__()));
                        };
                    };
                };
            };
            {
                var __tmp__ = stdgo._internal.os.Os_stat.stat(_dir?.__copy__()), _fi:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_err == null) && _fi.isDir() : Bool)) {
                    _lastDirs = (_lastDirs.__append__(_dir?.__copy__()));
                };
            };
        };
        (@:checkr _gd ?? throw "null pointer dereference")._dirs = ((@:checkr _gd ?? throw "null pointer dereference")._dirs.__append__(...(_lastDirs : Array<stdgo.GoString>)));
    }
}
