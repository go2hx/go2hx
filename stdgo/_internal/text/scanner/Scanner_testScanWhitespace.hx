package stdgo._internal.text.scanner;
function testScanWhitespace(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _ws:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var _ch = ((1 : stdgo.GoUInt8) : stdgo.GoUInt8);
            while ((_ch < (32 : stdgo.GoUInt8) : Bool)) {
                _buf.writeByte(_ch);
_ws = (_ws | (((1i64 : stdgo.GoUInt64) << _ch : stdgo.GoUInt64)) : stdgo.GoUInt64);
                _ch++;
            };
        };
        {};
        _buf.writeByte((120 : stdgo.GoUInt8));
        var _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner_Scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>).init(stdgo.Go.asInterface(_buf__pointer__));
        _s.mode = (0u32 : stdgo.GoUInt);
        _s.whitespace = _ws;
        var _tok = (_s.scan() : stdgo.GoInt32);
        if (_tok != ((120 : stdgo.GoInt32))) {
            _t.errorf(("tok = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner_tokenString.tokenString(_tok)), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner_tokenString.tokenString((120 : stdgo.GoInt32))));
        };
    }
