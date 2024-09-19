package stdgo._internal.text.scanner;
function testScanNext(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var boms = ((65279 : stdgo.GoInt32) : stdgo.GoString);
        var _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner_Scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>).init(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader((((((boms + ("if a == bcd /* com" : stdgo.GoString)?.__copy__() : stdgo.GoString) + boms?.__copy__() : stdgo.GoString) + ("ment */ {\n\ta += c\n}" : stdgo.GoString)?.__copy__() : stdgo.GoString) + boms?.__copy__() : stdgo.GoString) + ("// line comment ending in eof" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__())));
        stdgo._internal.text.scanner.Scanner__checkTok._checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (-2 : stdgo.GoInt32), ("if" : stdgo.GoString));
        stdgo._internal.text.scanner.Scanner__checkTok._checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (-2 : stdgo.GoInt32), ("a" : stdgo.GoString));
        stdgo._internal.text.scanner.Scanner__checkTok._checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (61 : stdgo.GoInt32), ("=" : stdgo.GoString));
        stdgo._internal.text.scanner.Scanner__checkTok._checkTok(_t, _s, (0 : stdgo.GoInt), _s.next(), (61 : stdgo.GoInt32), stdgo.Go.str()?.__copy__());
        stdgo._internal.text.scanner.Scanner__checkTok._checkTok(_t, _s, (0 : stdgo.GoInt), _s.next(), (32 : stdgo.GoInt32), stdgo.Go.str()?.__copy__());
        stdgo._internal.text.scanner.Scanner__checkTok._checkTok(_t, _s, (0 : stdgo.GoInt), _s.next(), (98 : stdgo.GoInt32), stdgo.Go.str()?.__copy__());
        stdgo._internal.text.scanner.Scanner__checkTok._checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (-2 : stdgo.GoInt32), ("cd" : stdgo.GoString));
        stdgo._internal.text.scanner.Scanner__checkTok._checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (123 : stdgo.GoInt32), ("{" : stdgo.GoString));
        stdgo._internal.text.scanner.Scanner__checkTok._checkTok(_t, _s, (2 : stdgo.GoInt), _s.scan(), (-2 : stdgo.GoInt32), ("a" : stdgo.GoString));
        stdgo._internal.text.scanner.Scanner__checkTok._checkTok(_t, _s, (2 : stdgo.GoInt), _s.scan(), (43 : stdgo.GoInt32), ("+" : stdgo.GoString));
        stdgo._internal.text.scanner.Scanner__checkTok._checkTok(_t, _s, (0 : stdgo.GoInt), _s.next(), (61 : stdgo.GoInt32), stdgo.Go.str()?.__copy__());
        stdgo._internal.text.scanner.Scanner__checkTok._checkTok(_t, _s, (2 : stdgo.GoInt), _s.scan(), (-2 : stdgo.GoInt32), ("c" : stdgo.GoString));
        stdgo._internal.text.scanner.Scanner__checkTok._checkTok(_t, _s, (3 : stdgo.GoInt), _s.scan(), (125 : stdgo.GoInt32), ("}" : stdgo.GoString));
        stdgo._internal.text.scanner.Scanner__checkTok._checkTok(_t, _s, (3 : stdgo.GoInt), _s.scan(), (65279 : stdgo.GoInt32), boms?.__copy__());
        stdgo._internal.text.scanner.Scanner__checkTok._checkTok(_t, _s, (3 : stdgo.GoInt), _s.scan(), (-1 : stdgo.GoInt32), stdgo.Go.str()?.__copy__());
        if (_s.errorCount != ((0 : stdgo.GoInt))) {
            _t.errorf(("%d errors" : stdgo.GoString), stdgo.Go.toInterface(_s.errorCount));
        };
    }
