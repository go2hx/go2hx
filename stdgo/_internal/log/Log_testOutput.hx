package stdgo._internal.log;
function testOutput(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _b:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        var _b__pointer__ = (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        var _b__pointer__ = (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        var _b__pointer__ = (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        var _b__pointer__ = (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        var _l = stdgo._internal.log.Log_new_.new_(stdgo.Go.asInterface(_b__pointer__), stdgo.Go.str()?.__copy__(), (0 : stdgo.GoInt));
        _l.println(stdgo.Go.toInterface(("test" : stdgo.GoString)));
        {
            var _expect = ("test\n" : stdgo.GoString);
            if ((_b.string() : stdgo.GoString) != (_expect)) {
                _t.errorf(("log output should match %q is %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface((_b.string() : stdgo.GoString)));
            };
        };
    }
