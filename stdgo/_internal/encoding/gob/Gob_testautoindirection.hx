package stdgo._internal.encoding.gob;
function testAutoIndirection(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _t1:stdgo._internal.encoding.gob.Gob_t1.T1 = ({} : stdgo._internal.encoding.gob.Gob_t1.T1);
        _t1.a = (17 : stdgo.GoInt);
        _t1.b = stdgo.Go.pointer((0 : stdgo.GoInt));
        _t1.b.value = (177 : stdgo.GoInt);
        _t1.c = stdgo.Go.pointer((null : stdgo.Pointer<stdgo.GoInt>));
        _t1.c.value = stdgo.Go.pointer((0 : stdgo.GoInt));
        _t1.c.value.value = (1777 : stdgo.GoInt);
        _t1.d = stdgo.Go.pointer((null : stdgo.Pointer<stdgo.Pointer<stdgo.GoInt>>));
        _t1.d.value = stdgo.Go.pointer((null : stdgo.Pointer<stdgo.GoInt>));
        _t1.d.value.value = stdgo.Go.pointer((0 : stdgo.GoInt));
        _t1.d.value.value.value = (17777 : stdgo.GoInt);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b));
        @:check2r _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_t1)));
        var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _t0:stdgo._internal.encoding.gob.Gob_t0.T0 = ({} : stdgo._internal.encoding.gob.Gob_t0.T0);
        @:check2r _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_t0) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t0.T0>))));
        if ((((_t0.a != ((17 : stdgo.GoInt)) || _t0.b != ((177 : stdgo.GoInt)) : Bool) || _t0.c != ((1777 : stdgo.GoInt)) : Bool) || (_t0.d != (17777 : stdgo.GoInt)) : Bool)) {
            @:check2r _t.errorf(("t1->t0: expected {17 177 1777 17777}; got %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t0)));
        };
        var _t2:stdgo._internal.encoding.gob.Gob_t2.T2 = ({} : stdgo._internal.encoding.gob.Gob_t2.T2);
        _t2.d = (17777 : stdgo.GoInt);
        _t2.c = stdgo.Go.pointer((0 : stdgo.GoInt));
        _t2.c.value = (1777 : stdgo.GoInt);
        _t2.b = stdgo.Go.pointer((null : stdgo.Pointer<stdgo.GoInt>));
        _t2.b.value = stdgo.Go.pointer((0 : stdgo.GoInt));
        _t2.b.value.value = (177 : stdgo.GoInt);
        _t2.a = stdgo.Go.pointer((null : stdgo.Pointer<stdgo.Pointer<stdgo.GoInt>>));
        _t2.a.value = stdgo.Go.pointer((null : stdgo.Pointer<stdgo.GoInt>));
        _t2.a.value.value = stdgo.Go.pointer((0 : stdgo.GoInt));
        _t2.a.value.value.value = (17 : stdgo.GoInt);
        @:check2r _b.reset();
        @:check2r _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_t2)));
        _t0 = (new stdgo._internal.encoding.gob.Gob_t0.T0() : stdgo._internal.encoding.gob.Gob_t0.T0);
        @:check2r _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_t0) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t0.T0>))));
        if ((((_t0.a != ((17 : stdgo.GoInt)) || _t0.b != ((177 : stdgo.GoInt)) : Bool) || _t0.c != ((1777 : stdgo.GoInt)) : Bool) || (_t0.d != (17777 : stdgo.GoInt)) : Bool)) {
            @:check2r _t.errorf(("t2->t0 expected {17 177 1777 17777}; got %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t0)));
        };
        _t0 = (new stdgo._internal.encoding.gob.Gob_t0.T0((17 : stdgo.GoInt), (177 : stdgo.GoInt), (1777 : stdgo.GoInt), (17777 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_t0.T0);
        @:check2r _b.reset();
        @:check2r _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_t0)));
        _t1 = (new stdgo._internal.encoding.gob.Gob_t1.T1() : stdgo._internal.encoding.gob.Gob_t1.T1);
        @:check2r _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_t1) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t1.T1>))));
        if ((((_t1.a != ((17 : stdgo.GoInt)) || _t1.b.value != ((177 : stdgo.GoInt)) : Bool) || _t1.c.value.value != ((1777 : stdgo.GoInt)) : Bool) || (_t1.d.value.value.value != (17777 : stdgo.GoInt)) : Bool)) {
            @:check2r _t.errorf(("t0->t1 expected {17 177 1777 17777}; got {%d %d %d %d}" : stdgo.GoString), stdgo.Go.toInterface(_t1.a), stdgo.Go.toInterface(_t1.b.value), stdgo.Go.toInterface(_t1.c.value.value), stdgo.Go.toInterface(_t1.d.value.value.value));
        };
        @:check2r _b.reset();
        @:check2r _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_t0)));
        _t2 = (new stdgo._internal.encoding.gob.Gob_t2.T2() : stdgo._internal.encoding.gob.Gob_t2.T2);
        @:check2r _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_t2) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t2.T2>))));
        if ((((_t2.a.value.value.value != ((17 : stdgo.GoInt)) || _t2.b.value.value != ((177 : stdgo.GoInt)) : Bool) || _t2.c.value != ((1777 : stdgo.GoInt)) : Bool) || (_t2.d != (17777 : stdgo.GoInt)) : Bool)) {
            @:check2r _t.errorf(("t0->t2 expected {17 177 1777 17777}; got {%d %d %d %d}" : stdgo.GoString), stdgo.Go.toInterface(_t2.a.value.value.value), stdgo.Go.toInterface(_t2.b.value.value), stdgo.Go.toInterface(_t2.c.value), stdgo.Go.toInterface(_t2.d));
        };
        @:check2r _b.reset();
        @:check2r _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_t0)));
        _t2.a.value.value.value = (0 : stdgo.GoInt);
        _t2.b.value.value = (0 : stdgo.GoInt);
        _t2.c.value = (0 : stdgo.GoInt);
        _t2.d = (0 : stdgo.GoInt);
        @:check2r _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_t2) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t2.T2>))));
        if ((((_t2.a.value.value.value != ((17 : stdgo.GoInt)) || _t2.b.value.value != ((177 : stdgo.GoInt)) : Bool) || _t2.c.value != ((1777 : stdgo.GoInt)) : Bool) || (_t2.d != (17777 : stdgo.GoInt)) : Bool)) {
            @:check2r _t.errorf(("t0->t2 expected {17 177 1777 17777}; got {%d %d %d %d}" : stdgo.GoString), stdgo.Go.toInterface(_t2.a.value.value.value), stdgo.Go.toInterface(_t2.b.value.value), stdgo.Go.toInterface(_t2.c.value), stdgo.Go.toInterface(_t2.d));
        };
    }
