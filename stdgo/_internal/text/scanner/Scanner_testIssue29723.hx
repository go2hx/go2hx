package stdgo._internal.text.scanner;
function testIssue29723(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner_Scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>).init(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("x \"" : stdgo.GoString))));
        _s.error = function(_s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>, __0:stdgo.GoString):Void {
            var _got = (_s.tokenText()?.__copy__() : stdgo.GoString);
            {};
            if (_got != (("\"" : stdgo.GoString))) {
                _t.errorf(("got %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(("\"" : stdgo.GoString)));
            };
        };
        {
            var _r = (_s.scan() : stdgo.GoInt32);
            while (_r != ((-1 : stdgo.GoInt32))) {
                {};
                _r = _s.scan();
            };
        };
    }
