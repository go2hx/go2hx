package stdgo._internal.database.sql;
function _convertAssignRows(_dest:stdgo.AnyInterface, _src:stdgo.AnyInterface, _rows:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>):stdgo.Error {
        {
            final __type__ = _src;
            if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                var _s:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : __type__ == null ? "" : __type__.__underlying__().value;
                {
                    final __type__ = _dest;
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoString>))) {
                        var _d:stdgo.Pointer<stdgo.GoString> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoString>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoString>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoString>) : __type__.__underlying__().value;
                        if (_d == null) {
                            return stdgo._internal.database.sql.Sql__errnilptr._errNilPtr;
                        };
                        _d.value = _s?.__copy__();
                        return (null : stdgo.Error);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))) {
                        var _d:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>> = __type__ == null ? (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>) : __type__ == null ? (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>) : __type__.__underlying__().value;
                        if ((_d == null || (_d : Dynamic).__nil__)) {
                            return stdgo._internal.database.sql.Sql__errnilptr._errNilPtr;
                        };
                        (_d : stdgo.Slice<stdgo.GoUInt8>).__setData__((_s : stdgo.Slice<stdgo.GoUInt8>));
                        return (null : stdgo.Error);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes>))) {
                        var _d:stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes>) : __type__.__underlying__().value;
                        if ((_d == null || (_d : Dynamic).__nil__)) {
                            return stdgo._internal.database.sql.Sql__errnilptr._errNilPtr;
                        };
                        (_d : stdgo._internal.database.sql.Sql_rawbytes.RawBytes).__setData__(((((_d : stdgo._internal.database.sql.Sql_rawbytes.RawBytes)).__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.database.sql.Sql_rawbytes.RawBytes).__append__(...(_s : Array<stdgo.GoUInt8>))));
                        return (null : stdgo.Error);
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt8>))) {
                var _s:stdgo.Slice<stdgo.GoUInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__().value;
                {
                    final __type__ = _dest;
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoString>))) {
                        var _d:stdgo.Pointer<stdgo.GoString> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoString>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoString>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoString>) : __type__.__underlying__().value;
                        if (_d == null) {
                            return stdgo._internal.database.sql.Sql__errnilptr._errNilPtr;
                        };
                        _d.value = (_s : stdgo.GoString)?.__copy__();
                        return (null : stdgo.Error);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.AnyInterface>))) {
                        var _d:stdgo.Ref<stdgo.AnyInterface> = __type__ == null ? (null : stdgo.Ref<stdgo.AnyInterface>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.AnyInterface>) : __type__ == null ? (null : stdgo.Ref<stdgo.AnyInterface>) : __type__.__underlying__().value;
                        if ((_d == null || (_d : Dynamic).__nil__)) {
                            return stdgo._internal.database.sql.Sql__errnilptr._errNilPtr;
                        };
                        (_d : stdgo.AnyInterface).__setData__(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes_clone.clone(_s)));
                        return (null : stdgo.Error);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))) {
                        var _d:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>> = __type__ == null ? (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>) : __type__ == null ? (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>) : __type__.__underlying__().value;
                        if ((_d == null || (_d : Dynamic).__nil__)) {
                            return stdgo._internal.database.sql.Sql__errnilptr._errNilPtr;
                        };
                        (_d : stdgo.Slice<stdgo.GoUInt8>).__setData__(stdgo._internal.bytes.Bytes_clone.clone(_s));
                        return (null : stdgo.Error);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes>))) {
                        var _d:stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes>) : __type__.__underlying__().value;
                        if ((_d == null || (_d : Dynamic).__nil__)) {
                            return stdgo._internal.database.sql.Sql__errnilptr._errNilPtr;
                        };
                        (_d : stdgo._internal.database.sql.Sql_rawbytes.RawBytes).__setData__(_s);
                        return (null : stdgo.Error);
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.time.Time_time.Time))) {
                var _s:stdgo._internal.time.Time_time.Time = __type__ == null ? ({} : stdgo._internal.time.Time_time.Time) : __type__.__underlying__() == null ? ({} : stdgo._internal.time.Time_time.Time) : __type__ == null ? ({} : stdgo._internal.time.Time_time.Time) : __type__.__underlying__().value;
                {
                    final __type__ = _dest;
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.time.Time_time.Time>))) {
                        var _d:stdgo.Ref<stdgo._internal.time.Time_time.Time> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.time.Time_time.Time>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.time.Time_time.Time>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.time.Time_time.Time>) : __type__.__underlying__().value;
                        {
                            var __tmp__ = _s?.__copy__();
                            var x = (_d : stdgo._internal.time.Time_time.Time);
                            x._wall = __tmp__?._wall;
                            x._ext = __tmp__?._ext;
                            x._loc = __tmp__?._loc;
                        };
                        return (null : stdgo.Error);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoString>))) {
                        var _d:stdgo.Pointer<stdgo.GoString> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoString>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoString>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoString>) : __type__.__underlying__().value;
                        _d.value = _s.format(("2006-01-02T15:04:05.999999999Z07:00" : stdgo.GoString))?.__copy__();
                        return (null : stdgo.Error);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))) {
                        var _d:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>> = __type__ == null ? (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>) : __type__ == null ? (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>) : __type__.__underlying__().value;
                        if ((_d == null || (_d : Dynamic).__nil__)) {
                            return stdgo._internal.database.sql.Sql__errnilptr._errNilPtr;
                        };
                        (_d : stdgo.Slice<stdgo.GoUInt8>).__setData__((_s.format(("2006-01-02T15:04:05.999999999Z07:00" : stdgo.GoString)) : stdgo.Slice<stdgo.GoUInt8>));
                        return (null : stdgo.Error);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes>))) {
                        var _d:stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes>) : __type__.__underlying__().value;
                        if ((_d == null || (_d : Dynamic).__nil__)) {
                            return stdgo._internal.database.sql.Sql__errnilptr._errNilPtr;
                        };
                        (_d : stdgo._internal.database.sql.Sql_rawbytes.RawBytes).__setData__(_s.appendFormat((((_d : stdgo._internal.database.sql.Sql_rawbytes.RawBytes)).__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.database.sql.Sql_rawbytes.RawBytes), ("2006-01-02T15:04:05.999999999Z07:00" : stdgo.GoString)));
                        return (null : stdgo.Error);
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.database.sql.Sql_t_decimaldecompose.T_decimalDecompose))) {
                var _s:stdgo._internal.database.sql.Sql_t_decimaldecompose.T_decimalDecompose = __type__ == null ? (null : stdgo._internal.database.sql.Sql_t_decimaldecompose.T_decimalDecompose) : __type__.__underlying__() == null ? (null : stdgo._internal.database.sql.Sql_t_decimaldecompose.T_decimalDecompose) : __type__ == null ? (null : stdgo._internal.database.sql.Sql_t_decimaldecompose.T_decimalDecompose) : __type__.__underlying__().value;
                {
                    final __type__ = _dest;
                    if (stdgo.Go.typeEquals((__type__ : stdgo._internal.database.sql.Sql_t_decimalcompose.T_decimalCompose))) {
                        var _d:stdgo._internal.database.sql.Sql_t_decimalcompose.T_decimalCompose = __type__ == null ? (null : stdgo._internal.database.sql.Sql_t_decimalcompose.T_decimalCompose) : __type__.__underlying__() == null ? (null : stdgo._internal.database.sql.Sql_t_decimalcompose.T_decimalCompose) : __type__ == null ? (null : stdgo._internal.database.sql.Sql_t_decimalcompose.T_decimalCompose) : __type__.__underlying__().value;
                        return ({
                            var __f__ = _d.compose;
                            var __tmp__ = _s.decompose((null : stdgo.Slice<stdgo.GoUInt8>));
                            __f__((__tmp__._0 : stdgo.GoUInt8), (__tmp__._1 : Bool), (__tmp__._2 : stdgo.Slice<stdgo.GoUInt8>), (__tmp__._3 : stdgo.GoInt32));
                        });
                    };
                };
            } else if (__type__ == null) {
                var _s:stdgo.AnyInterface = __type__ == null ? (null : stdgo.AnyInterface) : __type__.__underlying__();
                {
                    final __type__ = _dest;
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.AnyInterface>))) {
                        var _d:stdgo.Ref<stdgo.AnyInterface> = __type__ == null ? (null : stdgo.Ref<stdgo.AnyInterface>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.AnyInterface>) : __type__ == null ? (null : stdgo.Ref<stdgo.AnyInterface>) : __type__.__underlying__().value;
                        if ((_d == null || (_d : Dynamic).__nil__)) {
                            return stdgo._internal.database.sql.Sql__errnilptr._errNilPtr;
                        };
                        (_d : stdgo.AnyInterface).__setData__((null : stdgo.AnyInterface));
                        return (null : stdgo.Error);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))) {
                        var _d:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>> = __type__ == null ? (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>) : __type__ == null ? (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>) : __type__.__underlying__().value;
                        if ((_d == null || (_d : Dynamic).__nil__)) {
                            return stdgo._internal.database.sql.Sql__errnilptr._errNilPtr;
                        };
                        (_d : stdgo.Slice<stdgo.GoUInt8>).__setData__((null : stdgo.Slice<stdgo.GoUInt8>));
                        return (null : stdgo.Error);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes>))) {
                        var _d:stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes>) : __type__.__underlying__().value;
                        if ((_d == null || (_d : Dynamic).__nil__)) {
                            return stdgo._internal.database.sql.Sql__errnilptr._errNilPtr;
                        };
                        (_d : stdgo._internal.database.sql.Sql_rawbytes.RawBytes).__setData__(null);
                        return (null : stdgo.Error);
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.database.sql.driver.Driver_rows.Rows))) {
                var _s:stdgo._internal.database.sql.driver.Driver_rows.Rows = __type__ == null ? (null : stdgo._internal.database.sql.driver.Driver_rows.Rows) : __type__.__underlying__() == null ? (null : stdgo._internal.database.sql.driver.Driver_rows.Rows) : __type__ == null ? (null : stdgo._internal.database.sql.driver.Driver_rows.Rows) : __type__.__underlying__().value;
                {
                    final __type__ = _dest;
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>))) {
                        var _d:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>) : __type__.__underlying__().value;
                        if ((_d == null || (_d : Dynamic).__nil__)) {
                            return stdgo._internal.database.sql.Sql__errnilptr._errNilPtr;
                        };
                        if ((_rows == null || (_rows : Dynamic).__nil__)) {
                            return stdgo._internal.errors.Errors_new_.new_(("invalid context to convert cursor rows, missing parent *Rows" : stdgo.GoString));
                        };
                        @:check2 (@:checkr _rows ?? throw "null pointer dereference")._closemu.lock();
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
                            @:check2r _d._close((@:checkr _rows ?? throw "null pointer dereference")._lasterr);
                            if (_parentCancel != null) {
                                _parentCancel();
                            };
                        };
                        @:check2 (@:checkr _rows ?? throw "null pointer dereference")._closemu.unlock();
                        return (null : stdgo.Error);
                    };
                };
            };
        };
        var _sv:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        {
            final __type__ = _dest;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoString>))) {
                var _d:stdgo.Pointer<stdgo.GoString> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoString>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoString>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoString>) : __type__.__underlying__().value;
                _sv = stdgo._internal.reflect.Reflect_valueof.valueOf(_src)?.__copy__();
                {
                    final __value__ = _sv.kind();
                    if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((13u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _d.value = stdgo._internal.database.sql.Sql__asstring._asString(_src)?.__copy__();
                        return (null : stdgo.Error);
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))) {
                var _d:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>> = __type__ == null ? (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>) : __type__ == null ? (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>) : __type__.__underlying__().value;
                _sv = stdgo._internal.reflect.Reflect_valueof.valueOf(_src)?.__copy__();
                {
                    var __tmp__ = stdgo._internal.database.sql.Sql__asbytes._asBytes((null : stdgo.Slice<stdgo.GoUInt8>), _sv?.__copy__()), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        (_d : stdgo.Slice<stdgo.GoUInt8>).__setData__(_b);
                        return (null : stdgo.Error);
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes>))) {
                var _d:stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes>) : __type__.__underlying__().value;
                _sv = stdgo._internal.reflect.Reflect_valueof.valueOf(_src)?.__copy__();
                {
                    var __tmp__ = stdgo._internal.database.sql.Sql__asbytes._asBytes((((_d : stdgo._internal.database.sql.Sql_rawbytes.RawBytes) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _sv?.__copy__()), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        (_d : stdgo._internal.database.sql.Sql_rawbytes.RawBytes).__setData__((_b : stdgo._internal.database.sql.Sql_rawbytes.RawBytes));
                        return (null : stdgo.Error);
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<Bool>))) {
                var _d:stdgo.Pointer<Bool> = __type__ == null ? (null : stdgo.Pointer<Bool>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<Bool>) : __type__ == null ? (null : stdgo.Pointer<Bool>) : __type__.__underlying__().value;
                var __tmp__ = stdgo._internal.database.sql.driver.Driver_bool_.bool_.convertValue(_src), _bv:stdgo._internal.database.sql.driver.Driver_value.Value = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    _d.value = (stdgo.Go.typeAssert((_bv : Bool)) : Bool);
                };
                return _err;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.AnyInterface>))) {
                var _d:stdgo.Ref<stdgo.AnyInterface> = __type__ == null ? (null : stdgo.Ref<stdgo.AnyInterface>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.AnyInterface>) : __type__ == null ? (null : stdgo.Ref<stdgo.AnyInterface>) : __type__.__underlying__().value;
                (_d : stdgo.AnyInterface).__setData__(_src);
                return (null : stdgo.Error);
            };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_dest : stdgo._internal.database.sql.Sql_scanner.Scanner)) : stdgo._internal.database.sql.Sql_scanner.Scanner), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.database.sql.Sql_scanner.Scanner), _1 : false };
            }, _scanner = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _scanner.scan(_src);
            };
        };
        var _dpv = (stdgo._internal.reflect.Reflect_valueof.valueOf(_dest)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        if (_dpv.kind() != ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
            return stdgo._internal.errors.Errors_new_.new_(("destination not a pointer" : stdgo.GoString));
        };
        if (_dpv.isNil()) {
            return stdgo._internal.database.sql.Sql__errnilptr._errNilPtr;
        };
        if (!_sv.isValid()) {
            _sv = stdgo._internal.reflect.Reflect_valueof.valueOf(_src)?.__copy__();
        };
        var _dv = (stdgo._internal.reflect.Reflect_indirect.indirect(_dpv?.__copy__())?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        if ((_sv.isValid() && _sv.type().assignableTo(_dv.type()) : Bool)) {
            {
                final __type__ = _src;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt8>))) {
                    var _b:stdgo.Slice<stdgo.GoUInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__().value;
                    _dv.set(stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes_clone.clone(_b)))?.__copy__());
                } else {
                    var _b:stdgo.AnyInterface = __type__?.__underlying__();
                    _dv.set(_sv?.__copy__());
                };
            };
            return (null : stdgo.Error);
        };
        if (((_dv.kind() == _sv.kind()) && _sv.type().convertibleTo(_dv.type()) : Bool)) {
            _dv.set(_sv.convert(_dv.type())?.__copy__());
            return (null : stdgo.Error);
        };
        {
            final __value__ = _dv.kind();
            if (__value__ == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                if (_src == null) {
                    _dv.setZero();
                    return (null : stdgo.Error);
                };
                _dv.set(stdgo._internal.reflect.Reflect_new_.new_(_dv.type().elem())?.__copy__());
                return stdgo._internal.database.sql.Sql__convertassignrows._convertAssignRows(_dv.interface_(), _src, _rows);
            } else if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                if (_src == null) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("converting NULL to %s is unsupported" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_dv.kind())));
                };
                var _s = (stdgo._internal.database.sql.Sql__asstring._asString(_src)?.__copy__() : stdgo.GoString);
                var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_s?.__copy__(), (10 : stdgo.GoInt), _dv.type().bits()), _i64:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _err = stdgo._internal.database.sql.Sql__strconverr._strconvErr(_err);
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("converting driver.Value type %T (%q) to a %s: %v" : stdgo.GoString), _src, stdgo.Go.toInterface(_s), stdgo.Go.toInterface(stdgo.Go.asInterface(_dv.kind())), stdgo.Go.toInterface(_err));
                };
                _dv.setInt(_i64);
                return (null : stdgo.Error);
            } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                if (_src == null) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("converting NULL to %s is unsupported" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_dv.kind())));
                };
                var _s = (stdgo._internal.database.sql.Sql__asstring._asString(_src)?.__copy__() : stdgo.GoString);
                var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint(_s?.__copy__(), (10 : stdgo.GoInt), _dv.type().bits()), _u64:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _err = stdgo._internal.database.sql.Sql__strconverr._strconvErr(_err);
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("converting driver.Value type %T (%q) to a %s: %v" : stdgo.GoString), _src, stdgo.Go.toInterface(_s), stdgo.Go.toInterface(stdgo.Go.asInterface(_dv.kind())), stdgo.Go.toInterface(_err));
                };
                _dv.setUint(_u64);
                return (null : stdgo.Error);
            } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                if (_src == null) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("converting NULL to %s is unsupported" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_dv.kind())));
                };
                var _s = (stdgo._internal.database.sql.Sql__asstring._asString(_src)?.__copy__() : stdgo.GoString);
                var __tmp__ = stdgo._internal.strconv.Strconv_parsefloat.parseFloat(_s?.__copy__(), _dv.type().bits()), _f64:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _err = stdgo._internal.database.sql.Sql__strconverr._strconvErr(_err);
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("converting driver.Value type %T (%q) to a %s: %v" : stdgo.GoString), _src, stdgo.Go.toInterface(_s), stdgo.Go.toInterface(stdgo.Go.asInterface(_dv.kind())), stdgo.Go.toInterface(_err));
                };
                _dv.setFloat(_f64);
                return (null : stdgo.Error);
            } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                if (_src == null) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("converting NULL to %s is unsupported" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_dv.kind())));
                };
                {
                    final __type__ = _src;
                    if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                        var _v:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : __type__ == null ? "" : __type__.__underlying__().value;
                        _dv.setString(_v?.__copy__());
                        return (null : stdgo.Error);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt8>))) {
                        var _v:stdgo.Slice<stdgo.GoUInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__().value;
                        _dv.setString((_v : stdgo.GoString)?.__copy__());
                        return (null : stdgo.Error);
                    };
                };
            };
        };
        return stdgo._internal.fmt.Fmt_errorf.errorf(("unsupported Scan, storing driver.Value type %T into type %T" : stdgo.GoString), _src, _dest);
    }
