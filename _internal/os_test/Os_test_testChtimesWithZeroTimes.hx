package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testChtimesWithZeroTimes(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _file = _internal.os_test.Os_test__newFile._newFile(("chtimes-with-zero" : stdgo.GoString), _t);
            var __tmp__ = _file.write((("hello, world\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Write: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            var _fName = (_file.name()?.__copy__() : stdgo.GoString);
            {
                var _a0 = _file.name();
                __deferstack__.unshift(() -> stdgo._internal.os.Os_remove.remove(_a0?.__copy__()));
            };
            _err = _file.close();
            if (_err != null) {
                _t.errorf(("%v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            var __tmp__ = stdgo._internal.os.Os_stat.stat(_fName?.__copy__()), _fs:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            var _startAtime = (stdgo._internal.os.Os_atime.atime(_fs)?.__copy__() : stdgo._internal.time.Time_Time.Time);
            var _startMtime = (_fs.modTime()?.__copy__() : stdgo._internal.time.Time_Time.Time);
            {
                final __value__ = ("js" : stdgo.GoString);
                if (__value__ == (("js" : stdgo.GoString))) {
                    _startAtime = _startAtime.truncate((1000000000i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__();
                    _startMtime = _startMtime.truncate((1000000000i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__();
                };
            };
            var _at0 = (_startAtime?.__copy__() : stdgo._internal.time.Time_Time.Time);
            var _mt0 = (_startMtime?.__copy__() : stdgo._internal.time.Time_Time.Time);
            var _t0 = (_startMtime.truncate((1000000000i64 : stdgo._internal.time.Time_Duration.Duration)).add((3600000000000i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__() : stdgo._internal.time.Time_Time.Time);
            var _tests = (new stdgo.Slice<_internal.os_test.Os_test_T__struct_3.T__struct_3>(4, 4, ...[({ _aTime : (new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time), _mTime : (new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time), _wantATime : _startAtime?.__copy__(), _wantMTime : _startMtime?.__copy__() } : _internal.os_test.Os_test_T__struct_3.T__struct_3), ({ _aTime : _t0.add((200000000000i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__(), _mTime : (new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time), _wantATime : _t0.add((200000000000i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__(), _wantMTime : _startMtime?.__copy__() } : _internal.os_test.Os_test_T__struct_3.T__struct_3), ({ _aTime : (new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time), _mTime : _t0.add((100000000000i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__(), _wantATime : _t0.add((200000000000i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__(), _wantMTime : _t0.add((100000000000i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__() } : _internal.os_test.Os_test_T__struct_3.T__struct_3), ({ _aTime : _t0.add((300000000000i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__(), _mTime : _t0.add((100000000000i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__(), _wantATime : _t0.add((300000000000i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__(), _wantMTime : _t0.add((100000000000i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__() } : _internal.os_test.Os_test_T__struct_3.T__struct_3)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _aTime : ({} : stdgo._internal.time.Time_Time.Time), _mTime : ({} : stdgo._internal.time.Time_Time.Time), _wantATime : ({} : stdgo._internal.time.Time_Time.Time), _wantMTime : ({} : stdgo._internal.time.Time_Time.Time) } : _internal.os_test.Os_test_T__struct_3.T__struct_3)])) : stdgo.Slice<_internal.os_test.Os_test_T__struct_3.T__struct_3>);
            for (__1 => _tt in _tests) {
                {
                    var _err = (stdgo._internal.os.Os_chtimes.chtimes(_fName?.__copy__(), _tt._aTime?.__copy__(), _tt._mTime?.__copy__()) : stdgo.Error);
                    if (_err != null) {
                        _t.error(stdgo.Go.toInterface(_err));
                    };
                };
                {
                    var __tmp__ = stdgo._internal.os.Os_stat.stat(_fName?.__copy__());
                    _fs = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    _t.error(stdgo.Go.toInterface(_err));
                };
                _at0 = stdgo._internal.os.Os_atime.atime(_fs)?.__copy__();
                _mt0 = _fs.modTime()?.__copy__();
                {
                    var __0 = (_at0?.__copy__() : stdgo._internal.time.Time_Time.Time), __1 = (_tt._wantATime?.__copy__() : stdgo._internal.time.Time_Time.Time);
var _want = __1, _got = __0;
                    if (!_got.equal(_want?.__copy__())) {
                        var _errormsg = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("AccessTime mismatch with values ATime:%q-MTime:%q\ngot:  %q\nwant: %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._aTime)), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._mTime)), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)))?.__copy__() : stdgo.GoString);
                        {
                            final __value__ = ("js" : stdgo.GoString);
                            if (__value__ == (("plan9" : stdgo.GoString))) {} else if (__value__ == (("windows" : stdgo.GoString))) {
                                _t.error(stdgo.Go.toInterface(_errormsg));
                            } else {
                                {
                                    var __0 = (_at0?.__copy__() : stdgo._internal.time.Time_Time.Time), __1 = (_tt._wantATime?.__copy__() : stdgo._internal.time.Time_Time.Time);
var _want = __1, _got = __0;
                                    if (!_got.equal(_want?.__copy__())) {
                                        var __tmp__ = stdgo._internal.os.Os_readFile.readFile(("/bin/mounts" : stdgo.GoString)), _mounts:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                        if (_err != null) {
                                            {
                                                var __tmp__ = stdgo._internal.os.Os_readFile.readFile(("/etc/mtab" : stdgo.GoString));
                                                _mounts = __tmp__._0;
                                                _err = __tmp__._1;
                                            };
                                        };
                                        if (stdgo._internal.strings.Strings_contains.contains((_mounts : stdgo.GoString)?.__copy__(), ("noatime" : stdgo.GoString))) {
                                            _t.log(stdgo.Go.toInterface(_errormsg));
                                            _t.log(stdgo.Go.toInterface(("A filesystem is mounted with noatime; ignoring." : stdgo.GoString)));
                                        } else {
                                            {
                                                final __value__ = ("js" : stdgo.GoString);
                                                if (__value__ == (("netbsd" : stdgo.GoString)) || __value__ == (("dragonfly" : stdgo.GoString))) {
                                                    if (stdgo._internal.strings.Strings_contains.contains(("wasm" : stdgo.GoString), ("64" : stdgo.GoString))) {
                                                        _t.log(stdgo.Go.toInterface(_errormsg));
                                                        _t.log(stdgo.Go.toInterface(("Filesystem might not support atime changes; ignoring." : stdgo.GoString)));
                                                    };
                                                } else {
                                                    _t.error(stdgo.Go.toInterface(_errormsg));
                                                };
                                            };
                                        };
                                    };
                                };
                            };
                        };
                    };
                };
                {
                    var __0 = (_mt0?.__copy__() : stdgo._internal.time.Time_Time.Time), __1 = (_tt._wantMTime?.__copy__() : stdgo._internal.time.Time_Time.Time);
var _want = __1, _got = __0;
                    if (!_got.equal(_want?.__copy__())) {
                        var _errormsg = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("ModTime mismatch with values ATime:%q-MTime:%q\ngot:  %q\nwant: %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._aTime)), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._mTime)), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)))?.__copy__() : stdgo.GoString);
                        {
                            final __value__ = ("js" : stdgo.GoString);
                            if (__value__ == (("dragonfly" : stdgo.GoString))) {
                                _t.log(stdgo.Go.toInterface(_errormsg));
                                _t.log(stdgo.Go.toInterface(("Mtime is always updated; ignoring." : stdgo.GoString)));
                            } else {
                                _t.error(stdgo.Go.toInterface(_errormsg));
                            };
                        };
                    };
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
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
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
