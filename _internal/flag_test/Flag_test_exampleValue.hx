package _internal.flag_test;
import stdgo._internal.flag.Flag;
function exampleValue():Void {
        var _fs = stdgo._internal.flag.Flag_newFlagSet.newFlagSet(("ExampleValue" : stdgo.GoString), (1 : stdgo._internal.flag.Flag_ErrorHandling.ErrorHandling));
        _fs.var_(stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.flag_test.Flag_test_URLValue.URLValue(_internal.flag_test.Flag_test__u._u) : _internal.flag_test.Flag_test_URLValue.URLValue)) : stdgo.Ref<_internal.flag_test.Flag_test_URLValue.URLValue>)), ("url" : stdgo.GoString), ("URL to parse" : stdgo.GoString));
        _fs.parse((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("-url" : stdgo.GoString), ("https://golang.org/pkg/flag/" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
        stdgo._internal.fmt.Fmt_printf.printf(("{scheme: %q, host: %q, path: %q}" : stdgo.GoString), stdgo.Go.toInterface(_internal.flag_test.Flag_test__u._u.scheme), stdgo.Go.toInterface(_internal.flag_test.Flag_test__u._u.host), stdgo.Go.toInterface(_internal.flag_test.Flag_test__u._u.path));
    }
