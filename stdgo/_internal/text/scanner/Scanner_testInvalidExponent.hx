package stdgo._internal.text.scanner;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.os.Os;
import stdgo._internal.unicode.Unicode;
function testInvalidExponent(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _s = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner_Scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>).init(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("1.5e 1.5E 1e+ 1e- 1.5z" : stdgo.GoString))));
        (@:checkr _s ?? throw "null pointer dereference").error = function(_s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>, _msg:stdgo.GoString):Void {
            {};
            if (_msg != (("exponent has no digits" : stdgo.GoString))) {
                @:check2r _t.errorf(("%s: got error %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(@:check2r _s.tokenText()), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(("exponent has no digits" : stdgo.GoString)));
            };
        };
        stdgo._internal.text.scanner.Scanner__checkTokErr._checkTokErr(_t, _s, (1 : stdgo.GoInt), (-4 : stdgo.GoInt32), ("1.5e" : stdgo.GoString));
        stdgo._internal.text.scanner.Scanner__checkTokErr._checkTokErr(_t, _s, (1 : stdgo.GoInt), (-4 : stdgo.GoInt32), ("1.5E" : stdgo.GoString));
        stdgo._internal.text.scanner.Scanner__checkTokErr._checkTokErr(_t, _s, (1 : stdgo.GoInt), (-4 : stdgo.GoInt32), ("1e+" : stdgo.GoString));
        stdgo._internal.text.scanner.Scanner__checkTokErr._checkTokErr(_t, _s, (1 : stdgo.GoInt), (-4 : stdgo.GoInt32), ("1e-" : stdgo.GoString));
        stdgo._internal.text.scanner.Scanner__checkTok._checkTok(_t, _s, (1 : stdgo.GoInt), @:check2r _s.scan(), (-4 : stdgo.GoInt32), ("1.5" : stdgo.GoString));
        stdgo._internal.text.scanner.Scanner__checkTok._checkTok(_t, _s, (1 : stdgo.GoInt), @:check2r _s.scan(), (-2 : stdgo.GoInt32), ("z" : stdgo.GoString));
        stdgo._internal.text.scanner.Scanner__checkTok._checkTok(_t, _s, (1 : stdgo.GoInt), @:check2r _s.scan(), (-1 : stdgo.GoInt32), stdgo.Go.str()?.__copy__());
        if ((@:checkr _s ?? throw "null pointer dereference").errorCount != ((4 : stdgo.GoInt))) {
            @:check2r _t.errorf(("%d errors, want 4" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").errorCount));
        };
    }
