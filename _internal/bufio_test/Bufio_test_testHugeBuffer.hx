package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testHugeBuffer(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _text = (stdgo._internal.strings.Strings_repeat.repeat(("x" : stdgo.GoString), (131072 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
        var _s = stdgo._internal.bufio.Bufio_newScanner.newScanner(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader((_text + ("\n" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__())));
        _s.buffer((new stdgo.Slice<stdgo.GoUInt8>((100 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (196608 : stdgo.GoInt));
        while (_s.scan()) {
            var _token = (_s.text()?.__copy__() : stdgo.GoString);
            if (_token != (_text)) {
                _t.errorf(("scan got incorrect token of length %d" : stdgo.GoString), stdgo.Go.toInterface((_token.length)));
            };
        };
        if (_s.err() != null) {
            _t.fatal(stdgo.Go.toInterface(("after scan:" : stdgo.GoString)), stdgo.Go.toInterface(_s.err()));
        };
    }
