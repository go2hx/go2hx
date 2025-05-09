package stdgo._internal.database.sql;
function _convertAssignRows(_dest:stdgo.AnyInterface, _src:stdgo.AnyInterface, _rows:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L222"
        {
            final __type__ = _src;
            if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                var _s:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? "" : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L224"
                {
                    final __type__ = _dest;
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoString>))) {
                        var _d:stdgo.Pointer<stdgo.GoString> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoString>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoString>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Pointer<stdgo.GoString>) : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L226"
                        if (_d == null) {
                            //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L227"
                            return stdgo._internal.database.sql.Sql__errnilptr._errNilPtr;
                        };
                        _d.value = _s?.__copy__();
                        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L230"
                        return (null : stdgo.Error);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))) {
                        var _d:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>> = __type__ == null ? (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>) : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L232"
                        if (({
                            final value = _d;
                            (value == null || (value : Dynamic).__nil__);
                        })) {
                            //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L233"
                            return stdgo._internal.database.sql.Sql__errnilptr._errNilPtr;
                        };
                        (_d : stdgo.Slice<stdgo.GoUInt8>).__setData__((_s : stdgo.Slice<stdgo.GoUInt8>));
                        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L236"
                        return (null : stdgo.Error);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes>))) {
                        var _d:stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes>) : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L238"
                        if (({
                            final value = _d;
                            (value == null || (value : Dynamic).__nil__);
                        })) {
                            //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L239"
                            return stdgo._internal.database.sql.Sql__errnilptr._errNilPtr;
                        };
                        (_d : stdgo._internal.database.sql.Sql_rawbytes.RawBytes).__setData__(((((_d : stdgo._internal.database.sql.Sql_rawbytes.RawBytes)).__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.database.sql.Sql_rawbytes.RawBytes).__append__(...(_s : Array<stdgo.GoUInt8>)) : stdgo._internal.database.sql.Sql_rawbytes.RawBytes));
                        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L242"
                        return (null : stdgo.Error);
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt8>))) {
                var _s:stdgo.Slice<stdgo.GoUInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L245"
                {
                    final __type__ = _dest;
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoString>))) {
                        var _d:stdgo.Pointer<stdgo.GoString> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoString>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoString>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Pointer<stdgo.GoString>) : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L247"
                        if (_d == null) {
                            //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L248"
                            return stdgo._internal.database.sql.Sql__errnilptr._errNilPtr;
                        };
                        _d.value = (_s : stdgo.GoString)?.__copy__();
                        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L251"
                        return (null : stdgo.Error);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.AnyInterface>))) {
                        var _d:stdgo.Ref<stdgo.AnyInterface> = __type__ == null ? (null : stdgo.Ref<stdgo.AnyInterface>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.AnyInterface>) : __type__ == null ? (null : stdgo.Ref<stdgo.AnyInterface>) : __type__.__underlying__().value;
                        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L253"
                        if (({
                            final value = _d;
                            (value == null || (value : Dynamic).__nil__);
                        })) {
                            //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L254"
                            return stdgo._internal.database.sql.Sql__errnilptr._errNilPtr;
                        };
                        (_d : stdgo.AnyInterface).__setData__(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes_clone.clone(_s)));
                        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L257"
                        return (null : stdgo.Error);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))) {
                        var _d:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>> = __type__ == null ? (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>) : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L259"
                        if (({
                            final value = _d;
                            (value == null || (value : Dynamic).__nil__);
                        })) {
                            //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L260"
                            return stdgo._internal.database.sql.Sql__errnilptr._errNilPtr;
                        };
                        (_d : stdgo.Slice<stdgo.GoUInt8>).__setData__(stdgo._internal.bytes.Bytes_clone.clone(_s));
                        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L263"
                        return (null : stdgo.Error);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes>))) {
                        var _d:stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes>) : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L265"
                        if (({
                            final value = _d;
                            (value == null || (value : Dynamic).__nil__);
                        })) {
                            //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L266"
                            return stdgo._internal.database.sql.Sql__errnilptr._errNilPtr;
                        };
                        (_d : stdgo._internal.database.sql.Sql_rawbytes.RawBytes).__setData__(_s);
                        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L269"
                        return (null : stdgo.Error);
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.time.Time_time.Time))) {
                var _s:stdgo._internal.time.Time_time.Time = __type__ == null ? ({} : stdgo._internal.time.Time_time.Time) : __type__.__underlying__() == null ? ({} : stdgo._internal.time.Time_time.Time) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.time.Time_time.Time) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L272"
                {
                    final __type__ = _dest;
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.time.Time_time.Time>))) {
                        var _d:stdgo.Ref<stdgo._internal.time.Time_time.Time> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.time.Time_time.Time>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.time.Time_time.Time>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.time.Time_time.Time>) : __type__.__underlying__().value);
                        {
                            var __tmp__ = _s?.__copy__();
                            var x = (_d : stdgo._internal.time.Time_time.Time);
                            x._wall = __tmp__?._wall;
                            x._ext = __tmp__?._ext;
                            x._loc = __tmp__?._loc;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L275"
                        return (null : stdgo.Error);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoString>))) {
                        var _d:stdgo.Pointer<stdgo.GoString> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoString>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoString>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Pointer<stdgo.GoString>) : __type__.__underlying__().value);
                        _d.value = _s.format(("2006-01-02T15:04:05.999999999Z07:00" : stdgo.GoString))?.__copy__();
                        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L278"
                        return (null : stdgo.Error);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))) {
                        var _d:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>> = __type__ == null ? (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>) : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L280"
                        if (({
                            final value = _d;
                            (value == null || (value : Dynamic).__nil__);
                        })) {
                            //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L281"
                            return stdgo._internal.database.sql.Sql__errnilptr._errNilPtr;
                        };
                        (_d : stdgo.Slice<stdgo.GoUInt8>).__setData__((_s.format(("2006-01-02T15:04:05.999999999Z07:00" : stdgo.GoString)) : stdgo.Slice<stdgo.GoUInt8>));
                        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L284"
                        return (null : stdgo.Error);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes>))) {
                        var _d:stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes>) : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L286"
                        if (({
                            final value = _d;
                            (value == null || (value : Dynamic).__nil__);
                        })) {
                            //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L287"
                            return stdgo._internal.database.sql.Sql__errnilptr._errNilPtr;
                        };
                        (_d : stdgo._internal.database.sql.Sql_rawbytes.RawBytes).__setData__(_s.appendFormat((((_d : stdgo._internal.database.sql.Sql_rawbytes.RawBytes)).__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.database.sql.Sql_rawbytes.RawBytes), ("2006-01-02T15:04:05.999999999Z07:00" : stdgo.GoString)));
                        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L290"
                        return (null : stdgo.Error);
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.database.sql.Sql_t_decimaldecompose.T_decimalDecompose))) {
                var _s:stdgo._internal.database.sql.Sql_t_decimaldecompose.T_decimalDecompose = __type__ == null ? (null : stdgo._internal.database.sql.Sql_t_decimaldecompose.T_decimalDecompose) : __type__.__underlying__() == null ? (null : stdgo._internal.database.sql.Sql_t_decimaldecompose.T_decimalDecompose) : __type__ == null ? (null : stdgo._internal.database.sql.Sql_t_decimaldecompose.T_decimalDecompose) : __type__.__underlying__().value;
                //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L293"
                {
                    final __type__ = _dest;
                    if (stdgo.Go.typeEquals((__type__ : stdgo._internal.database.sql.Sql_t_decimalcompose.T_decimalCompose))) {
                        var _d:stdgo._internal.database.sql.Sql_t_decimalcompose.T_decimalCompose = __type__ == null ? (null : stdgo._internal.database.sql.Sql_t_decimalcompose.T_decimalCompose) : __type__.__underlying__() == null ? (null : stdgo._internal.database.sql.Sql_t_decimalcompose.T_decimalCompose) : __type__ == null ? (null : stdgo._internal.database.sql.Sql_t_decimalcompose.T_decimalCompose) : __type__.__underlying__().value;
                        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L295"
                        return ({
                            @:tupleArg var __tmp__ = _s.decompose((null : stdgo.Slice<stdgo.GoUInt8>));
                            var __f__ = _d.compose;
                            var __tmp__ = _s.decompose((null : stdgo.Slice<stdgo.GoUInt8>));
                            __f__((__tmp__._0 : stdgo.GoUInt8), (__tmp__._1 : Bool), (__tmp__._2 : stdgo.Slice<stdgo.GoUInt8>), (__tmp__._3 : stdgo.GoInt32));
                        });
                    };
                };
            } else if (__type__ == null) {
                var _s:stdgo.AnyInterface = __type__ == null ? (null : stdgo.AnyInterface) : __type__.__underlying__();
                //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L298"
                {
                    final __type__ = _dest;
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.AnyInterface>))) {
                        var _d:stdgo.Ref<stdgo.AnyInterface> = __type__ == null ? (null : stdgo.Ref<stdgo.AnyInterface>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.AnyInterface>) : __type__ == null ? (null : stdgo.Ref<stdgo.AnyInterface>) : __type__.__underlying__().value;
                        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L300"
                        if (({
                            final value = _d;
                            (value == null || (value : Dynamic).__nil__);
                        })) {
                            //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L301"
                            return stdgo._internal.database.sql.Sql__errnilptr._errNilPtr;
                        };
                        (_d : stdgo.AnyInterface).__setData__((null : stdgo.AnyInterface));
                        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L304"
                        return (null : stdgo.Error);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))) {
                        var _d:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>> = __type__ == null ? (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>) : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L306"
                        if (({
                            final value = _d;
                            (value == null || (value : Dynamic).__nil__);
                        })) {
                            //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L307"
                            return stdgo._internal.database.sql.Sql__errnilptr._errNilPtr;
                        };
                        (_d : stdgo.Slice<stdgo.GoUInt8>).__setData__((null : stdgo.Slice<stdgo.GoUInt8>));
                        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L310"
                        return (null : stdgo.Error);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes>))) {
                        var _d:stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes>) : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L312"
                        if (({
                            final value = _d;
                            (value == null || (value : Dynamic).__nil__);
                        })) {
                            //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L313"
                            return stdgo._internal.database.sql.Sql__errnilptr._errNilPtr;
                        };
                        (_d : stdgo._internal.database.sql.Sql_rawbytes.RawBytes).__setData__(null);
                        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L316"
                        return (null : stdgo.Error);
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.database.sql.driver.Driver_rows.Rows))) {
                var _s:stdgo._internal.database.sql.driver.Driver_rows.Rows = __type__ == null ? (null : stdgo._internal.database.sql.driver.Driver_rows.Rows) : __type__.__underlying__() == null ? (null : stdgo._internal.database.sql.driver.Driver_rows.Rows) : __type__ == null ? (null : stdgo._internal.database.sql.driver.Driver_rows.Rows) : __type__.__underlying__().value;
                //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L320"
                {
                    final __type__ = _dest;
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>))) {
                        var _d:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>) : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L322"
                        if (({
                            final value = _d;
                            (value == null || (value : Dynamic).__nil__);
                        })) {
                            //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L323"
                            return stdgo._internal.database.sql.Sql__errnilptr._errNilPtr;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L325"
                        if (({
                            final value = _rows;
                            (value == null || (value : Dynamic).__nil__);
                        })) {
                            //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L326"
                            return stdgo._internal.errors.Errors_new_.new_(("invalid context to convert cursor rows, missing parent *Rows" : stdgo.GoString));
                        };
                        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L328"
                        (@:checkr _rows ?? throw "null pointer dereference")._closemu.lock();
                        {
                            var __tmp__ = ({ _dc : (@:checkr _rows ?? throw "null pointer dereference")._dc, _releaseConn : function(_0:stdgo.Error):Void {}, _rowsi : _s } : stdgo._internal.database.sql.Sql_rows.Rows);
                            var x = (_d : stdgo._internal.database.sql.Sql_rows.Rows);
                            x._dc = __tmp__?._dc;
                            x._releaseConn = __tmp__?._releaseConn;
                            x._rowsi = __tmp__?._rowsi;
                            x._cancel = __tmp__?._cancel;
                            x._closeStmt = __tmp__?._closeStmt;
                            x._contextDone = __tmp__?._contextDone;
                            x._closemu = __tmp__?._closemu;
                            x._closed = __tmp__?._closed;
                            x._lasterr = __tmp__?._lasterr;
                            x._lastcols = __tmp__?._lastcols;
                            x._closemuScanHold = __tmp__?._closemuScanHold;
                            x._hitEOF = __tmp__?._hitEOF;
                        };
                        var _parentCancel = ((@:checkr _rows ?? throw "null pointer dereference")._cancel : () -> Void);
                        (@:checkr _rows ?? throw "null pointer dereference")._cancel = function():Void {
                            //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L339"
                            _d._close((@:checkr _rows ?? throw "null pointer dereference")._lasterr);
                            //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L340"
                            if (_parentCancel != null) {
                                //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L341"
                                _parentCancel();
                            };
                        };
                        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L344"
                        (@:checkr _rows ?? throw "null pointer dereference")._closemu.unlock();
                        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L345"
                        return (null : stdgo.Error);
                    };
                };
            };
        };
        var _sv:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L351"
        {
            final __type__ = _dest;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoString>))) {
                var _d:stdgo.Pointer<stdgo.GoString> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoString>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoString>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Pointer<stdgo.GoString>) : __type__.__underlying__().value);
                _sv = stdgo._internal.reflect.Reflect_valueof.valueOf(_src)?.__copy__();
                //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L354"
                {
                    final __value__ = _sv.kind();
                    if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((13u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _d.value = stdgo._internal.database.sql.Sql__asstring._asString(_src)?.__copy__();
                        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L360"
                        return (null : stdgo.Error);
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))) {
                var _d:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>> = __type__ == null ? (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>) : __type__.__underlying__().value);
                _sv = stdgo._internal.reflect.Reflect_valueof.valueOf(_src)?.__copy__();
                //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L364"
                {
                    var __tmp__ = stdgo._internal.database.sql.Sql__asbytes._asBytes((null : stdgo.Slice<stdgo.GoUInt8>), _sv?.__copy__()), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        (_d : stdgo.Slice<stdgo.GoUInt8>).__setData__(_b);
                        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L366"
                        return (null : stdgo.Error);
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes>))) {
                var _d:stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes>) : __type__.__underlying__().value);
                _sv = stdgo._internal.reflect.Reflect_valueof.valueOf(_src)?.__copy__();
                //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L370"
                {
                    var __tmp__ = stdgo._internal.database.sql.Sql__asbytes._asBytes((((_d : stdgo._internal.database.sql.Sql_rawbytes.RawBytes) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _sv?.__copy__()), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        (_d : stdgo._internal.database.sql.Sql_rawbytes.RawBytes).__setData__((_b : stdgo._internal.database.sql.Sql_rawbytes.RawBytes));
                        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L372"
                        return (null : stdgo.Error);
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<Bool>))) {
                var _d:stdgo.Pointer<Bool> = __type__ == null ? (null : stdgo.Pointer<Bool>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<Bool>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Pointer<Bool>) : __type__.__underlying__().value);
                var __tmp__ = stdgo._internal.database.sql.driver.Driver_bool_.bool_.convertValue(_src), _bv:stdgo._internal.database.sql.driver.Driver_value.Value = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L376"
                if (_err == null) {
                    _d.value = (stdgo.Go.typeAssert((_bv : Bool)) : Bool);
                };
                //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L379"
                return _err;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.AnyInterface>))) {
                var _d:stdgo.Ref<stdgo.AnyInterface> = __type__ == null ? (null : stdgo.Ref<stdgo.AnyInterface>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.AnyInterface>) : __type__ == null ? (null : stdgo.Ref<stdgo.AnyInterface>) : __type__.__underlying__().value;
                (_d : stdgo.AnyInterface).__setData__(_src);
                //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L382"
                return (null : stdgo.Error);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L385"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_dest : stdgo._internal.database.sql.Sql_scanner.Scanner)) : stdgo._internal.database.sql.Sql_scanner.Scanner), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.database.sql.Sql_scanner.Scanner), _1 : false };
            }, _scanner = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L386"
                return _scanner.scan(_src);
            };
        };
        var _dpv = (stdgo._internal.reflect.Reflect_valueof.valueOf(_dest)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L390"
        if (_dpv.kind() != ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L391"
            return stdgo._internal.errors.Errors_new_.new_(("destination not a pointer" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L393"
        if (_dpv.isNil()) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L394"
            return stdgo._internal.database.sql.Sql__errnilptr._errNilPtr;
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L397"
        if (!_sv.isValid()) {
            _sv = stdgo._internal.reflect.Reflect_valueof.valueOf(_src)?.__copy__();
        };
        var _dv = (stdgo._internal.reflect.Reflect_indirect.indirect(_dpv?.__copy__())?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L402"
        if ((_sv.isValid() && _sv.type().assignableTo(_dv.type()) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L403"
            {
                final __type__ = _src;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt8>))) {
                    var _b:stdgo.Slice<stdgo.GoUInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L405"
                    _dv.set(stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes_clone.clone(_b)))?.__copy__());
                } else {
                    var _b:stdgo.AnyInterface = __type__?.__underlying__();
                    //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L407"
                    _dv.set(_sv?.__copy__());
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L409"
            return (null : stdgo.Error);
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L412"
        if (((_dv.kind() == _sv.kind()) && _sv.type().convertibleTo(_dv.type()) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L413"
            _dv.set(_sv.convert(_dv.type())?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L414"
            return (null : stdgo.Error);
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L422"
        {
            final __value__ = _dv.kind();
            if (__value__ == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L424"
                if (_src == null) {
                    //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L425"
                    _dv.setZero();
                    //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L426"
                    return (null : stdgo.Error);
                };
                //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L428"
                _dv.set(stdgo._internal.reflect.Reflect_new_.new_(_dv.type().elem())?.__copy__());
                //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L429"
                return stdgo._internal.database.sql.Sql__convertassignrows._convertAssignRows(_dv.interface_(), _src, _rows);
            } else if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L431"
                if (_src == null) {
                    //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L432"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("converting NULL to %s is unsupported" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_dv.kind())));
                };
                var _s = (stdgo._internal.database.sql.Sql__asstring._asString(_src)?.__copy__() : stdgo.GoString);
                var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_s?.__copy__(), (10 : stdgo.GoInt), _dv.type().bits()), _i64:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L436"
                if (_err != null) {
                    _err = stdgo._internal.database.sql.Sql__strconverr._strconvErr(_err);
                    //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L438"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("converting driver.Value type %T (%q) to a %s: %v" : stdgo.GoString), _src, stdgo.Go.toInterface(_s), stdgo.Go.toInterface(stdgo.Go.asInterface(_dv.kind())), stdgo.Go.toInterface(_err));
                };
                //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L440"
                _dv.setInt(_i64);
                //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L441"
                return (null : stdgo.Error);
            } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L443"
                if (_src == null) {
                    //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L444"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("converting NULL to %s is unsupported" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_dv.kind())));
                };
                var _s = (stdgo._internal.database.sql.Sql__asstring._asString(_src)?.__copy__() : stdgo.GoString);
                var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint(_s?.__copy__(), (10 : stdgo.GoInt), _dv.type().bits()), _u64:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L448"
                if (_err != null) {
                    _err = stdgo._internal.database.sql.Sql__strconverr._strconvErr(_err);
                    //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L450"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("converting driver.Value type %T (%q) to a %s: %v" : stdgo.GoString), _src, stdgo.Go.toInterface(_s), stdgo.Go.toInterface(stdgo.Go.asInterface(_dv.kind())), stdgo.Go.toInterface(_err));
                };
                //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L452"
                _dv.setUint(_u64);
                //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L453"
                return (null : stdgo.Error);
            } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L455"
                if (_src == null) {
                    //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L456"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("converting NULL to %s is unsupported" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_dv.kind())));
                };
                var _s = (stdgo._internal.database.sql.Sql__asstring._asString(_src)?.__copy__() : stdgo.GoString);
                var __tmp__ = stdgo._internal.strconv.Strconv_parsefloat.parseFloat(_s?.__copy__(), _dv.type().bits()), _f64:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L460"
                if (_err != null) {
                    _err = stdgo._internal.database.sql.Sql__strconverr._strconvErr(_err);
                    //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L462"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("converting driver.Value type %T (%q) to a %s: %v" : stdgo.GoString), _src, stdgo.Go.toInterface(_s), stdgo.Go.toInterface(stdgo.Go.asInterface(_dv.kind())), stdgo.Go.toInterface(_err));
                };
                //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L464"
                _dv.setFloat(_f64);
                //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L465"
                return (null : stdgo.Error);
            } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L467"
                if (_src == null) {
                    //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L468"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("converting NULL to %s is unsupported" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_dv.kind())));
                };
                //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L470"
                {
                    final __type__ = _src;
                    if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                        var _v:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? "" : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L472"
                        _dv.setString(_v?.__copy__());
                        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L473"
                        return (null : stdgo.Error);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt8>))) {
                        var _v:stdgo.Slice<stdgo.GoUInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L475"
                        _dv.setString((_v : stdgo.GoString)?.__copy__());
                        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L476"
                        return (null : stdgo.Error);
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L480"
        return stdgo._internal.fmt.Fmt_errorf.errorf(("unsupported Scan, storing driver.Value type %T into type %T" : stdgo.GoString), _src, _dest);
    }
