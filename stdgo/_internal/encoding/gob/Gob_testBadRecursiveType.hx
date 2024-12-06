package stdgo._internal.encoding.gob;
function testBadRecursiveType(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _rec:stdgo._internal.encoding.gob.Gob_T_testBadRecursiveType___localname___Rec_23209.T_testBadRecursiveType___localname___Rec_23209 = (null : stdgo._internal.encoding.gob.Gob_T_testBadRecursiveType___localname___Rec_23209.T_testBadRecursiveType___localname___Rec_23209);
        var _rec__pointer__ = stdgo.Go.pointer(_rec);
        var _rec__pointer__ = stdgo.Go.pointer(_rec);
        var _rec__pointer__ = stdgo.Go.pointer(_rec);
        var _rec__pointer__ = stdgo.Go.pointer(_rec);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _err = (stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface(_rec__pointer__)) : stdgo.Error);
        if (_err == null) {
            _t.error(stdgo.Go.toInterface(("expected error; got none" : stdgo.GoString)));
        } else if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), ("recursive" : stdgo.GoString))) {
            _t.error(stdgo.Go.toInterface(("expected recursive type error; got" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
    }
