package stdgo._internal.text.scanner;
function testScanCustomIdent(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner_Scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>).init(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("faab12345 a12b123 a12 3b" : stdgo.GoString))));
        _s.isIdentRune = function(_ch:stdgo.GoInt32, _i:stdgo.GoInt):Bool {
            return ((_i == ((0 : stdgo.GoInt)) && (((_ch == (97 : stdgo.GoInt32)) || (_ch == (98 : stdgo.GoInt32)) : Bool)) : Bool) || (((((0 : stdgo.GoInt) < _i : Bool) && (_i < (4 : stdgo.GoInt) : Bool) : Bool) && ((48 : stdgo.GoInt32) <= _ch : Bool) : Bool) && (_ch <= (51 : stdgo.GoInt32) : Bool) : Bool) : Bool);
        };
        stdgo._internal.text.scanner.Scanner__checkTok._checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (102 : stdgo.GoInt32), ("f" : stdgo.GoString));
        stdgo._internal.text.scanner.Scanner__checkTok._checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (-2 : stdgo.GoInt32), ("a" : stdgo.GoString));
        stdgo._internal.text.scanner.Scanner__checkTok._checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (-2 : stdgo.GoInt32), ("a" : stdgo.GoString));
        stdgo._internal.text.scanner.Scanner__checkTok._checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (-2 : stdgo.GoInt32), ("b123" : stdgo.GoString));
        stdgo._internal.text.scanner.Scanner__checkTok._checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (-3 : stdgo.GoInt32), ("45" : stdgo.GoString));
        stdgo._internal.text.scanner.Scanner__checkTok._checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (-2 : stdgo.GoInt32), ("a12" : stdgo.GoString));
        stdgo._internal.text.scanner.Scanner__checkTok._checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (-2 : stdgo.GoInt32), ("b123" : stdgo.GoString));
        stdgo._internal.text.scanner.Scanner__checkTok._checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (-2 : stdgo.GoInt32), ("a12" : stdgo.GoString));
        stdgo._internal.text.scanner.Scanner__checkTok._checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (-3 : stdgo.GoInt32), ("3" : stdgo.GoString));
        stdgo._internal.text.scanner.Scanner__checkTok._checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (-2 : stdgo.GoInt32), ("b" : stdgo.GoString));
        stdgo._internal.text.scanner.Scanner__checkTok._checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (-1 : stdgo.GoInt32), stdgo.Go.str()?.__copy__());
    }