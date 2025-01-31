package stdgo._internal.text.scanner;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.os.Os;
import stdgo._internal.unicode.Unicode;
function _testScan(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _mode:stdgo.GoUInt):Void {
        var _s = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner_Scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>).init(stdgo.Go.asInterface(stdgo._internal.text.scanner.Scanner__makeSource._makeSource((" \t%s\n" : stdgo.GoString))));
        (@:checkr _s ?? throw "null pointer dereference").mode = _mode;
        var _tok = (@:check2r _s.scan() : stdgo.GoInt32);
        var _line = (1 : stdgo.GoInt);
        for (__0 => _k in stdgo._internal.text.scanner.Scanner__tokenList._tokenList) {
            if ((((_mode & (512u32 : stdgo.GoUInt) : stdgo.GoUInt) == (0u32 : stdgo.GoUInt)) || (_k._tok != (-8 : stdgo.GoInt32)) : Bool)) {
                stdgo._internal.text.scanner.Scanner__checkTok._checkTok(_t, _s, _line, _tok, _k._tok, _k._text?.__copy__());
                _tok = @:check2r _s.scan();
            };
            _line = (_line + ((stdgo._internal.text.scanner.Scanner__countNewlines._countNewlines(_k._text?.__copy__()) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        };
        stdgo._internal.text.scanner.Scanner__checkTok._checkTok(_t, _s, _line, _tok, (-1 : stdgo.GoInt32), stdgo.Go.str()?.__copy__());
    }
