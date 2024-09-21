package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testBlankLines(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _s = stdgo._internal.bufio.Bufio_newScanner.newScanner(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(stdgo._internal.strings.Strings_repeat.repeat(("\n" : stdgo.GoString), (1000 : stdgo.GoInt))?.__copy__())));
        {
            var _count = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_s.scan(), _count++, {
                if ((_count > (2000 : stdgo.GoInt) : Bool)) {
                    _t.fatal(stdgo.Go.toInterface(("looping" : stdgo.GoString)));
                };
            });
        };
        if (_s.err() != null) {
            _t.fatal(stdgo.Go.toInterface(("after scan:" : stdgo.GoString)), stdgo.Go.toInterface(_s.err()));
        };
    }
