package stdgo._internal.text.scanner;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.os.Os;
import stdgo._internal.unicode.Unicode;
function _checkScanPos(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>, _offset:stdgo.GoInt, _line:stdgo.GoInt, _column:stdgo.GoInt, _char:stdgo.GoInt32):Void {
        var _want = ({ offset : _offset, line : _line, column : _column } : stdgo._internal.text.scanner.Scanner_Position.Position);
        stdgo._internal.text.scanner.Scanner__checkPos._checkPos(_t, @:check2r _s.pos()?.__copy__(), _want?.__copy__());
        {
            var _ch = (@:check2r _s.scan() : stdgo.GoInt32);
            if (_ch != (_char)) {
                @:check2r _t.errorf(("ch = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner_tokenString.tokenString(_ch)), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner_tokenString.tokenString(_char)));
                if ((_ch : stdgo.GoString) != (@:check2r _s.tokenText())) {
                    @:check2r _t.errorf(("tok = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(@:check2r _s.tokenText()), stdgo.Go.toInterface((_ch : stdgo.GoString)));
                };
            };
        };
        stdgo._internal.text.scanner.Scanner__checkPos._checkPos(_t, (@:checkr _s ?? throw "null pointer dereference").position?.__copy__(), _want?.__copy__());
    }
