package stdgo._internal.testing.iotest;
function testStringsReader(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _r = stdgo._internal.strings.Strings_newreader.newReader(("Now is the time for all good gophers." : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader_test.go#L258"
        {
            var _err = (stdgo._internal.testing.iotest.Iotest_testreader.testReader(stdgo.Go.asInterface(_r), ((("Now is the time for all good gophers." : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader_test.go#L259"
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
