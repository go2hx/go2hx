package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testReaderSimple(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _data = ("hello world" : stdgo.GoString);
        var _b = stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(_data?.__copy__())));
        {
            var _s = (_internal.bufio_test.Bufio_test__readBytes._readBytes(_b)?.__copy__() : stdgo.GoString);
            if (_s != (("hello world" : stdgo.GoString))) {
                _t.errorf(("simple hello world test failed: got %q" : stdgo.GoString), stdgo.Go.toInterface(_s));
            };
        };
        _b = stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface(_internal.bufio_test.Bufio_test__newRot13Reader._newRot13Reader(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(_data?.__copy__())))));
        {
            var _s = (_internal.bufio_test.Bufio_test__readBytes._readBytes(_b)?.__copy__() : stdgo.GoString);
            if (_s != (("uryyb jbeyq" : stdgo.GoString))) {
                _t.errorf(("rot13 hello world test failed: got %q" : stdgo.GoString), stdgo.Go.toInterface(_s));
            };
        };
    }
