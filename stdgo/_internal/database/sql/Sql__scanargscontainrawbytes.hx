package stdgo._internal.database.sql;
function _scanArgsContainRawBytes(_args:stdgo.Slice<stdgo.AnyInterface>):Bool {
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3345"
        for (__19 => _a in _args) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3346"
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_a : stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes>)) : stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes>), _1 : false };
                }, __20 = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3347"
                    return true;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3350"
        return false;
    }
