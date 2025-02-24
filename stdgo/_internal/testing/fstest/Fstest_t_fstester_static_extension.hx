package stdgo._internal.testing.fstest;
@:keep @:allow(stdgo._internal.testing.fstest.Fstest.T_fsTester_asInterface) class T_fsTester_static_extension {
    @:keep
    @:tdfield
    static public function _checkBadPath( _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_fstester.T_fsTester>, _file:stdgo.GoString, _desc:stdgo.GoString, _open:stdgo.GoString -> stdgo.Error):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_fstester.T_fsTester> = _t;
        var _bad = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[(("/" : stdgo.GoString) + _file?.__copy__() : stdgo.GoString)?.__copy__(), (_file + ("/." : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
        if (_file == (("." : stdgo.GoString))) {
            _bad = (_bad.__append__((("/" : stdgo.GoString) : stdgo.GoString)));
        };
        {
            var _i = (stdgo._internal.strings.Strings_index.index(_file?.__copy__(), ("/" : stdgo.GoString)) : stdgo.GoInt);
            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                _bad = (_bad.__append__((((_file.__slice__(0, _i) : stdgo.GoString) + ("//" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (_file.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), (((_file.__slice__(0, _i) : stdgo.GoString) + ("/./" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (_file.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), (((_file.__slice__(0, _i) : stdgo.GoString) + ("\\" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (_file.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), (((_file.__slice__(0, _i) : stdgo.GoString) + ("/../" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _file?.__copy__() : stdgo.GoString)?.__copy__()));
            };
        };
        {
            var _i = (stdgo._internal.strings.Strings_lastindex.lastIndex(_file?.__copy__(), ("/" : stdgo.GoString)) : stdgo.GoInt);
            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                _bad = (_bad.__append__((((_file.__slice__(0, _i) : stdgo.GoString) + ("//" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (_file.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), (((_file.__slice__(0, _i) : stdgo.GoString) + ("/./" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (_file.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), (((_file.__slice__(0, _i) : stdgo.GoString) + ("\\" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (_file.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), ((_file + ("/../" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (_file.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()));
            };
        };
        for (__2 => _b in _bad) {
            {
                var _err = (_open(_b?.__copy__()) : stdgo.Error);
                if (_err == null) {
                    @:check2r _t._errorf(("%s: %s(%s) succeeded, want error" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_desc), stdgo.Go.toInterface(_b));
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _checkOpen( _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_fstester.T_fsTester>, _file:stdgo.GoString):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_fstester.T_fsTester> = _t;
        @:check2r _t._checkBadPath(_file?.__copy__(), ("Open" : stdgo.GoString), function(_file:stdgo.GoString):stdgo.Error {
            var __tmp__ = (@:checkr _t ?? throw "null pointer dereference")._fsys.open(_file?.__copy__()), _f:stdgo._internal.io.fs.Fs_file.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _f.close();
            };
            return _err;
        });
    }
    @:keep
    @:tdfield
    static public function _checkFileRead( _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_fstester.T_fsTester>, _file:stdgo.GoString, _desc:stdgo.GoString, _data1:stdgo.Slice<stdgo.GoUInt8>, _data2:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_fstester.T_fsTester> = _t;
        if ((_data1 : stdgo.GoString) != ((_data2 : stdgo.GoString))) {
            @:check2r _t._errorf(("%s: %s: different data returned\n\t%q\n\t%q" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_desc), stdgo.Go.toInterface(_data1), stdgo.Go.toInterface(_data2));
            return;
        };
    }
    @:keep
    @:tdfield
    static public function _checkFile( _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_fstester.T_fsTester>, _file:stdgo.GoString):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_fstester.T_fsTester> = _t;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            (@:checkr _t ?? throw "null pointer dereference")._files = ((@:checkr _t ?? throw "null pointer dereference")._files.__append__(_file?.__copy__()));
            var __tmp__ = (@:checkr _t ?? throw "null pointer dereference")._fsys.open(_file?.__copy__()), _f:stdgo._internal.io.fs.Fs_file.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _t._errorf(("%s: Open: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_err));
                return;
            };
            var __tmp__ = stdgo._internal.io.Io_readall.readAll(_f), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _f.close();
                @:check2r _t._errorf(("%s: Open+ReadAll: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_err));
                return;
            };
            {
                var _err = (_f.close() : stdgo.Error);
                if (_err != null) {
                    @:check2r _t._errorf(("%s: Close: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_err));
                };
            };
            _f.close();
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _t ?? throw "null pointer dereference")._fsys) : stdgo._internal.io.fs.Fs_readfilefs.ReadFileFS)) : stdgo._internal.io.fs.Fs_readfilefs.ReadFileFS), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.io.fs.Fs_readfilefs.ReadFileFS), _1 : false };
                }, _fsys = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    var __tmp__ = _fsys.readFile(_file?.__copy__()), _data2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        @:check2r _t._errorf(("%s: fsys.ReadFile: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_err));
                        return;
                    };
                    @:check2r _t._checkFileRead(_file?.__copy__(), ("ReadAll vs fsys.ReadFile" : stdgo.GoString), _data, _data2);
                    for (_i => _ in _data2) {
                        _data2[(_i : stdgo.GoInt)]++;
                    };
                    {
                        var __tmp__ = _fsys.readFile(_file?.__copy__());
                        _data2 = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    if (_err != null) {
                        @:check2r _t._errorf(("%s: second call to fsys.ReadFile: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_err));
                        return;
                    };
                    @:check2r _t._checkFileRead(_file?.__copy__(), ("Readall vs second fsys.ReadFile" : stdgo.GoString), _data, _data2);
                    @:check2r _t._checkBadPath(_file?.__copy__(), ("ReadFile" : stdgo.GoString), function(_name:stdgo.GoString):stdgo.Error {
                        var __tmp__ = _fsys.readFile(_name?.__copy__()), __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        return _err;
                    });
                };
            };
            var __tmp__ = stdgo._internal.io.fs.Fs_readfile.readFile((@:checkr _t ?? throw "null pointer dereference")._fsys, _file?.__copy__()), _data2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _t._errorf(("%s: fs.ReadFile: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_err));
                return;
            };
            @:check2r _t._checkFileRead(_file?.__copy__(), ("ReadAll vs fs.ReadFile" : stdgo.GoString), _data, _data2);
            {
                var __tmp__ = (@:checkr _t ?? throw "null pointer dereference")._fsys.open(_file?.__copy__());
                _f = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                @:check2r _t._errorf(("%s: second Open: %v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_err));
                return;
            };
            {
                final __f__ = _f.close;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                var _err = (stdgo._internal.testing.iotest.Iotest_testreader.testReader(_f, _data) : stdgo.Error);
                if (_err != null) {
                    @:check2r _t._errorf(("%s: failed TestReader:\n\t%s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(stdgo._internal.strings.Strings_replaceall.replaceAll(_err.error()?.__copy__(), ("\n" : stdgo.GoString), ("\n\t" : stdgo.GoString))));
                };
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
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _checkDirList( _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_fstester.T_fsTester>, _dir:stdgo.GoString, _desc:stdgo.GoString, _list1:stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>, _list2:stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_fstester.T_fsTester> = _t;
        var _old = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo._internal.io.fs.Fs_direntry.DirEntry>();
            x.__defaultValue__ = () -> (null : stdgo._internal.io.fs.Fs_direntry.DirEntry);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo._internal.io.fs.Fs_direntry.DirEntry>) : stdgo.GoMap<stdgo.GoString, stdgo._internal.io.fs.Fs_direntry.DirEntry>);
        var _checkMode = (function(_entry:stdgo._internal.io.fs.Fs_direntry.DirEntry):Void {
            if (_entry.isDir() != (((_entry.type() & (-2147483648u32 : stdgo._internal.io.fs.Fs_filemode.FileMode) : stdgo._internal.io.fs.Fs_filemode.FileMode) != (0u32 : stdgo._internal.io.fs.Fs_filemode.FileMode)))) {
                if (_entry.isDir()) {
                    @:check2r _t._errorf(("%s: ReadDir returned %s with IsDir() = true, Type() & ModeDir = 0" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_entry.name()));
                } else {
                    @:check2r _t._errorf(("%s: ReadDir returned %s with IsDir() = false, Type() & ModeDir = ModeDir" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_entry.name()));
                };
            };
        } : stdgo._internal.io.fs.Fs_direntry.DirEntry -> Void);
        for (__2 => _entry1 in _list1) {
            _old[_entry1.name()] = _entry1;
            _checkMode(_entry1);
        };
        var _diffs:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        for (__3 => _entry2 in _list2) {
            var _entry1 = (_old[_entry2.name()] ?? (null : stdgo._internal.io.fs.Fs_direntry.DirEntry) : stdgo._internal.io.fs.Fs_direntry.DirEntry);
            if (_entry1 == null) {
                _checkMode(_entry2);
                _diffs = (_diffs.__append__((("+ " : stdgo.GoString) + stdgo._internal.testing.fstest.Fstest__formatentry._formatEntry(_entry2)?.__copy__() : stdgo.GoString)?.__copy__()));
                continue;
            };
            if (stdgo._internal.testing.fstest.Fstest__formatentry._formatEntry(_entry1) != (stdgo._internal.testing.fstest.Fstest__formatentry._formatEntry(_entry2))) {
                _diffs = (_diffs.__append__((("- " : stdgo.GoString) + stdgo._internal.testing.fstest.Fstest__formatentry._formatEntry(_entry1)?.__copy__() : stdgo.GoString)?.__copy__(), (("+ " : stdgo.GoString) + stdgo._internal.testing.fstest.Fstest__formatentry._formatEntry(_entry2)?.__copy__() : stdgo.GoString)?.__copy__()));
            };
            if (_old != null) _old.__remove__(_entry2.name());
        };
        for (__4 => _entry1 in _old) {
            _diffs = (_diffs.__append__((("- " : stdgo.GoString) + stdgo._internal.testing.fstest.Fstest__formatentry._formatEntry(_entry1)?.__copy__() : stdgo.GoString)?.__copy__()));
        };
        if ((_diffs.length) == ((0 : stdgo.GoInt))) {
            return;
        };
        stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_diffs), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            var _fi = stdgo._internal.strings.Strings_fields.fields(_diffs[(_i : stdgo.GoInt)]?.__copy__());
            var _fj = stdgo._internal.strings.Strings_fields.fields(_diffs[(_j : stdgo.GoInt)]?.__copy__());
            return (((_fi[(1 : stdgo.GoInt)] + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _fj[(0 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) < ((_fj[(1 : stdgo.GoInt)] + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _fi[(0 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) : Bool);
        });
        @:check2r _t._errorf(("%s: diff %s:\n\t%s" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_desc), stdgo.Go.toInterface(stdgo._internal.strings.Strings_join.join(_diffs, ("\n\t" : stdgo.GoString))));
    }
    @:keep
    @:tdfield
    static public function _checkStat( _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_fstester.T_fsTester>, _path:stdgo.GoString, _entry:stdgo._internal.io.fs.Fs_direntry.DirEntry):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_fstester.T_fsTester> = _t;
        var __tmp__ = (@:checkr _t ?? throw "null pointer dereference")._fsys.open(_path?.__copy__()), _file:stdgo._internal.io.fs.Fs_file.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t._errorf(("%s: Open: %v" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
            return;
        };
        var __tmp__ = _file.stat(), _info:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _file.close();
        if (_err != null) {
            @:check2r _t._errorf(("%s: Stat: %v" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
            return;
        };
        var _fentry = (stdgo._internal.testing.fstest.Fstest__formatentry._formatEntry(_entry)?.__copy__() : stdgo.GoString);
        var _fientry = (stdgo._internal.testing.fstest.Fstest__formatinfoentry._formatInfoEntry(_info)?.__copy__() : stdgo.GoString);
        if (((_fentry != _fientry) && ((_entry.type() & (134217728u32 : stdgo._internal.io.fs.Fs_filemode.FileMode) : stdgo._internal.io.fs.Fs_filemode.FileMode) == (0u32 : stdgo._internal.io.fs.Fs_filemode.FileMode)) : Bool)) {
            @:check2r _t._errorf(("%s: mismatch:\n\tentry = %s\n\tfile.Stat() = %s" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_fentry), stdgo.Go.toInterface(_fientry));
        };
        var __tmp__ = _entry.info(), _einfo:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t._errorf(("%s: entry.Info: %v" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
            return;
        };
        var _finfo = (stdgo._internal.testing.fstest.Fstest__formatinfo._formatInfo(_info)?.__copy__() : stdgo.GoString);
        if ((_entry.type() & (134217728u32 : stdgo._internal.io.fs.Fs_filemode.FileMode) : stdgo._internal.io.fs.Fs_filemode.FileMode) != ((0u32 : stdgo._internal.io.fs.Fs_filemode.FileMode))) {
            var _feentry = (stdgo._internal.testing.fstest.Fstest__formatinfoentry._formatInfoEntry(_einfo)?.__copy__() : stdgo.GoString);
            if (_fentry != (_feentry)) {
                @:check2r _t._errorf(("%s: mismatch\n\tentry = %s\n\tentry.Info() = %s\n" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_fentry), stdgo.Go.toInterface(_feentry));
            };
        } else {
            var _feinfo = (stdgo._internal.testing.fstest.Fstest__formatinfo._formatInfo(_einfo)?.__copy__() : stdgo.GoString);
            if (_feinfo != (_finfo)) {
                @:check2r _t._errorf(("%s: mismatch:\n\tentry.Info() = %s\n\tfile.Stat() = %s\n" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_feinfo), stdgo.Go.toInterface(_finfo));
            };
        };
        var __tmp__ = stdgo._internal.io.fs.Fs_stat.stat((@:checkr _t ?? throw "null pointer dereference")._fsys, _path?.__copy__()), _info2:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t._errorf(("%s: fs.Stat: %v" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
            return;
        };
        var _finfo2 = (stdgo._internal.testing.fstest.Fstest__formatinfo._formatInfo(_info2)?.__copy__() : stdgo.GoString);
        if (_finfo2 != (_finfo)) {
            @:check2r _t._errorf(("%s: fs.Stat(...) = %s\n\twant %s" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_finfo2), stdgo.Go.toInterface(_finfo));
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _t ?? throw "null pointer dereference")._fsys) : stdgo._internal.io.fs.Fs_statfs.StatFS)) : stdgo._internal.io.fs.Fs_statfs.StatFS), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.fs.Fs_statfs.StatFS), _1 : false };
            }, _fsys = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                var __tmp__ = _fsys.stat(_path?.__copy__()), _info2:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    @:check2r _t._errorf(("%s: fsys.Stat: %v" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
                    return;
                };
                var _finfo2 = (stdgo._internal.testing.fstest.Fstest__formatinfo._formatInfo(_info2)?.__copy__() : stdgo.GoString);
                if (_finfo2 != (_finfo)) {
                    @:check2r _t._errorf(("%s: fsys.Stat(...) = %s\n\twant %s" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_finfo2), stdgo.Go.toInterface(_finfo));
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _checkGlob( _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_fstester.T_fsTester>, _dir:stdgo.GoString, _list:stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_fstester.T_fsTester> = _t;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _t ?? throw "null pointer dereference")._fsys) : stdgo._internal.io.fs.Fs_globfs.GlobFS)) : stdgo._internal.io.fs.Fs_globfs.GlobFS), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.fs.Fs_globfs.GlobFS), _1 : false };
            }, __2 = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                return;
            };
        };
        var _glob:stdgo.GoString = ("" : stdgo.GoString);
        if (_dir != (("." : stdgo.GoString))) {
            var _elem = stdgo._internal.strings.Strings_split.split(_dir?.__copy__(), ("/" : stdgo.GoString));
            for (_i => _e in _elem) {
                var _pattern:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
                for (_j => _r in _e) {
                    if (((((_r == ((42 : stdgo.GoInt32)) || _r == ((63 : stdgo.GoInt32)) : Bool) || _r == ((92 : stdgo.GoInt32)) : Bool) || _r == ((91 : stdgo.GoInt32)) : Bool) || (_r == (45 : stdgo.GoInt32)) : Bool)) {
                        _pattern = (_pattern.__append__((92 : stdgo.GoInt32), _r));
                        continue;
                    };
                    {
                        final __value__ = (((_i + _j : stdgo.GoInt)) % (5 : stdgo.GoInt) : stdgo.GoInt);
                        if (__value__ == ((0 : stdgo.GoInt))) {
                            _pattern = (_pattern.__append__(_r));
                        } else if (__value__ == ((1 : stdgo.GoInt))) {
                            _pattern = (_pattern.__append__((91 : stdgo.GoInt32), _r, (93 : stdgo.GoInt32)));
                        } else if (__value__ == ((2 : stdgo.GoInt))) {
                            _pattern = (_pattern.__append__((91 : stdgo.GoInt32), _r, (45 : stdgo.GoInt32), _r, (93 : stdgo.GoInt32)));
                        } else if (__value__ == ((3 : stdgo.GoInt))) {
                            _pattern = (_pattern.__append__((91 : stdgo.GoInt32), (92 : stdgo.GoInt32), _r, (93 : stdgo.GoInt32)));
                        } else if (__value__ == ((4 : stdgo.GoInt))) {
                            _pattern = (_pattern.__append__((91 : stdgo.GoInt32), (92 : stdgo.GoInt32), _r, (45 : stdgo.GoInt32), (92 : stdgo.GoInt32), _r, (93 : stdgo.GoInt32)));
                        };
                    };
                };
                _elem[(_i : stdgo.GoInt)] = (_pattern : stdgo.GoString)?.__copy__();
            };
            _glob = (stdgo._internal.strings.Strings_join.join(_elem, ("/" : stdgo.GoString)) + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        {
            var __tmp__ = (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _t ?? throw "null pointer dereference")._fsys) : stdgo._internal.io.fs.Fs_globfs.GlobFS)) : stdgo._internal.io.fs.Fs_globfs.GlobFS).glob((_glob + ("nonexist/[]" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()), __3:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                @:check2r _t._errorf(("%s: Glob(%#q): bad pattern not detected" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface((_glob + ("nonexist/[]" : stdgo.GoString)?.__copy__() : stdgo.GoString)));
            };
        };
        var _c = ((97 : stdgo.GoInt32) : stdgo.GoInt32);
        while ((_c <= (122 : stdgo.GoInt32) : Bool)) {
            var __0 = (false : Bool), __1 = (false : Bool);
var _haveNot = __1, _have = __0;
for (__4 => _d in _list) {
                if (stdgo._internal.strings.Strings_containsrune.containsRune(_d.name()?.__copy__(), _c)) {
                    _have = true;
                } else {
                    _haveNot = true;
                };
            };
if ((_have && _haveNot : Bool)) {
                break;
            };
            _c++;
        };
        if ((_c > (122 : stdgo.GoInt32) : Bool)) {
            _c = (97 : stdgo.GoInt32);
        };
        _glob = (_glob + (((("*" : stdgo.GoString) + (_c : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("*" : stdgo.GoString)?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _want:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        for (__4 => _d in _list) {
            if (stdgo._internal.strings.Strings_containsrune.containsRune(_d.name()?.__copy__(), _c)) {
                _want = (_want.__append__(stdgo._internal.path.Path_join.join(_dir?.__copy__(), _d.name()?.__copy__())?.__copy__()));
            };
        };
        var __tmp__ = (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _t ?? throw "null pointer dereference")._fsys) : stdgo._internal.io.fs.Fs_globfs.GlobFS)) : stdgo._internal.io.fs.Fs_globfs.GlobFS).glob(_glob?.__copy__()), _names:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t._errorf(("%s: Glob(%#q): %v" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_glob), stdgo.Go.toInterface(_err));
            return;
        };
        if (stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_names))) {
            return;
        };
        if (!stdgo._internal.sort.Sort_stringsaresorted.stringsAreSorted(_names)) {
            @:check2r _t._errorf(("%s: Glob(%#q): unsorted output:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_glob), stdgo.Go.toInterface(stdgo._internal.strings.Strings_join.join(_names, ("\n" : stdgo.GoString))));
            stdgo._internal.sort.Sort_strings.strings(_names);
        };
        var _problems:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        while ((((_want.length) > (0 : stdgo.GoInt) : Bool) || ((_names.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            if (((((_want.length) > (0 : stdgo.GoInt) : Bool) && ((_names.length) > (0 : stdgo.GoInt) : Bool) : Bool) && (_want[(0 : stdgo.GoInt)] == _names[(0 : stdgo.GoInt)]) : Bool)) {
                {
                    final __tmp__0 = (_want.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
                    final __tmp__1 = (_names.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
                    _want = __tmp__0;
                    _names = __tmp__1;
                };
            } else if ((((_want.length) > (0 : stdgo.GoInt) : Bool) && (((_names.length == (0 : stdgo.GoInt)) || (_want[(0 : stdgo.GoInt)] < _names[(0 : stdgo.GoInt)] : Bool) : Bool)) : Bool)) {
                _problems = (_problems.__append__((("missing: " : stdgo.GoString) + _want[(0 : stdgo.GoInt)]?.__copy__() : stdgo.GoString)?.__copy__()));
                _want = (_want.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
            } else {
                _problems = (_problems.__append__((("extra: " : stdgo.GoString) + _names[(0 : stdgo.GoInt)]?.__copy__() : stdgo.GoString)?.__copy__()));
                _names = (_names.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
            };
        };
        @:check2r _t._errorf(("%s: Glob(%#q): wrong output:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_glob), stdgo.Go.toInterface(stdgo._internal.strings.Strings_join.join(_problems, ("\n" : stdgo.GoString))));
    }
    @:keep
    @:tdfield
    static public function _checkDir( _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_fstester.T_fsTester>, _dir:stdgo.GoString):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_fstester.T_fsTester> = _t;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            (@:checkr _t ?? throw "null pointer dereference")._dirs = ((@:checkr _t ?? throw "null pointer dereference")._dirs.__append__(_dir?.__copy__()));
            var _d = (@:check2r _t._openDir(_dir?.__copy__()) : stdgo._internal.io.fs.Fs_readdirfile.ReadDirFile);
            if (_d == null) {
                return;
            };
            var __tmp__ = _d.readDir((-1 : stdgo.GoInt)), _list:stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _d.close();
                @:check2r _t._errorf(("%s: ReadDir(-1): %v" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_err));
                return;
            };
            var _prefix:stdgo.GoString = ("" : stdgo.GoString);
            if (_dir == (("." : stdgo.GoString))) {
                _prefix = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
            } else {
                _prefix = (_dir + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
            };
            for (__2 => _info in _list) {
                var _name = (_info.name()?.__copy__() : stdgo.GoString);
                if (_name == (("." : stdgo.GoString)) || _name == ((".." : stdgo.GoString)) || _name == ((stdgo.Go.str() : stdgo.GoString))) {
                    @:check2r _t._errorf(("%s: ReadDir: child has invalid name: %#q" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_name));
                    continue;
                } else if (stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ("/" : stdgo.GoString))) {
                    @:check2r _t._errorf(("%s: ReadDir: child name contains slash: %#q" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_name));
                    continue;
                } else if (stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ("\\" : stdgo.GoString))) {
                    @:check2r _t._errorf(("%s: ReadDir: child name contains backslash: %#q" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_name));
                    continue;
                };
                var _path = ((_prefix + _name?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                @:check2r _t._checkStat(_path?.__copy__(), _info);
                @:check2r _t._checkOpen(_path?.__copy__());
                if (_info.isDir()) {
                    @:check2r _t._checkDir(_path?.__copy__());
                } else {
                    @:check2r _t._checkFile(_path?.__copy__());
                };
            };
            var __tmp__ = _d.readDir((-1 : stdgo.GoInt)), _list2:stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((((_list2.length) > (0 : stdgo.GoInt) : Bool) || (_err != null) : Bool)) {
                _d.close();
                @:check2r _t._errorf(("%s: ReadDir(-1) at EOF = %d entries, %v, wanted 0 entries, nil" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface((_list2.length)), stdgo.Go.toInterface(_err));
                return;
            };
            {
                var __tmp__ = _d.readDir((1 : stdgo.GoInt));
                _list2 = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if ((((_list2.length) > (0 : stdgo.GoInt) : Bool) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) : Bool)) {
                _d.close();
                @:check2r _t._errorf(("%s: ReadDir(1) at EOF = %d entries, %v, wanted 0 entries, EOF" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface((_list2.length)), stdgo.Go.toInterface(_err));
                return;
            };
            {
                var _err = (_d.close() : stdgo.Error);
                if (_err != null) {
                    @:check2r _t._errorf(("%s: Close: %v" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_err));
                };
            };
            _d.close();
            {
                _d = @:check2r _t._openDir(_dir?.__copy__());
                if (_d == null) {
                    return;
                };
            };
            {
                final __f__ = _d.close;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                var __tmp__ = _d.readDir((-1 : stdgo.GoInt));
                _list2 = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                @:check2r _t._errorf(("%s: second Open+ReadDir(-1): %v" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_err));
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            @:check2r _t._checkDirList(_dir?.__copy__(), ("first Open+ReadDir(-1) vs second Open+ReadDir(-1)" : stdgo.GoString), _list, _list2);
            {
                _d = @:check2r _t._openDir(_dir?.__copy__());
                if (_d == null) {
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return;
                    };
                };
            };
            {
                final __f__ = _d.close;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            _list2 = (null : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>);
            while (true) {
                var _n = (1 : stdgo.GoInt);
                if (((_list2.length) > (0 : stdgo.GoInt) : Bool)) {
                    _n = (2 : stdgo.GoInt);
                };
                var __tmp__ = _d.readDir(_n), _frag:stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_frag.length) > _n : Bool)) {
                    @:check2r _t._errorf(("%s: third Open: ReadDir(%d) after %d: %d entries (too many)" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_list2.length)), stdgo.Go.toInterface((_frag.length)));
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return;
                    };
                };
                _list2 = (_list2.__append__(...(_frag : Array<stdgo._internal.io.fs.Fs_direntry.DirEntry>)));
                if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                    break;
                };
                if (_err != null) {
                    @:check2r _t._errorf(("%s: third Open: ReadDir(%d) after %d: %v" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_list2.length)), stdgo.Go.toInterface(_err));
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return;
                    };
                };
                if (_n == ((0 : stdgo.GoInt))) {
                    @:check2r _t._errorf(("%s: third Open: ReadDir(%d) after %d: 0 entries but nil error" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_list2.length)));
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return;
                    };
                };
            };
            @:check2r _t._checkDirList(_dir?.__copy__(), ("first Open+ReadDir(-1) vs third Open+ReadDir(1,2) loop" : stdgo.GoString), _list, _list2);
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _t ?? throw "null pointer dereference")._fsys) : stdgo._internal.io.fs.Fs_readdirfs.ReadDirFS)) : stdgo._internal.io.fs.Fs_readdirfs.ReadDirFS), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.io.fs.Fs_readdirfs.ReadDirFS), _1 : false };
                }, _fsys = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    var __tmp__ = _fsys.readDir(_dir?.__copy__()), _list2:stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        @:check2r _t._errorf(("%s: fsys.ReadDir: %v" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_err));
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return;
                        };
                    };
                    @:check2r _t._checkDirList(_dir?.__copy__(), ("first Open+ReadDir(-1) vs fsys.ReadDir" : stdgo.GoString), _list, _list2);
                    {
                        var _i = (0 : stdgo.GoInt);
                        while (((_i + (1 : stdgo.GoInt) : stdgo.GoInt) < (_list2.length) : Bool)) {
                            if ((_list2[(_i : stdgo.GoInt)].name() >= _list2[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)].name() : Bool)) {
                                @:check2r _t._errorf(("%s: fsys.ReadDir: list not sorted: %s before %s" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_list2[(_i : stdgo.GoInt)].name()), stdgo.Go.toInterface(_list2[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)].name()));
                            };
                            _i++;
                        };
                    };
                };
            };
            {
                var __tmp__ = stdgo._internal.io.fs.Fs_readdir.readDir((@:checkr _t ?? throw "null pointer dereference")._fsys, _dir?.__copy__());
                _list2 = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                @:check2r _t._errorf(("%s: fs.ReadDir: %v" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_err));
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            @:check2r _t._checkDirList(_dir?.__copy__(), ("first Open+ReadDir(-1) vs fs.ReadDir" : stdgo.GoString), _list, _list2);
            {
                var _i = (0 : stdgo.GoInt);
                while (((_i + (1 : stdgo.GoInt) : stdgo.GoInt) < (_list2.length) : Bool)) {
                    if ((_list2[(_i : stdgo.GoInt)].name() >= _list2[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)].name() : Bool)) {
                        @:check2r _t._errorf(("%s: fs.ReadDir: list not sorted: %s before %s" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_list2[(_i : stdgo.GoInt)].name()), stdgo.Go.toInterface(_list2[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)].name()));
                    };
                    _i++;
                };
            };
            @:check2r _t._checkGlob(_dir?.__copy__(), _list2);
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
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _openDir( _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_fstester.T_fsTester>, _dir:stdgo.GoString):stdgo._internal.io.fs.Fs_readdirfile.ReadDirFile {
        @:recv var _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_fstester.T_fsTester> = _t;
        var __tmp__ = (@:checkr _t ?? throw "null pointer dereference")._fsys.open(_dir?.__copy__()), _f:stdgo._internal.io.fs.Fs_file.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t._errorf(("%s: Open: %v" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_err));
            return (null : stdgo._internal.io.fs.Fs_readdirfile.ReadDirFile);
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_f) : stdgo._internal.io.fs.Fs_readdirfile.ReadDirFile)) : stdgo._internal.io.fs.Fs_readdirfile.ReadDirFile), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.io.fs.Fs_readdirfile.ReadDirFile), _1 : false };
        }, _d = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            _f.close();
            @:check2r _t._errorf(("%s: Open returned File type %T, not a fs.ReadDirFile" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_f));
            return (null : stdgo._internal.io.fs.Fs_readdirfile.ReadDirFile);
        };
        return _d;
    }
    @:keep
    @:tdfield
    static public function _errorf( _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_fstester.T_fsTester>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_fstester.T_fsTester> = _t;
        if ((((@:checkr _t ?? throw "null pointer dereference")._errText.length) > (0 : stdgo.GoInt) : Bool)) {
            (@:checkr _t ?? throw "null pointer dereference")._errText = ((@:checkr _t ?? throw "null pointer dereference")._errText.__append__((10 : stdgo.GoUInt8)));
        };
        (@:checkr _t ?? throw "null pointer dereference")._errText = ((@:checkr _t ?? throw "null pointer dereference")._errText.__append__(...(stdgo._internal.fmt.Fmt_sprintf.sprintf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>)) : Array<stdgo.GoUInt8>)));
    }
}
