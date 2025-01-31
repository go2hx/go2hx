package stdgo._internal.database.sql.driver;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.database.sql.driver.Driver.T_stringType_asInterface) class T_stringType_static_extension {
    @:keep
    @:tdfield
    static public function convertValue( _:stdgo._internal.database.sql.driver.Driver_T_stringType.T_stringType, _v:stdgo.AnyInterface):{ var _0 : stdgo._internal.database.sql.driver.Driver_Value.Value; var _1 : stdgo.Error; } {
        @:recv var _:stdgo._internal.database.sql.driver.Driver_T_stringType.T_stringType = _?.__copy__();
        {
            final __type__ = _v;
            if (stdgo.Go.typeEquals((__type__ : stdgo.GoString)) || stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt8>))) {
                return { _0 : stdgo.Go.toInterface(_v), _1 : (null : stdgo.Error) };
            };
        };
        return { _0 : stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v" : stdgo.GoString), _v)), _1 : (null : stdgo.Error) };
    }
}
