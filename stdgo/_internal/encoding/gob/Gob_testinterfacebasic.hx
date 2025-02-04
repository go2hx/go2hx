package stdgo._internal.encoding.gob;
function testInterfaceBasic(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _item1 = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_basicinterfaceitem.BasicInterfaceItem(
stdgo.Go.toInterface((1 : stdgo.GoInt)),
stdgo.Go.toInterface((1 : stdgo.GoInt8)),
stdgo.Go.toInterface((1 : stdgo.GoInt16)),
stdgo.Go.toInterface((1 : stdgo.GoInt32)),
stdgo.Go.toInterface((1i64 : stdgo.GoInt64)),
stdgo.Go.toInterface((1u32 : stdgo.GoUInt)),
stdgo.Go.toInterface((1 : stdgo.GoUInt8)),
stdgo.Go.toInterface((1 : stdgo.GoUInt16)),
stdgo.Go.toInterface((1u32 : stdgo.GoUInt32)),
stdgo.Go.toInterface((1i64 : stdgo.GoUInt64)),
stdgo.Go.toInterface(((1 : stdgo.GoFloat64) : stdgo.GoFloat32)),
stdgo.Go.toInterface((1 : stdgo.GoFloat64)),
stdgo.Go.toInterface(((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 1f64) : stdgo.GoComplex64)),
stdgo.Go.toInterface(((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 1f64) : stdgo.GoComplex128)),
stdgo.Go.toInterface(true),
stdgo.Go.toInterface(("hello" : stdgo.GoString)),
stdgo.Go.toInterface(((("sailor" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo._internal.encoding.gob.Gob_basicinterfaceitem.BasicInterfaceItem)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_basicinterfaceitem.BasicInterfaceItem>);
        var _err = (@:check2r stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_item1))) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.error(stdgo.Go.toInterface(("expected no encode error; got" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _item2 = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_basicinterfaceitem.BasicInterfaceItem() : stdgo._internal.encoding.gob.Gob_basicinterfaceitem.BasicInterfaceItem)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_basicinterfaceitem.BasicInterfaceItem>);
        _err = @:check2r stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_b)).decode(stdgo.Go.toInterface((stdgo.Go.setRef(_item2) : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_basicinterfaceitem.BasicInterfaceItem>>)));
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(stdgo.Go.asInterface(_item1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_item2)))) {
            @:check2r _t.errorf(("encode expected %v got %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_item1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_item2)));
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert(((@:checkr _item2 ?? throw "null pointer dereference").bool_ : Bool)) : Bool), _1 : true };
            } catch(_) {
                { _0 : false, _1 : false };
            }, _v = __tmp__._0, _ok = __tmp__._1;
            if ((!_ok || !_v : Bool)) {
                @:check2r _t.error(stdgo.Go.toInterface(("boolean should be true" : stdgo.GoString)));
            };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert(((@:checkr _item2 ?? throw "null pointer dereference").string : stdgo.GoString)) : stdgo.GoString), _1 : true };
            } catch(_) {
                { _0 : ("" : stdgo.GoString), _1 : false };
            }, _v = __tmp__._0, _ok = __tmp__._1;
            if ((!_ok || (_v != (stdgo.Go.typeAssert(((@:checkr _item1 ?? throw "null pointer dereference").string : stdgo.GoString)) : stdgo.GoString)) : Bool)) {
                @:check2r _t.errorf(("string should be %v is %v" : stdgo.GoString), (@:checkr _item1 ?? throw "null pointer dereference").string, stdgo.Go.toInterface(_v));
            };
        };
    }
