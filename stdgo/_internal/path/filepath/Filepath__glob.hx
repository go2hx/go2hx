package stdgo._internal.path.filepath;
function _glob(_dir:stdgo.GoString, _pattern:stdgo.GoString, _matches:stdgo.Slice<stdgo.GoString>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _m = (null : stdgo.Slice<stdgo.GoString>), _e = (null : stdgo.Error);
        try {
            _m = _matches;
            var __tmp__ = stdgo._internal.os.Os_stat.stat(_dir?.__copy__()), _fi:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : _m, _1 : _e };
            };
            if (!_fi.isDir()) {
                return { _0 : _m, _1 : _e };
            };
            var __tmp__ = stdgo._internal.os.Os_open.open(_dir?.__copy__()), _d:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : _m, _1 : _e };
            };
            {
                final __f__ = @:check2r _d.close;
                __deferstack__.unshift(() -> __f__());
            };
            var __tmp__ = @:check2r _d.readdirnames((-1 : stdgo.GoInt)), _names:stdgo.Slice<stdgo.GoString> = __tmp__._0, __0:stdgo.Error = __tmp__._1;
            stdgo._internal.sort.Sort_strings.strings(_names);
            for (__1 => _n in _names) {
                var __tmp__ = stdgo._internal.path.filepath.Filepath_match.match(_pattern?.__copy__(), _n?.__copy__()), _matched:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    {
                        final __ret__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } = {
                            final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } = { _0 : _m, _1 : _err };
                            _m = __tmp__._0;
                            _e = __tmp__._1;
                            __tmp__;
                        };
                        for (defer in __deferstack__) {
                            __deferstack__.remove(defer);
                            defer();
                        };
                        return __ret__;
                    };
                };
                if (_matched) {
                    _m = (_m.__append__(stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), _n?.__copy__())?.__copy__()));
                };
            };
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                return { _0 : _m, _1 : _e };
            };
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : _m, _1 : _e };
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                __deferstack__.remove(defer);
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return { _0 : _m, _1 : _e };
        };
    }
