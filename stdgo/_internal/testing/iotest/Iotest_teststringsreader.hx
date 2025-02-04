package stdgo._internal.testing.iotest;
function testStringsReader(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _r = stdgo._internal.strings.Strings_newreader.newReader(("Now is the time for all good gophers." : stdgo.GoString));
        {
            var _err = (stdgo._internal.testing.iotest.Iotest_testreader.testReader(stdgo.Go.asInterface(_r), ((("Now is the time for all good gophers." : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
