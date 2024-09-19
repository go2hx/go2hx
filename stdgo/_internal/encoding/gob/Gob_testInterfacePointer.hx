package stdgo._internal.encoding.gob;
function testInterfacePointer(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _str1 = ("howdy" : stdgo.GoString);
        var _str2 = ((("kiddo" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_String_.String_) : stdgo._internal.encoding.gob.Gob_String_.String_);
        var _item1 = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_PtrInterfaceItem.PtrInterfaceItem(stdgo.Go.toInterface(stdgo.Go.pointer(_str1)), stdgo.Go.toInterface(stdgo.Go.pointer(_str2))) : stdgo._internal.encoding.gob.Gob_PtrInterfaceItem.PtrInterfaceItem)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_PtrInterfaceItem.PtrInterfaceItem>);
        stdgo._internal.encoding.gob.Gob_register.register(stdgo.Go.toInterface(_str2));
        var _err = (stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface(_item1)) : stdgo.Error);
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(("expected no encode error; got" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _item2 = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_PtrInterfaceItem.PtrInterfaceItem() : stdgo._internal.encoding.gob.Gob_PtrInterfaceItem.PtrInterfaceItem)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_PtrInterfaceItem.PtrInterfaceItem>);
        _err = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b)).decode(stdgo.Go.toInterface((stdgo.Go.setRef(_item2) : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_PtrInterfaceItem.PtrInterfaceItem>>)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_item2.str1 : stdgo.GoString)) : stdgo.GoString), _1 : true };
            } catch(_) {
                { _0 : ("" : stdgo.GoString), _1 : false };
            }, _v = __tmp__._0, _ok = __tmp__._1;
            if ((!_ok || (_v != _str1) : Bool)) {
                _t.errorf(("basic string failed: %q should be %q" : stdgo.GoString), stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_str1));
            };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_item2.str2 : stdgo._internal.encoding.gob.Gob_String_.String_)) : stdgo._internal.encoding.gob.Gob_String_.String_), _1 : true };
            } catch(_) {
                { _0 : (("" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_String_.String_), _1 : false };
            }, _v = __tmp__._0, _ok = __tmp__._1;
            if ((!_ok || (_v != _str2) : Bool)) {
                _t.errorf(("derived type String failed: %q should be %q" : stdgo.GoString), stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_str2));
            };
        };
    }
