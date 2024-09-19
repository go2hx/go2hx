package stdgo._internal.text.scanner;
function testInvalidExponent(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner_Scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>).init(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("1.5e 1.5E 1e+ 1e- 1.5z" : stdgo.GoString))));
        _s.error = function(_s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>, _msg:stdgo.GoString):Void {
            {};
            if (_msg != (("exponent has no digits" : stdgo.GoString))) {
                _t.errorf(("%s: got error %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_s.tokenText()), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(("exponent has no digits" : stdgo.GoString)));
            };
        };
        stdgo._internal.text.scanner.Scanner__checkTokErr._checkTokErr(_t, _s, (1 : stdgo.GoInt), (-4 : stdgo.GoInt32), ("1.5e" : stdgo.GoString));
        stdgo._internal.text.scanner.Scanner__checkTokErr._checkTokErr(_t, _s, (1 : stdgo.GoInt), (-4 : stdgo.GoInt32), ("1.5E" : stdgo.GoString));
        stdgo._internal.text.scanner.Scanner__checkTokErr._checkTokErr(_t, _s, (1 : stdgo.GoInt), (-4 : stdgo.GoInt32), ("1e+" : stdgo.GoString));
        stdgo._internal.text.scanner.Scanner__checkTokErr._checkTokErr(_t, _s, (1 : stdgo.GoInt), (-4 : stdgo.GoInt32), ("1e-" : stdgo.GoString));
        stdgo._internal.text.scanner.Scanner__checkTok._checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (-4 : stdgo.GoInt32), ("1.5" : stdgo.GoString));
        stdgo._internal.text.scanner.Scanner__checkTok._checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (-2 : stdgo.GoInt32), ("z" : stdgo.GoString));
        stdgo._internal.text.scanner.Scanner__checkTok._checkTok(_t, _s, (1 : stdgo.GoInt), _s.scan(), (-1 : stdgo.GoInt32), stdgo.Go.str()?.__copy__());
        if (_s.errorCount != ((4 : stdgo.GoInt))) {
            _t.errorf(("%d errors, want 4" : stdgo.GoString), stdgo.Go.toInterface(_s.errorCount));
        };
    }
