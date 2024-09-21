package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function exampleStructOf():Void {
        var _typ = (stdgo._internal.reflect.Reflect_structOf.structOf((new stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>(2, 2, ...[({ name : ("Height" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((0 : stdgo.GoFloat64))), tag : (("json:\"height\"" : stdgo.GoString) : stdgo._internal.reflect.Reflect_StructTag.StructTag) } : stdgo._internal.reflect.Reflect_StructField.StructField), ({ name : ("Age" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((0 : stdgo.GoInt))), tag : (("json:\"age\"" : stdgo.GoString) : stdgo._internal.reflect.Reflect_StructTag.StructTag) } : stdgo._internal.reflect.Reflect_StructField.StructField)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_StructField.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_StructField.StructField>)) : stdgo._internal.reflect.Reflect_Type_.Type_);
        var _v = (stdgo._internal.reflect.Reflect_new_.new_(_typ).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        _v.field((0 : stdgo.GoInt)).setFloat((0.4 : stdgo.GoFloat64));
        _v.field((1 : stdgo.GoInt)).setInt((2i64 : stdgo.GoInt64));
        var _s = (_v.addr().interface_() : stdgo.AnyInterface);
        var _w = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        {
            var _err = (stdgo._internal.encoding.json.Json_newEncoder.newEncoder(stdgo.Go.asInterface(_w)).encode(_s) : stdgo.Error);
            if (_err != null) {
                throw stdgo.Go.toInterface(_err);
            };
        };
        stdgo._internal.fmt.Fmt_printf.printf(("value: %+v\n" : stdgo.GoString), _s);
        stdgo._internal.fmt.Fmt_printf.printf(("json:  %s" : stdgo.GoString), stdgo.Go.toInterface(_w.bytes()));
        var _r = stdgo._internal.bytes.Bytes_newReader.newReader((("{\"height\":1.5,\"age\":10}" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        {
            var _err = (stdgo._internal.encoding.json.Json_newDecoder.newDecoder(stdgo.Go.asInterface(_r)).decode(_s) : stdgo.Error);
            if (_err != null) {
                throw stdgo.Go.toInterface(_err);
            };
        };
        stdgo._internal.fmt.Fmt_printf.printf(("value: %+v\n" : stdgo.GoString), _s);
    }
