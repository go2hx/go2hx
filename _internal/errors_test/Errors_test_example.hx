package _internal.errors_test;
function example():Void {
        {
            var _err = (_internal.errors_test.Errors_test__oops._oops() : stdgo.Error);
            if (_err != null) {
                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_err));
            };
        };
    }
