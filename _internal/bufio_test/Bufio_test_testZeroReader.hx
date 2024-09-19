package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testZeroReader(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _z:_internal.bufio_test.Bufio_test_T_zeroReader.T_zeroReader = ({} : _internal.bufio_test.Bufio_test_T_zeroReader.T_zeroReader);
        var _r = stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface(_z));
        var _c = (new stdgo.Chan<stdgo.Error>(0, () -> (null : stdgo.Error)) : stdgo.Chan<stdgo.Error>);
        stdgo.Go.routine(() -> {
            var a = function():Void {
                var __tmp__ = _r.readByte(), __0:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _c.__send__(_err);
            };
            a();
        });
        {
            var __select__ = true;
            while (__select__) {
                if (_c != null && _c.__isGet__()) {
                    __select__ = false;
                    {
                        var _err = _c.__get__();
                        {
                            if (_err == null) {
                                _t.error(stdgo.Go.toInterface(("error expected" : stdgo.GoString)));
                            } else if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_errNoProgress.errNoProgress))) {
                                _t.error(stdgo.Go.toInterface(("unexpected error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                            };
                        };
                    };
                } else if (stdgo._internal.time.Time_after.after((1000000000i64 : stdgo._internal.time.Time_Duration.Duration)) != null && stdgo._internal.time.Time_after.after((1000000000i64 : stdgo._internal.time.Time_Duration.Duration)).__isGet__()) {
                    __select__ = false;
                    {
                        stdgo._internal.time.Time_after.after((1000000000i64 : stdgo._internal.time.Time_Duration.Duration)).__get__();
                        {
                            _t.error(stdgo.Go.toInterface(("test timed out (endless loop in ReadByte?)" : stdgo.GoString)));
                        };
                    };
                };
                #if !js Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
        };
    }
