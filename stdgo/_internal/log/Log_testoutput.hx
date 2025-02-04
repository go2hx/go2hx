package stdgo._internal.log;
function testOutput(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        var _l = stdgo._internal.log.Log_new_.new_(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt));
        @:check2r _l.println(stdgo.Go.toInterface(("test" : stdgo.GoString)));
        {
            var _expect = (("test\n" : stdgo.GoString) : stdgo.GoString);
            if ((@:check2 _b.string() : stdgo.GoString) != (_expect)) {
                @:check2r _t.errorf(("log output should match %q is %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface((@:check2 _b.string() : stdgo.GoString)));
            };
        };
    }
