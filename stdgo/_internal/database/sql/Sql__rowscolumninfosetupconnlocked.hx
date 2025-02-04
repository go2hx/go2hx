package stdgo._internal.database.sql;
function _rowsColumnInfoSetupConnLocked(_rowsi:stdgo._internal.database.sql.driver.Driver_rows.Rows):stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_columntype.ColumnType>> {
        var _names = _rowsi.columns();
        var _list = (new stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_columntype.ColumnType>>((_names.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_columntype.ColumnType>>);
        for (_i => _ in _list) {
            var _ci = (stdgo.Go.setRef(({ _name : _names[(_i : stdgo.GoInt)]?.__copy__() } : stdgo._internal.database.sql.Sql_columntype.ColumnType)) : stdgo.Ref<stdgo._internal.database.sql.Sql_columntype.ColumnType>);
            _list[(_i : stdgo.GoInt)] = _ci;
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_rowsi) : stdgo._internal.database.sql.driver.Driver_rowscolumntypescantype.RowsColumnTypeScanType)) : stdgo._internal.database.sql.driver.Driver_rowscolumntypescantype.RowsColumnTypeScanType), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.database.sql.driver.Driver_rowscolumntypescantype.RowsColumnTypeScanType), _1 : false };
                }, _prop = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    (@:checkr _ci ?? throw "null pointer dereference")._scanType = _prop.columnTypeScanType(_i);
                } else {
                    (@:checkr _ci ?? throw "null pointer dereference")._scanType = stdgo._internal.reflect.Reflect_typeof.typeOf(stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.AnyInterface)) : stdgo.Ref<stdgo.AnyInterface>))).elem();
                };
            };
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_rowsi) : stdgo._internal.database.sql.driver.Driver_rowscolumntypedatabasetypename.RowsColumnTypeDatabaseTypeName)) : stdgo._internal.database.sql.driver.Driver_rowscolumntypedatabasetypename.RowsColumnTypeDatabaseTypeName), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.database.sql.driver.Driver_rowscolumntypedatabasetypename.RowsColumnTypeDatabaseTypeName), _1 : false };
                }, _prop = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    (@:checkr _ci ?? throw "null pointer dereference")._databaseType = _prop.columnTypeDatabaseTypeName(_i)?.__copy__();
                };
            };
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_rowsi) : stdgo._internal.database.sql.driver.Driver_rowscolumntypelength.RowsColumnTypeLength)) : stdgo._internal.database.sql.driver.Driver_rowscolumntypelength.RowsColumnTypeLength), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.database.sql.driver.Driver_rowscolumntypelength.RowsColumnTypeLength), _1 : false };
                }, _prop = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    {
                        var __tmp__ = _prop.columnTypeLength(_i);
                        (@:checkr _ci ?? throw "null pointer dereference")._length = @:tmpset0 __tmp__._0;
                        (@:checkr _ci ?? throw "null pointer dereference")._hasLength = @:tmpset0 __tmp__._1;
                    };
                };
            };
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_rowsi) : stdgo._internal.database.sql.driver.Driver_rowscolumntypenullable.RowsColumnTypeNullable)) : stdgo._internal.database.sql.driver.Driver_rowscolumntypenullable.RowsColumnTypeNullable), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.database.sql.driver.Driver_rowscolumntypenullable.RowsColumnTypeNullable), _1 : false };
                }, _prop = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    {
                        var __tmp__ = _prop.columnTypeNullable(_i);
                        (@:checkr _ci ?? throw "null pointer dereference")._nullable = @:tmpset0 __tmp__._0;
                        (@:checkr _ci ?? throw "null pointer dereference")._hasNullable = @:tmpset0 __tmp__._1;
                    };
                };
            };
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_rowsi) : stdgo._internal.database.sql.driver.Driver_rowscolumntypeprecisionscale.RowsColumnTypePrecisionScale)) : stdgo._internal.database.sql.driver.Driver_rowscolumntypeprecisionscale.RowsColumnTypePrecisionScale), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.database.sql.driver.Driver_rowscolumntypeprecisionscale.RowsColumnTypePrecisionScale), _1 : false };
                }, _prop = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    {
                        var __tmp__ = _prop.columnTypePrecisionScale(_i);
                        (@:checkr _ci ?? throw "null pointer dereference")._precision = @:tmpset0 __tmp__._0;
                        (@:checkr _ci ?? throw "null pointer dereference")._scale = @:tmpset0 __tmp__._1;
                        (@:checkr _ci ?? throw "null pointer dereference")._hasPrecisionScale = @:tmpset0 __tmp__._2;
                    };
                };
            };
        };
        return _list;
    }
