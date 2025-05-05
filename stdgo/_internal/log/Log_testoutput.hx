package stdgo._internal.log;
function testOutput(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        var _l = stdgo._internal.log.Log_new_.new_(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L97"
        _l.println(stdgo.Go.toInterface(("test" : stdgo.GoString)));
        //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L98"
        {
            var _expect = (("test\n" : stdgo.GoString) : stdgo.GoString);
            if ((_b.string() : stdgo.GoString) != (_expect)) {
                //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L99"
                _t.errorf(("log output should match %q is %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface((_b.string() : stdgo.GoString)));
            };
        };
    }
