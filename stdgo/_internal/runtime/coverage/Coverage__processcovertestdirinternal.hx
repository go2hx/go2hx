package stdgo._internal.runtime.coverage;
function _processCoverTestDirInternal(_dir:stdgo.GoString, _cfile:stdgo.GoString, _cm:stdgo.GoString, _cpkg:stdgo.GoString, _w:stdgo._internal.io.Io_writer.Writer):stdgo.Error {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _cmode = (stdgo._internal.internal.coverage.Coverage_parsecountermode.parseCounterMode(_cm?.__copy__()) : stdgo._internal.internal.coverage.Coverage_countermode.CounterMode);
            if (_cmode == ((0 : stdgo._internal.internal.coverage.Coverage_countermode.CounterMode))) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("invalid counter mode %q" : stdgo.GoString), stdgo.Go.toInterface(_cm));
            };
            var _ml = stdgo._internal.runtime.coverage.Coverage__getcovmetalist._getCovMetaList();
            if ((_ml.length) == ((0 : stdgo.GoInt))) {} else {
                {
                    var _err = (stdgo._internal.runtime.coverage.Coverage__emitmetadatatodirectory._emitMetaDataToDirectory(_dir?.__copy__(), _ml) : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
                {
                    var _err = (stdgo._internal.runtime.coverage.Coverage__emitcounterdatatodirectory._emitCounterDataToDirectory(_dir?.__copy__()) : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
            };
            var __tmp__ = stdgo._internal.internal.coverage.pods.Pods_collectpods.collectPods((new stdgo.Slice<stdgo.GoString>(1, 1, ...[_dir?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), false), _podlist:stdgo.Slice<stdgo._internal.internal.coverage.pods.Pods_pod.Pod> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("reading from %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_err));
            };
            var _tf:stdgo.Ref<stdgo._internal.os.Os_file.File> = (null : stdgo.Ref<stdgo._internal.os.Os_file.File>);
            var _tfClosed:Bool = false;
            if (_cfile != ((stdgo.Go.str() : stdgo.GoString))) {
                var _err:stdgo.Error = (null : stdgo.Error);
                {
                    var __tmp__ = stdgo._internal.os.Os_create.create(_cfile?.__copy__());
                    _tf = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("internal error: opening coverage data output file %q: %v" : stdgo.GoString), stdgo.Go.toInterface(_cfile), stdgo.Go.toInterface(_err));
                };
                {
                    __deferstack__.unshift({ ran : false, f : () -> ({
                        var a = function():Void {
                            if (!_tfClosed) {
                                _tfClosed = true;
                                @:check2r _tf.close();
                            };
                        };
                        a();
                    }) });
                };
            };
            var _ts = (stdgo.Go.setRef(({ _cm : (stdgo.Go.setRef((new stdgo._internal.internal.coverage.cmerge.Cmerge_merger.Merger() : stdgo._internal.internal.coverage.cmerge.Cmerge_merger.Merger)) : stdgo.Ref<stdgo._internal.internal.coverage.cmerge.Cmerge_merger.Merger>), _cf : stdgo._internal.internal.coverage.cformat.Cformat_newformatter.newFormatter(_cmode), _cmode : _cmode } : stdgo._internal.runtime.coverage.Coverage_t_tstate.T_tstate)) : stdgo.Ref<stdgo._internal.runtime.coverage.Coverage_t_tstate.T_tstate>);
            var _hashstring = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%x" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.runtime.coverage.Coverage__finalhash._finalHash))?.__copy__() : stdgo.GoString);
            var _importpaths = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo._internal.runtime.coverage.Coverage_t__struct_0.T__struct_0>();
                x.__defaultValue__ = () -> ({  } : stdgo._internal.runtime.coverage.Coverage_t__struct_0.T__struct_0);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo._internal.runtime.coverage.Coverage_t__struct_0.T__struct_0>) : stdgo.GoMap<stdgo.GoString, stdgo._internal.runtime.coverage.Coverage_t__struct_0.T__struct_0>);
            for (__0 => _p in _podlist) {
                if (!stdgo._internal.strings.Strings_contains.contains(_p.metaFile?.__copy__(), _hashstring?.__copy__())) {
                    continue;
                };
                {
                    var _err = (@:check2r _ts._processPod(_p?.__copy__(), _importpaths) : stdgo.Error);
                    if (_err != null) {
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return _err;
                        };
                    };
                };
            };
            var _metafilespath = (stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), ("metafiles.txt" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            {
                var __tmp__ = stdgo._internal.os.Os_stat.stat(_metafilespath?.__copy__()), __1:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    {
                        var _err = (@:check2r _ts._readAuxMetaFiles(_metafilespath?.__copy__(), _importpaths) : stdgo.Error);
                        if (_err != null) {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return _err;
                            };
                        };
                    };
                };
            };
            {
                var _err = (@:check2r (@:checkr _ts ?? throw "null pointer dereference")._cf.emitPercent(_w, _cpkg?.__copy__(), true, true) : stdgo.Error);
                if (_err != null) {
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return _err;
                    };
                };
            };
            if ((_tf != null && ((_tf : Dynamic).__nil__ == null || !(_tf : Dynamic).__nil__))) {
                {
                    var _err = (@:check2r (@:checkr _ts ?? throw "null pointer dereference")._cf.emitTextual(stdgo.Go.asInterface(_tf)) : stdgo.Error);
                    if (_err != null) {
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return _err;
                        };
                    };
                };
                _tfClosed = true;
                {
                    var _err = (@:check2r _tf.close() : stdgo.Error);
                    if (_err != null) {
                        {
                            final __ret__:stdgo.Error = stdgo._internal.fmt.Fmt_errorf.errorf(("closing %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_cfile), stdgo.Go.toInterface(_err));
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                };
            };
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
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
                return (null : stdgo.Error);
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
                return (null : stdgo.Error);
            };
        };
    }
