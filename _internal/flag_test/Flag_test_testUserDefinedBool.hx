package _internal.flag_test;
import stdgo._internal.flag.Flag;
function testUserDefinedBool(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _flags:stdgo._internal.flag.Flag_FlagSet.FlagSet = ({} : stdgo._internal.flag.Flag_FlagSet.FlagSet);
        _flags.init(("test" : stdgo.GoString), (0 : stdgo._internal.flag.Flag_ErrorHandling.ErrorHandling));
        _flags.setOutput(stdgo._internal.io.Io_discard.discard);
        var _b:_internal.flag_test.Flag_test_T_boolFlagVar.T_boolFlagVar = ({} : _internal.flag_test.Flag_test_T_boolFlagVar.T_boolFlagVar);
        var _err:stdgo.Error = (null : stdgo.Error);
        _flags.var_(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<_internal.flag_test.Flag_test_T_boolFlagVar.T_boolFlagVar>)), ("b" : stdgo.GoString), ("usage" : stdgo.GoString));
        {
            _err = _flags.parse((new stdgo.Slice<stdgo.GoString>(8, 8, ...[("-b" : stdgo.GoString), ("-b" : stdgo.GoString), ("-b" : stdgo.GoString), ("-b=true" : stdgo.GoString), ("-b=false" : stdgo.GoString), ("-b" : stdgo.GoString), ("barg" : stdgo.GoString), ("-b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
            if (_err != null) {
                if ((_b._count < (4 : stdgo.GoInt) : Bool)) {
                    _t.error(stdgo.Go.toInterface(_err));
                };
            };
        };
        if (_b._count != ((4 : stdgo.GoInt))) {
            _t.errorf(("want: %d; got: %d" : stdgo.GoString), stdgo.Go.toInterface((4 : stdgo.GoInt)), stdgo.Go.toInterface(_b._count));
        };
        if (_err == null) {
            _t.error(stdgo.Go.toInterface(("expected error; got none" : stdgo.GoString)));
        };
    }
