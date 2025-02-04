package stdgo._internal.encoding.gob;
function testInterfacePointer(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _str1 = (("howdy" : stdgo.GoString) : stdgo.GoString);
        var _str1__pointer__ = stdgo.Go.pointer(_str1);
        var _str1__pointer__ = stdgo.Go.pointer(_str1);
        var _str1__pointer__ = stdgo.Go.pointer(_str1);
        var _str1__pointer__ = stdgo.Go.pointer(_str1);
        var _str2 = ((("kiddo" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_string_.String_) : stdgo._internal.encoding.gob.Gob_string_.String_);
        var _str2__pointer__ = stdgo.Go.pointer(_str2);
        var _str2__pointer__ = stdgo.Go.pointer(_str2);
        var _str2__pointer__ = stdgo.Go.pointer(_str2);
        var _str2__pointer__ = stdgo.Go.pointer(_str2);
        var _item1 = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_ptrinterfaceitem.PtrInterfaceItem(stdgo.Go.toInterface(_str1__pointer__), stdgo.Go.toInterface(_str2__pointer__)) : stdgo._internal.encoding.gob.Gob_ptrinterfaceitem.PtrInterfaceItem)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_ptrinterfaceitem.PtrInterfaceItem>);
        stdgo._internal.encoding.gob.Gob_register.register(stdgo.Go.toInterface(_str2));
        var _err = (@:check2r stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_item1))) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.error(stdgo.Go.toInterface(("expected no encode error; got" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _item2 = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_ptrinterfaceitem.PtrInterfaceItem() : stdgo._internal.encoding.gob.Gob_ptrinterfaceitem.PtrInterfaceItem)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_ptrinterfaceitem.PtrInterfaceItem>);
        _err = @:check2r stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_b)).decode(stdgo.Go.toInterface((stdgo.Go.setRef(_item2) : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_ptrinterfaceitem.PtrInterfaceItem>>)));
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert(((@:checkr _item2 ?? throw "null pointer dereference").str1 : stdgo.GoString)) : stdgo.GoString), _1 : true };
            } catch(_) {
                { _0 : ("" : stdgo.GoString), _1 : false };
            }, _v = __tmp__._0, _ok = __tmp__._1;
            if ((!_ok || (_v != _str1) : Bool)) {
                @:check2r _t.errorf(("basic string failed: %q should be %q" : stdgo.GoString), stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_str1));
            };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert(((@:checkr _item2 ?? throw "null pointer dereference").str2 : stdgo._internal.encoding.gob.Gob_string_.String_)) : stdgo._internal.encoding.gob.Gob_string_.String_), _1 : true };
            } catch(_) {
                { _0 : (("" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_string_.String_), _1 : false };
            }, _v = __tmp__._0, _ok = __tmp__._1;
            if ((!_ok || (_v != _str2) : Bool)) {
                @:check2r _t.errorf(("derived type String failed: %q should be %q" : stdgo.GoString), stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_str2));
            };
        };
    }
