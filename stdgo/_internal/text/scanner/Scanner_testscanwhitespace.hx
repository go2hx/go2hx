package stdgo._internal.text.scanner;
function testScanWhitespace(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
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
        var _s = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner_scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>).init(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
        (@:checkr _s ?? throw "null pointer dereference").mode = (0u32 : stdgo.GoUInt);
        (@:checkr _s ?? throw "null pointer dereference").whitespace = _ws;
        var _tok = (@:check2r _s.scan() : stdgo.GoInt32);
        if (_tok != ((120 : stdgo.GoInt32))) {
            @:check2r _t.errorf(("tok = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner_tokenstring.tokenString(_tok)), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner_tokenstring.tokenString((120 : stdgo.GoInt32))));
        };
    }
