package stdgo._internal.encoding.base32;
function testNewLineCharacters(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _examples = (new stdgo.Slice<stdgo.GoString>(9, 9, ...[("ON2XEZI=" : stdgo.GoString), ("ON2XEZI=\r" : stdgo.GoString), ("ON2XEZI=\n" : stdgo.GoString), ("ON2XEZI=\r\n" : stdgo.GoString), ("ON2XEZ\r\nI=" : stdgo.GoString), ("ON2X\rEZ\nI=" : stdgo.GoString), ("ON2X\nEZ\rI=" : stdgo.GoString), ("ON2XEZ\nI=" : stdgo.GoString), ("ON2XEZI\n=" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        stdgo._internal.encoding.base32.Base32__teststringencoding._testStringEncoding(_t, ("sure" : stdgo.GoString), _examples);
        _examples = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("MZXW6YTBOI======" : stdgo.GoString), ("MZXW6YTBOI=\r\n=====" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        stdgo._internal.encoding.base32.Base32__teststringencoding._testStringEncoding(_t, ("foobar" : stdgo.GoString), _examples);
    }
