package stdgo._internal.text.scanner;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.os.Os;
import stdgo._internal.unicode.Unicode;
function testScanWhitespace(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        var _ws:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var _ch = ((1 : stdgo.GoUInt8) : stdgo.GoUInt8);
            while ((_ch < (32 : stdgo.GoUInt8) : Bool)) {
                @:check2 _buf.writeByte(_ch);
_ws = (_ws | (((1i64 : stdgo.GoUInt64) << _ch : stdgo.GoUInt64)) : stdgo.GoUInt64);
                _ch++;
            };
        };
        {};
        @:check2 _buf.writeByte((120 : stdgo.GoUInt8));
        var _s = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner_Scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>).init(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)));
        (@:checkr _s ?? throw "null pointer dereference").mode = (0u32 : stdgo.GoUInt);
        (@:checkr _s ?? throw "null pointer dereference").whitespace = _ws;
        var _tok = (@:check2r _s.scan() : stdgo.GoInt32);
        if (_tok != ((120 : stdgo.GoInt32))) {
            @:check2r _t.errorf(("tok = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner_tokenString.tokenString(_tok)), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner_tokenString.tokenString((120 : stdgo.GoInt32))));
        };
    }
