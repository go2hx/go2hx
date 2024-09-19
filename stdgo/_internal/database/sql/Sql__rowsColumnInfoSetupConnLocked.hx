package stdgo._internal.database.sql;
function _rowsColumnInfoSetupConnLocked(_rowsi:stdgo._internal.database.sql.driver.Driver_Rows.Rows):stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_ColumnType.ColumnType>> {
        var _names = _rowsi.columns();
        var _list = (new stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_ColumnType.ColumnType>>((_names.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_ColumnType.ColumnType>>);
        for (_i => _ in _list) {
            var _ci = (stdgo.Go.setRef(({ _name : _names[(_i : stdgo.GoInt)]?.__copy__() } : stdgo._internal.database.sql.Sql_ColumnType.ColumnType)) : stdgo.Ref<stdgo._internal.database.sql.Sql_ColumnType.ColumnType>);
            _list[(_i : stdgo.GoInt)] = _ci;
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_rowsi) : stdgo._internal.database.sql.driver.Driver_RowsColumnTypeScanType.RowsColumnTypeScanType)) : stdgo._internal.database.sql.driver.Driver_RowsColumnTypeScanType.RowsColumnTypeScanType), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.database.sql.driver.Driver_RowsColumnTypeScanType.RowsColumnTypeScanType), _1 : false };
                }, _prop = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _ci._scanType = _prop.columnTypeScanType(_i);
                } else {
                    _ci._scanType = stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.AnyInterface)) : stdgo.Ref<stdgo.AnyInterface>))).elem();
                };
            };
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_rowsi) : stdgo._internal.database.sql.driver.Driver_RowsColumnTypeDatabaseTypeName.RowsColumnTypeDatabaseTypeName)) : stdgo._internal.database.sql.driver.Driver_RowsColumnTypeDatabaseTypeName.RowsColumnTypeDatabaseTypeName), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.database.sql.driver.Driver_RowsColumnTypeDatabaseTypeName.RowsColumnTypeDatabaseTypeName), _1 : false };
                }, _prop = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _ci._databaseType = _prop.columnTypeDatabaseTypeName(_i)?.__copy__();
                };
            };
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_rowsi) : stdgo._internal.database.sql.driver.Driver_RowsColumnTypeLength.RowsColumnTypeLength)) : stdgo._internal.database.sql.driver.Driver_RowsColumnTypeLength.RowsColumnTypeLength), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.database.sql.driver.Driver_RowsColumnTypeLength.RowsColumnTypeLength), _1 : false };
                }, _prop = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    {
                        var __tmp__ = _prop.columnTypeLength(_i);
                        _ci._length = __tmp__._0;
                        _ci._hasLength = __tmp__._1;
                    };
                };
            };
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_rowsi) : stdgo._internal.database.sql.driver.Driver_RowsColumnTypeNullable.RowsColumnTypeNullable)) : stdgo._internal.database.sql.driver.Driver_RowsColumnTypeNullable.RowsColumnTypeNullable), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.database.sql.driver.Driver_RowsColumnTypeNullable.RowsColumnTypeNullable), _1 : false };
                }, _prop = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    {
                        var __tmp__ = _prop.columnTypeNullable(_i);
                        _ci._nullable = __tmp__._0;
                        _ci._hasNullable = __tmp__._1;
                    };
                };
            };
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_rowsi) : stdgo._internal.database.sql.driver.Driver_RowsColumnTypePrecisionScale.RowsColumnTypePrecisionScale)) : stdgo._internal.database.sql.driver.Driver_RowsColumnTypePrecisionScale.RowsColumnTypePrecisionScale), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.database.sql.driver.Driver_RowsColumnTypePrecisionScale.RowsColumnTypePrecisionScale), _1 : false };
                }, _prop = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    {
                        var __tmp__ = _prop.columnTypePrecisionScale(_i);
                        _ci._precision = __tmp__._0;
                        _ci._scale = __tmp__._1;
                        _ci._hasPrecisionScale = __tmp__._2;
                    };
                };
            };
        };
        return _list;
    }
