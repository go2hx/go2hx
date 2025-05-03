package stdgo._internal.text.scanner;
function testPos(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner_scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>).init(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newreader.newReader((stdgo.Go.str() : stdgo.GoString)?.__copy__())));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L577"
        stdgo._internal.text.scanner.Scanner__checkpos._checkPos(_t, _s.pos()?.__copy__(), ({ offset : (0 : stdgo.GoInt), line : (1 : stdgo.GoInt), column : (1 : stdgo.GoInt) } : stdgo._internal.text.scanner.Scanner_position.Position));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L578"
        _s.peek();
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L579"
        stdgo._internal.text.scanner.Scanner__checkpos._checkPos(_t, _s.pos()?.__copy__(), ({ offset : (0 : stdgo.GoInt), line : (1 : stdgo.GoInt), column : (1 : stdgo.GoInt) } : stdgo._internal.text.scanner.Scanner_position.Position));
        _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner_scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>).init(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newreader.newReader(("\n" : stdgo.GoString))));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L583"
        stdgo._internal.text.scanner.Scanner__checkpos._checkPos(_t, _s.pos()?.__copy__(), ({ offset : (0 : stdgo.GoInt), line : (1 : stdgo.GoInt), column : (1 : stdgo.GoInt) } : stdgo._internal.text.scanner.Scanner_position.Position));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L584"
        stdgo._internal.text.scanner.Scanner__checknextpos._checkNextPos(_t, _s, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (1 : stdgo.GoInt), (10 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L586"
        {
            var _i = (10 : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L587"
                stdgo._internal.text.scanner.Scanner__checkscanpos._checkScanPos(_t, _s, (1 : stdgo.GoInt), (2 : stdgo.GoInt), (1 : stdgo.GoInt), (-1 : stdgo.GoInt32));
                _i--;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L589"
        if ((@:checkr _s ?? throw "null pointer dereference").errorCount != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L590"
            _t.errorf(("%d errors" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").errorCount));
        };
        _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner_scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>).init(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newreader.newReader(("本" : stdgo.GoString))));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L595"
        stdgo._internal.text.scanner.Scanner__checkpos._checkPos(_t, _s.pos()?.__copy__(), ({ offset : (0 : stdgo.GoInt), line : (1 : stdgo.GoInt), column : (1 : stdgo.GoInt) } : stdgo._internal.text.scanner.Scanner_position.Position));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L596"
        stdgo._internal.text.scanner.Scanner__checknextpos._checkNextPos(_t, _s, (3 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt), (26412 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L598"
        {
            var _i = (10 : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L599"
                stdgo._internal.text.scanner.Scanner__checkscanpos._checkScanPos(_t, _s, (3 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt), (-1 : stdgo.GoInt32));
                _i--;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L601"
        if ((@:checkr _s ?? throw "null pointer dereference").errorCount != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L602"
            _t.errorf(("%d errors" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").errorCount));
        };
        _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner_scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>).init(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newreader.newReader(("  foo६४  \n\n本語\n" : stdgo.GoString))));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L607"
        stdgo._internal.text.scanner.Scanner__checknextpos._checkNextPos(_t, _s, (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt), (32 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L608"
        _s.peek();
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L609"
        stdgo._internal.text.scanner.Scanner__checknextpos._checkNextPos(_t, _s, (2 : stdgo.GoInt), (1 : stdgo.GoInt), (3 : stdgo.GoInt), (32 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L610"
        stdgo._internal.text.scanner.Scanner__checknextpos._checkNextPos(_t, _s, (3 : stdgo.GoInt), (1 : stdgo.GoInt), (4 : stdgo.GoInt), (102 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L611"
        stdgo._internal.text.scanner.Scanner__checknextpos._checkNextPos(_t, _s, (4 : stdgo.GoInt), (1 : stdgo.GoInt), (5 : stdgo.GoInt), (111 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L612"
        stdgo._internal.text.scanner.Scanner__checknextpos._checkNextPos(_t, _s, (5 : stdgo.GoInt), (1 : stdgo.GoInt), (6 : stdgo.GoInt), (111 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L613"
        stdgo._internal.text.scanner.Scanner__checknextpos._checkNextPos(_t, _s, (8 : stdgo.GoInt), (1 : stdgo.GoInt), (7 : stdgo.GoInt), (2412 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L614"
        stdgo._internal.text.scanner.Scanner__checknextpos._checkNextPos(_t, _s, (11 : stdgo.GoInt), (1 : stdgo.GoInt), (8 : stdgo.GoInt), (2410 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L615"
        stdgo._internal.text.scanner.Scanner__checknextpos._checkNextPos(_t, _s, (12 : stdgo.GoInt), (1 : stdgo.GoInt), (9 : stdgo.GoInt), (32 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L616"
        stdgo._internal.text.scanner.Scanner__checknextpos._checkNextPos(_t, _s, (13 : stdgo.GoInt), (1 : stdgo.GoInt), (10 : stdgo.GoInt), (32 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L617"
        stdgo._internal.text.scanner.Scanner__checknextpos._checkNextPos(_t, _s, (14 : stdgo.GoInt), (2 : stdgo.GoInt), (1 : stdgo.GoInt), (10 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L618"
        stdgo._internal.text.scanner.Scanner__checknextpos._checkNextPos(_t, _s, (15 : stdgo.GoInt), (3 : stdgo.GoInt), (1 : stdgo.GoInt), (10 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L619"
        stdgo._internal.text.scanner.Scanner__checknextpos._checkNextPos(_t, _s, (18 : stdgo.GoInt), (3 : stdgo.GoInt), (2 : stdgo.GoInt), (26412 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L620"
        stdgo._internal.text.scanner.Scanner__checknextpos._checkNextPos(_t, _s, (21 : stdgo.GoInt), (3 : stdgo.GoInt), (3 : stdgo.GoInt), (35486 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L621"
        stdgo._internal.text.scanner.Scanner__checknextpos._checkNextPos(_t, _s, (22 : stdgo.GoInt), (4 : stdgo.GoInt), (1 : stdgo.GoInt), (10 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L623"
        {
            var _i = (10 : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L624"
                stdgo._internal.text.scanner.Scanner__checkscanpos._checkScanPos(_t, _s, (22 : stdgo.GoInt), (4 : stdgo.GoInt), (1 : stdgo.GoInt), (-1 : stdgo.GoInt32));
                _i--;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L626"
        if ((@:checkr _s ?? throw "null pointer dereference").errorCount != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L627"
            _t.errorf(("%d errors" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").errorCount));
        };
        _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner_scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>).init(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newreader.newReader(("abc\n本語\n\nx" : stdgo.GoString))));
        (@:checkr _s ?? throw "null pointer dereference").mode = (0u32 : stdgo.GoUInt);
        (@:checkr _s ?? throw "null pointer dereference").whitespace = (0i64 : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L634"
        stdgo._internal.text.scanner.Scanner__checkscanpos._checkScanPos(_t, _s, (0 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (97 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L635"
        _s.peek();
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L636"
        stdgo._internal.text.scanner.Scanner__checkscanpos._checkScanPos(_t, _s, (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt), (98 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L637"
        stdgo._internal.text.scanner.Scanner__checkscanpos._checkScanPos(_t, _s, (2 : stdgo.GoInt), (1 : stdgo.GoInt), (3 : stdgo.GoInt), (99 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L638"
        stdgo._internal.text.scanner.Scanner__checkscanpos._checkScanPos(_t, _s, (3 : stdgo.GoInt), (1 : stdgo.GoInt), (4 : stdgo.GoInt), (10 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L639"
        stdgo._internal.text.scanner.Scanner__checkscanpos._checkScanPos(_t, _s, (4 : stdgo.GoInt), (2 : stdgo.GoInt), (1 : stdgo.GoInt), (26412 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L640"
        stdgo._internal.text.scanner.Scanner__checkscanpos._checkScanPos(_t, _s, (7 : stdgo.GoInt), (2 : stdgo.GoInt), (2 : stdgo.GoInt), (35486 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L641"
        stdgo._internal.text.scanner.Scanner__checkscanpos._checkScanPos(_t, _s, (10 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (10 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L642"
        stdgo._internal.text.scanner.Scanner__checkscanpos._checkScanPos(_t, _s, (11 : stdgo.GoInt), (3 : stdgo.GoInt), (1 : stdgo.GoInt), (10 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L643"
        stdgo._internal.text.scanner.Scanner__checkscanpos._checkScanPos(_t, _s, (12 : stdgo.GoInt), (4 : stdgo.GoInt), (1 : stdgo.GoInt), (120 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L645"
        {
            var _i = (10 : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L646"
                stdgo._internal.text.scanner.Scanner__checkscanpos._checkScanPos(_t, _s, (13 : stdgo.GoInt), (4 : stdgo.GoInt), (2 : stdgo.GoInt), (-1 : stdgo.GoInt32));
                _i--;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L648"
        if ((@:checkr _s ?? throw "null pointer dereference").errorCount != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L649"
            _t.errorf(("%d errors" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").errorCount));
        };
    }
