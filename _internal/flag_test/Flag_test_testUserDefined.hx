package _internal.flag_test;
import stdgo._internal.flag.Flag;
function testUserDefined(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _flags:stdgo._internal.flag.Flag_FlagSet.FlagSet = ({} : stdgo._internal.flag.Flag_FlagSet.FlagSet);
        _flags.init(("test" : stdgo.GoString), (0 : stdgo._internal.flag.Flag_ErrorHandling.ErrorHandling));
        _flags.setOutput(stdgo._internal.io.Io_discard.discard);
        var _v:_internal.flag_test.Flag_test_T_flagVar.T_flagVar = new _internal.flag_test.Flag_test_T_flagVar.T_flagVar(0, 0);
        _flags.var_(stdgo.Go.asInterface((stdgo.Go.setRef(_v) : stdgo.Ref<_internal.flag_test.Flag_test_T_flagVar.T_flagVar>)), ("v" : stdgo.GoString), ("usage" : stdgo.GoString));
        {
            var _err = (_flags.parse((new stdgo.Slice<stdgo.GoString>(5, 5, ...[("-v" : stdgo.GoString), ("1" : stdgo.GoString), ("-v" : stdgo.GoString), ("2" : stdgo.GoString), ("-v=3" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo.Error);
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
        if ((_v.length) != ((3 : stdgo.GoInt))) {
            _t.fatal(stdgo.Go.toInterface(("expected 3 args; got " : stdgo.GoString)), stdgo.Go.toInterface((_v.length)));
        };
        var _expect = ("[1 2 3]" : stdgo.GoString);
        if ((_v.string() : stdgo.GoString) != (_expect)) {
            _t.errorf(("expected value %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface((_v.string() : stdgo.GoString)));
        };
    }
