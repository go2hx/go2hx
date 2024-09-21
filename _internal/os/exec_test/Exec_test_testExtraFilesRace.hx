package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function testExtraFilesRace(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (false) {
            _internal.os.exec_test.Exec_test__maySkipHelperCommand._maySkipHelperCommand(("describefiles" : stdgo.GoString));
            _t.skip(stdgo.Go.toInterface(("no operating system support; skipping" : stdgo.GoString)));
        };
        _t.parallel();
        var _listen = (function():stdgo._internal.net.Net_Listener.Listener {
            var __tmp__ = stdgo._internal.net.Net_listen.listen(("tcp" : stdgo.GoString), ("127.0.0.1:0" : stdgo.GoString)), _ln:stdgo._internal.net.Net_Listener.Listener = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            return _ln;
        } : () -> stdgo._internal.net.Net_Listener.Listener);
        var _listenerFile = function(_ln:stdgo._internal.net.Net_Listener.Listener):stdgo.Ref<stdgo._internal.os.Os_File.File> {
            var __tmp__ = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_ln) : stdgo.Ref<stdgo._internal.net.Net_TCPListener.TCPListener>)) : stdgo.Ref<stdgo._internal.net.Net_TCPListener.TCPListener>).file(), _f:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            return _f;
        };
        var _runCommand = function(_c:stdgo.Ref<stdgo._internal.os.exec.Exec_Cmd.Cmd>, _out:stdgo.Chan<stdgo.GoString>):Void {
            var __tmp__ = _c.combinedOutput(), _bout:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _out.__send__((("ERROR:" : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString));
            } else {
                _out.__send__((_bout : stdgo.GoString));
            };
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                if ((stdgo._internal.testing.Testing_short.short() && (_i >= (3 : stdgo.GoInt) : Bool) : Bool)) {
                    break;
                };
                var _la = (_listen() : stdgo._internal.net.Net_Listener.Listener);
                var _ca = _internal.os.exec_test.Exec_test__helperCommand._helperCommand(_t, ("describefiles" : stdgo.GoString));
                _ca.extraFiles = (new stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os_File.File>>(1, 1, ...[_listenerFile(_la)]) : stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os_File.File>>);
                var _lb = (_listen() : stdgo._internal.net.Net_Listener.Listener);
                var _cb = _internal.os.exec_test.Exec_test__helperCommand._helperCommand(_t, ("describefiles" : stdgo.GoString));
                _cb.extraFiles = (new stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os_File.File>>(1, 1, ...[_listenerFile(_lb)]) : stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os_File.File>>);
                var _ares = (new stdgo.Chan<stdgo.GoString>(0, () -> ("" : stdgo.GoString)) : stdgo.Chan<stdgo.GoString>);
                var _bres = (new stdgo.Chan<stdgo.GoString>(0, () -> ("" : stdgo.GoString)) : stdgo.Chan<stdgo.GoString>);
                stdgo.Go.routine(() -> _runCommand(_ca, _ares));
                stdgo.Go.routine(() -> _runCommand(_cb, _bres));
                {
                    var __0 = (_ares.__get__()?.__copy__() : stdgo.GoString), __1 = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("fd3: listener %s\n" : stdgo.GoString), stdgo.Go.toInterface(_la.addr()))?.__copy__() : stdgo.GoString);
var _want = __1, _got = __0;
                    if (_got != (_want)) {
                        _t.errorf(("iteration %d, process A got:\n%s\nwant:\n%s\n" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                    };
                };
                {
                    var __0 = (_bres.__get__()?.__copy__() : stdgo.GoString), __1 = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("fd3: listener %s\n" : stdgo.GoString), stdgo.Go.toInterface(_lb.addr()))?.__copy__() : stdgo.GoString);
var _want = __1, _got = __0;
                    if (_got != (_want)) {
                        _t.errorf(("iteration %d, process B got:\n%s\nwant:\n%s\n" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                    };
                };
                _la.close();
                _lb.close();
                for (__26 => _f in _ca.extraFiles) {
                    _f.close();
                };
                for (__33 => _f in _cb.extraFiles) {
                    _f.close();
                };
            });
        };
    }
