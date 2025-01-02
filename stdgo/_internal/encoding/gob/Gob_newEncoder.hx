package stdgo._internal.encoding.gob;
function newEncoder(_w:stdgo._internal.io.Io_Writer.Writer):stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder> {
        var _enc = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_Encoder.Encoder)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>);
        (@:checkr _enc ?? throw "null pointer dereference")._w = (new stdgo.Slice<stdgo._internal.io.Io_Writer.Writer>(1, 1, ...[_w]) : stdgo.Slice<stdgo._internal.io.Io_Writer.Writer>);
        (@:checkr _enc ?? throw "null pointer dereference")._sent = (({
            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.reflect.Reflect_Type_.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
            x.__defaultValue__ = () -> ((0 : stdgo.GoInt32) : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId);
            {};
            cast x;
        } : stdgo.GoMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId>) : stdgo.GoMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId>);
        (@:checkr _enc ?? throw "null pointer dereference")._countState = @:check2r _enc._newEncoderState((stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>));
        return _enc;
    }
