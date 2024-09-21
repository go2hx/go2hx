package _internal.text.template_test;
function _createTestDir(_files:stdgo.Slice<_internal.text.template_test.Template_test_T_templateFile.T_templateFile>):stdgo.GoString {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo._internal.os.Os_mkdirTemp.mkdirTemp(stdgo.Go.str()?.__copy__(), ("template" : stdgo.GoString)), _dir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
            };
            for (__0 => _file in _files) {
                var __tmp__ = stdgo._internal.os.Os_create.create(stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), _file._name?.__copy__())?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
                };
                __deferstack__.unshift(() -> _f.close());
                {
                    var __tmp__ = stdgo._internal.io.Io_writeString.writeString(stdgo.Go.asInterface(_f), _file._contents?.__copy__());
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
                };
            };
            {
                final __ret__:stdgo.GoString = _dir?.__copy__();
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:stdgo.GoString = ("" : stdgo.GoString);
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:stdgo.GoString = ("" : stdgo.GoString);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
