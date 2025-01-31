package stdgo._internal.testing.iotest;
import stdgo._internal.errors.Errors;
import stdgo._internal.log.Log;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.strings.Strings;
function testStringsReader(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _r = stdgo._internal.strings.Strings_newReader.newReader(("Now is the time for all good gophers." : stdgo.GoString));
        {
            var _err = (stdgo._internal.testing.iotest.Iotest_testReader.testReader(stdgo.Go.asInterface(_r), (("Now is the time for all good gophers." : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
