package _internal.math.rand_test;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
function testDefaultRace(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if ((stdgo._internal.testing.Testing_short.short() && true : Bool)) {
            _t.skip(stdgo.Go.toInterface(("skipping starting another executable in short mode" : stdgo.GoString)));
        };
        {};
        {
            var _v = (stdgo._internal.os.Os_getenv.getenv(("GO_RAND_TEST_HELPER_CODE" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_v != (stdgo.Go.str())) {
                _internal.math.rand_test.Rand_test__doDefaultTest._doDefaultTest(_t, _v?.__copy__());
                return;
            };
        };
        _t.parallel();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (6 : stdgo.GoInt) : Bool), _i++, {
                var _i = (_i : stdgo.GoInt);
                _t.run(stdgo._internal.strconv.Strconv_itoa.itoa(_i)?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                    _t.parallel();
                    var __tmp__ = stdgo._internal.os.Os_executable.executable(), _exe:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _exe = stdgo._internal.os.Os_args.args[(0 : stdgo.GoInt)]?.__copy__();
                    };
                    var _cmd = stdgo._internal.internal.testenv.Testenv_command.command(stdgo.Go.asInterface(_t), _exe?.__copy__(), ("-test.run=TestDefaultRace" : stdgo.GoString));
                    _cmd = stdgo._internal.internal.testenv.Testenv_cleanCmdEnv.cleanCmdEnv(_cmd);
                    _cmd.env = (_cmd.env.__append__(stdgo._internal.fmt.Fmt_sprintf.sprintf(("GO_RAND_TEST_HELPER_CODE=%d" : stdgo.GoString), stdgo.Go.toInterface((_i / (2 : stdgo.GoInt) : stdgo.GoInt)))?.__copy__()));
                    if ((_i % (2 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                        _cmd.env = (_cmd.env.__append__(("GODEBUG=randautoseed=0" : stdgo.GoString)));
                    };
                    var __tmp__ = _cmd.combinedOutput(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (((_out.length) > (0 : stdgo.GoInt) : Bool)) {
                        _t.logf(("%s" : stdgo.GoString), stdgo.Go.toInterface(_out));
                    };
                    if (_err != null) {
                        _t.error(stdgo.Go.toInterface(_err));
                    };
                });
            });
        };
    }
