package _internal.flag_test;
import stdgo._internal.flag.Flag;
function testUserDefinedBoolFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _flags = stdgo._internal.flag.Flag_newFlagSet.newFlagSet(("test" : stdgo.GoString), (0 : stdgo._internal.flag.Flag_ErrorHandling.ErrorHandling));
        _flags.setOutput(stdgo._internal.io.Io_discard.discard);
        var _ss:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        _flags.boolFunc(("v" : stdgo.GoString), ("usage" : stdgo.GoString), function(_s:stdgo.GoString):stdgo.Error {
            _ss = (_ss.__append__(_s?.__copy__()));
            return (null : stdgo.Error);
        });
        {
            var _err = (_flags.parse((new stdgo.Slice<stdgo.GoString>(5, 5, ...[("-v" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("-v" : stdgo.GoString), ("1" : stdgo.GoString), ("-v=2" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo.Error);
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
        if ((_ss.length) != ((1 : stdgo.GoInt))) {
            _t.fatalf(("got %d args; want 1 arg" : stdgo.GoString), stdgo.Go.toInterface((_ss.length)));
        };
        var _want = ("[true]" : stdgo.GoString);
        {
            var _got = (stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(_ss))?.__copy__() : stdgo.GoString);
            if (_got != (_want)) {
                _t.errorf(("got %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        var _buf:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        _flags.setOutput(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)));
        _flags.parse((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("-h" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
        {
            var _usage = ((_buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (!stdgo._internal.strings.Strings_contains.contains(_usage?.__copy__(), ("usage" : stdgo.GoString))) {
                _t.errorf(("usage string not included: %q" : stdgo.GoString), stdgo.Go.toInterface(_usage));
            };
        };
        _flags = stdgo._internal.flag.Flag_newFlagSet.newFlagSet(("test" : stdgo.GoString), (0 : stdgo._internal.flag.Flag_ErrorHandling.ErrorHandling));
        _flags.setOutput(stdgo._internal.io.Io_discard.discard);
        _flags.boolFunc(("v" : stdgo.GoString), ("usage" : stdgo.GoString), function(_s:stdgo.GoString):stdgo.Error {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("test error" : stdgo.GoString));
        });
        {
            var _err = (_flags.parse((null : stdgo.Slice<stdgo.GoString>)) : stdgo.Error);
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err = (_flags.parse((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("-v" : stdgo.GoString), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo.Error);
            if (_err == null) {
                _t.error(stdgo.Go.toInterface(("got err == nil; want err != nil" : stdgo.GoString)));
            } else {
                var _errMsg = (_err.error()?.__copy__() : stdgo.GoString);
                if (!stdgo._internal.strings.Strings_contains.contains(_errMsg?.__copy__(), ("test error" : stdgo.GoString))) {
                    _t.errorf(("got %q; error should contain \"test error\"" : stdgo.GoString), stdgo.Go.toInterface(_errMsg));
                };
            };
        };
    }
