package stdgo._internal.database.sql.driver;
@:keep @:allow(stdgo._internal.database.sql.driver.Driver.T_stringType_asInterface) class T_stringType_static_extension {
    @:keep
    @:tdfield
    static public function convertValue( _:stdgo._internal.database.sql.driver.Driver_t_stringtype.T_stringType, _v:stdgo.AnyInterface):{ var _0 : stdgo._internal.database.sql.driver.Driver_value.Value; var _1 : stdgo.Error; } {
        @:recv var _:stdgo._internal.database.sql.driver.Driver_t_stringtype.T_stringType = _?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/database/sql/driver/types.go#L142"
        {
            final __type__ = _v;
            if (stdgo.Go.typeEquals((__type__ : stdgo.GoString)) || stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt8>))) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/driver/types.go#L144"
                return { _0 : stdgo.Go.toInterface(_v), _1 : (null : stdgo.Error) };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/driver/types.go#L146"
        return { _0 : stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v" : stdgo.GoString), _v)), _1 : (null : stdgo.Error) };
    }
}
