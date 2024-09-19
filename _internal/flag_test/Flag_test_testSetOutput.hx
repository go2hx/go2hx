package _internal.flag_test;
import stdgo._internal.flag.Flag;
function testSetOutput(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _flags:stdgo._internal.flag.Flag_FlagSet.FlagSet = ({} : stdgo._internal.flag.Flag_FlagSet.FlagSet);
        var _buf:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        _flags.setOutput(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)));
        _flags.init(("test" : stdgo.GoString), (0 : stdgo._internal.flag.Flag_ErrorHandling.ErrorHandling));
        _flags.parse((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("-unknown" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
        {
            var _out = ((_buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (!stdgo._internal.strings.Strings_contains.contains(_out?.__copy__(), ("-unknown" : stdgo.GoString))) {
                _t.logf(("expected output mentioning unknown; got %q" : stdgo.GoString), stdgo.Go.toInterface(_out));
            };
        };
    }
