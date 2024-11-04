package stdgo._internal.text.scanner;
function testPos(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner_Scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>).init(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(stdgo.Go.str()?.__copy__())));
        stdgo._internal.text.scanner.Scanner__checkPos._checkPos(_t, _s.pos()?.__copy__(), ({ offset : (0 : stdgo.GoInt), line : (1 : stdgo.GoInt), column : (1 : stdgo.GoInt) } : stdgo._internal.text.scanner.Scanner_Position.Position));
        _s.peek();
        stdgo._internal.text.scanner.Scanner__checkPos._checkPos(_t, _s.pos()?.__copy__(), ({ offset : (0 : stdgo.GoInt), line : (1 : stdgo.GoInt), column : (1 : stdgo.GoInt) } : stdgo._internal.text.scanner.Scanner_Position.Position));
        _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner_Scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>).init(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("\n" : stdgo.GoString))));
        stdgo._internal.text.scanner.Scanner__checkPos._checkPos(_t, _s.pos()?.__copy__(), ({ offset : (0 : stdgo.GoInt), line : (1 : stdgo.GoInt), column : (1 : stdgo.GoInt) } : stdgo._internal.text.scanner.Scanner_Position.Position));
        stdgo._internal.text.scanner.Scanner__checkNextPos._checkNextPos(_t, _s, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (1 : stdgo.GoInt), (10 : stdgo.GoInt32));
        {
            var _i = (10 : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                stdgo._internal.text.scanner.Scanner__checkScanPos._checkScanPos(_t, _s, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (1 : stdgo.GoInt), (-1 : stdgo.GoInt32));
                _i--;
            };
        };
        if (_s.errorCount != ((0 : stdgo.GoInt))) {
            _t.errorf(("%d errors" : stdgo.GoString), stdgo.Go.toInterface(_s.errorCount));
        };
        _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner_Scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>).init(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("本" : stdgo.GoString))));
        stdgo._internal.text.scanner.Scanner__checkPos._checkPos(_t, _s.pos()?.__copy__(), ({ offset : (0 : stdgo.GoInt), line : (1 : stdgo.GoInt), column : (1 : stdgo.GoInt) } : stdgo._internal.text.scanner.Scanner_Position.Position));
        stdgo._internal.text.scanner.Scanner__checkNextPos._checkNextPos(_t, _s, (3 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt), (26412 : stdgo.GoInt32));
        {
            var _i = (10 : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                stdgo._internal.text.scanner.Scanner__checkScanPos._checkScanPos(_t, _s, (3 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt), (-1 : stdgo.GoInt32));
                _i--;
            };
        };
        if (_s.errorCount != ((0 : stdgo.GoInt))) {
            _t.errorf(("%d errors" : stdgo.GoString), stdgo.Go.toInterface(_s.errorCount));
        };
        _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner_Scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>).init(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("  foo६४  \n\n本語\n" : stdgo.GoString))));
        stdgo._internal.text.scanner.Scanner__checkNextPos._checkNextPos(_t, _s, (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt), (32 : stdgo.GoInt32));
        _s.peek();
        stdgo._internal.text.scanner.Scanner__checkNextPos._checkNextPos(_t, _s, (2 : stdgo.GoInt), (1 : stdgo.GoInt), (3 : stdgo.GoInt), (32 : stdgo.GoInt32));
        stdgo._internal.text.scanner.Scanner__checkNextPos._checkNextPos(_t, _s, (3 : stdgo.GoInt), (1 : stdgo.GoInt), (4 : stdgo.GoInt), (102 : stdgo.GoInt32));
        stdgo._internal.text.scanner.Scanner__checkNextPos._checkNextPos(_t, _s, (4 : stdgo.GoInt), (1 : stdgo.GoInt), (5 : stdgo.GoInt), (111 : stdgo.GoInt32));
        stdgo._internal.text.scanner.Scanner__checkNextPos._checkNextPos(_t, _s, (5 : stdgo.GoInt), (1 : stdgo.GoInt), (6 : stdgo.GoInt), (111 : stdgo.GoInt32));
        stdgo._internal.text.scanner.Scanner__checkNextPos._checkNextPos(_t, _s, (8 : stdgo.GoInt), (1 : stdgo.GoInt), (7 : stdgo.GoInt), (2412 : stdgo.GoInt32));
        stdgo._internal.text.scanner.Scanner__checkNextPos._checkNextPos(_t, _s, (11 : stdgo.GoInt), (1 : stdgo.GoInt), (8 : stdgo.GoInt), (2410 : stdgo.GoInt32));
        stdgo._internal.text.scanner.Scanner__checkNextPos._checkNextPos(_t, _s, (12 : stdgo.GoInt), (1 : stdgo.GoInt), (9 : stdgo.GoInt), (32 : stdgo.GoInt32));
        stdgo._internal.text.scanner.Scanner__checkNextPos._checkNextPos(_t, _s, (13 : stdgo.GoInt), (1 : stdgo.GoInt), (10 : stdgo.GoInt), (32 : stdgo.GoInt32));
        stdgo._internal.text.scanner.Scanner__checkNextPos._checkNextPos(_t, _s, (14 : stdgo.GoInt), (2 : stdgo.GoInt), (1 : stdgo.GoInt), (10 : stdgo.GoInt32));
        stdgo._internal.text.scanner.Scanner__checkNextPos._checkNextPos(_t, _s, (15 : stdgo.GoInt), (3 : stdgo.GoInt), (1 : stdgo.GoInt), (10 : stdgo.GoInt32));
        stdgo._internal.text.scanner.Scanner__checkNextPos._checkNextPos(_t, _s, (18 : stdgo.GoInt), (3 : stdgo.GoInt), (2 : stdgo.GoInt), (26412 : stdgo.GoInt32));
        stdgo._internal.text.scanner.Scanner__checkNextPos._checkNextPos(_t, _s, (21 : stdgo.GoInt), (3 : stdgo.GoInt), (3 : stdgo.GoInt), (35486 : stdgo.GoInt32));
        stdgo._internal.text.scanner.Scanner__checkNextPos._checkNextPos(_t, _s, (22 : stdgo.GoInt), (4 : stdgo.GoInt), (1 : stdgo.GoInt), (10 : stdgo.GoInt32));
        {
            var _i = (10 : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                stdgo._internal.text.scanner.Scanner__checkScanPos._checkScanPos(_t, _s, (22 : stdgo.GoInt), (4 : stdgo.GoInt), (1 : stdgo.GoInt), (-1 : stdgo.GoInt32));
                _i--;
            };
        };
        if (_s.errorCount != ((0 : stdgo.GoInt))) {
            _t.errorf(("%d errors" : stdgo.GoString), stdgo.Go.toInterface(_s.errorCount));
        };
        _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner_Scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>).init(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("abc\n本語\n\nx" : stdgo.GoString))));
        _s.mode = (0u32 : stdgo.GoUInt);
        _s.whitespace = (0i64 : stdgo.GoUInt64);
        stdgo._internal.text.scanner.Scanner__checkScanPos._checkScanPos(_t, _s, (0 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (97 : stdgo.GoInt32));
        _s.peek();
        stdgo._internal.text.scanner.Scanner__checkScanPos._checkScanPos(_t, _s, (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt), (98 : stdgo.GoInt32));
        stdgo._internal.text.scanner.Scanner__checkScanPos._checkScanPos(_t, _s, (2 : stdgo.GoInt), (1 : stdgo.GoInt), (3 : stdgo.GoInt), (99 : stdgo.GoInt32));
        stdgo._internal.text.scanner.Scanner__checkScanPos._checkScanPos(_t, _s, (3 : stdgo.GoInt), (1 : stdgo.GoInt), (4 : stdgo.GoInt), (10 : stdgo.GoInt32));
        stdgo._internal.text.scanner.Scanner__checkScanPos._checkScanPos(_t, _s, (4 : stdgo.GoInt), (2 : stdgo.GoInt), (1 : stdgo.GoInt), (26412 : stdgo.GoInt32));
        stdgo._internal.text.scanner.Scanner__checkScanPos._checkScanPos(_t, _s, (7 : stdgo.GoInt), (2 : stdgo.GoInt), (2 : stdgo.GoInt), (35486 : stdgo.GoInt32));
        stdgo._internal.text.scanner.Scanner__checkScanPos._checkScanPos(_t, _s, (10 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (10 : stdgo.GoInt32));
        stdgo._internal.text.scanner.Scanner__checkScanPos._checkScanPos(_t, _s, (11 : stdgo.GoInt), (3 : stdgo.GoInt), (1 : stdgo.GoInt), (10 : stdgo.GoInt32));
        stdgo._internal.text.scanner.Scanner__checkScanPos._checkScanPos(_t, _s, (12 : stdgo.GoInt), (4 : stdgo.GoInt), (1 : stdgo.GoInt), (120 : stdgo.GoInt32));
        {
            var _i = (10 : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                stdgo._internal.text.scanner.Scanner__checkScanPos._checkScanPos(_t, _s, (13 : stdgo.GoInt), (4 : stdgo.GoInt), (2 : stdgo.GoInt), (-1 : stdgo.GoInt32));
                _i--;
            };
        };
        if (_s.errorCount != ((0 : stdgo.GoInt))) {
            _t.errorf(("%d errors" : stdgo.GoString), stdgo.Go.toInterface(_s.errorCount));
        };
    }
