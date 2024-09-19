package stdgo._internal.text.scanner;
function _readRuneSegments(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _segments:stdgo.Slice<stdgo.GoString>):Void {
        var _got = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
        var _want = (stdgo._internal.strings.Strings_join.join(_segments, stdgo.Go.str()?.__copy__())?.__copy__() : stdgo.GoString);
        var _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner_Scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>).init(stdgo.Go.asInterface((stdgo.Go.setRef(({ _data : _segments } : stdgo._internal.text.scanner.Scanner_StringReader.StringReader)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner_StringReader.StringReader>)));
        while (true) {
            var _ch = (_s.next() : stdgo.GoInt32);
            if (_ch == ((-1 : stdgo.GoInt32))) {
                break;
            };
            _got = (_got + ((_ch : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        if (_got != (_want)) {
            _t.errorf(("segments=%v got=%s want=%s" : stdgo.GoString), stdgo.Go.toInterface(_segments), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
    }
