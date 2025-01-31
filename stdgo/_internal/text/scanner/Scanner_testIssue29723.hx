package stdgo._internal.text.scanner;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.os.Os;
import stdgo._internal.unicode.Unicode;
function testIssue29723(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _s = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner_Scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>).init(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("x \"" : stdgo.GoString))));
        (@:checkr _s ?? throw "null pointer dereference").error = function(_s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>, __0:stdgo.GoString):Void {
            var _got = (@:check2r _s.tokenText()?.__copy__() : stdgo.GoString);
            {};
            if (_got != (("\"" : stdgo.GoString))) {
                @:check2r _t.errorf(("got %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(("\"" : stdgo.GoString)));
            };
        };
        {
            var _r = (@:check2r _s.scan() : stdgo.GoInt32);
            while (_r != ((-1 : stdgo.GoInt32))) {
                {};
                _r = @:check2r _s.scan();
            };
        };
    }
