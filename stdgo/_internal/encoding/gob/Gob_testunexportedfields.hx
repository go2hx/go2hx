package stdgo._internal.encoding.gob;
function testUnexportedFields(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _u0:stdgo._internal.encoding.gob.Gob_u.U = ({} : stdgo._internal.encoding.gob.Gob_u.U);
        _u0.a = (17 : stdgo.GoInt);
        _u0.b = ("hello" : stdgo.GoString);
        _u0._c = (3.14159 : stdgo.GoFloat64);
        _u0.d = (23u32 : stdgo.GoUInt);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        @:check2r stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_u0)));
        var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _u1:stdgo._internal.encoding.gob.Gob_u.U = ({} : stdgo._internal.encoding.gob.Gob_u.U);
        _u1._c = (1234 : stdgo.GoFloat64);
        var _err = (@:check2r _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_u1) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_u.U>)))) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (((_u0.a != (_u1.a) || _u0.b != (_u1.b) : Bool) || (_u0.d != _u1.d) : Bool)) {
            @:check2r _t.errorf(("u1->u0: expected %v; got %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_u0)), stdgo.Go.toInterface(stdgo.Go.asInterface(_u1)));
        };
        if (_u1._c != (1234 : stdgo.GoFloat64)) {
            @:check2r _t.error(stdgo.Go.toInterface(("u1.c modified" : stdgo.GoString)));
        };
    }
