package stdgo._internal.log.slog;
function anyValue(_v:stdgo.AnyInterface):stdgo._internal.log.slog.Slog_value.Value {
        //"file:///home/runner/.go/go1.21.3/src/log/slog/value.go#L209"
        {
            final __type__ = _v;
            if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                var _v:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? "" : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/log/slog/value.go#L211"
                return stdgo._internal.log.slog.Slog_stringvalue.stringValue(_v?.__copy__())?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt))) {
                var _v:stdgo.GoInt = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/log/slog/value.go#L213"
                return stdgo._internal.log.slog.Slog_int64value.int64Value((_v : stdgo.GoInt64))?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt))) {
                var _v:stdgo.GoUInt = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/log/slog/value.go#L215"
                return stdgo._internal.log.slog.Slog_uint64value.uint64Value((_v : stdgo.GoUInt64))?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt64))) {
                var _v:stdgo.GoInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/log/slog/value.go#L217"
                return stdgo._internal.log.slog.Slog_int64value.int64Value(_v)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt64))) {
                var _v:stdgo.GoUInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/log/slog/value.go#L219"
                return stdgo._internal.log.slog.Slog_uint64value.uint64Value(_v)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : Bool))) {
                var _v:Bool = __type__ == null ? false : __type__.__underlying__() == null ? false : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? false : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/log/slog/value.go#L221"
                return stdgo._internal.log.slog.Slog_boolvalue.boolValue(_v)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.time.Time_duration.Duration))) {
                var _v:stdgo._internal.time.Time_duration.Duration = __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/log/slog/value.go#L223"
                return stdgo._internal.log.slog.Slog_durationvalue.durationValue(_v)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.time.Time_time.Time))) {
                var _v:stdgo._internal.time.Time_time.Time = __type__ == null ? ({} : stdgo._internal.time.Time_time.Time) : __type__.__underlying__() == null ? ({} : stdgo._internal.time.Time_time.Time) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.time.Time_time.Time) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/log/slog/value.go#L225"
                return stdgo._internal.log.slog.Slog_timevalue.timeValue(_v?.__copy__())?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt8))) {
                var _v:stdgo.GoUInt8 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/log/slog/value.go#L227"
                return stdgo._internal.log.slog.Slog_uint64value.uint64Value((_v : stdgo.GoUInt64))?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt16))) {
                var _v:stdgo.GoUInt16 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/log/slog/value.go#L229"
                return stdgo._internal.log.slog.Slog_uint64value.uint64Value((_v : stdgo.GoUInt64))?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt32))) {
                var _v:stdgo.GoUInt32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/log/slog/value.go#L231"
                return stdgo._internal.log.slog.Slog_uint64value.uint64Value((_v : stdgo.GoUInt64))?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUIntptr))) {
                var _v:stdgo.GoUIntptr = __type__ == null ? new stdgo.GoUIntptr(0) : __type__.__underlying__() == null ? new stdgo.GoUIntptr(0) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? new stdgo.GoUIntptr(0) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/log/slog/value.go#L233"
                return stdgo._internal.log.slog.Slog_uint64value.uint64Value((_v : stdgo.GoUInt64))?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt8))) {
                var _v:stdgo.GoInt8 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/log/slog/value.go#L235"
                return stdgo._internal.log.slog.Slog_int64value.int64Value((_v : stdgo.GoInt64))?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt16))) {
                var _v:stdgo.GoInt16 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/log/slog/value.go#L237"
                return stdgo._internal.log.slog.Slog_int64value.int64Value((_v : stdgo.GoInt64))?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt32))) {
                var _v:stdgo.GoInt32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/log/slog/value.go#L239"
                return stdgo._internal.log.slog.Slog_int64value.int64Value((_v : stdgo.GoInt64))?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoFloat64))) {
                var _v:stdgo.GoFloat64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/log/slog/value.go#L241"
                return stdgo._internal.log.slog.Slog_float64value.float64Value(_v)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoFloat32))) {
                var _v:stdgo.GoFloat32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/log/slog/value.go#L243"
                return stdgo._internal.log.slog.Slog_float64value.float64Value((_v : stdgo.GoFloat64))?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr>))) {
                var _v:stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr> = __type__ == null ? (null : stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/log/slog/value.go#L245"
                return stdgo._internal.log.slog.Slog_groupvalue.groupValue(...(_v : Array<stdgo._internal.log.slog.Slog_attr.Attr>))?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.log.slog.Slog_kind.Kind))) {
                var _v:stdgo._internal.log.slog.Slog_kind.Kind = __type__ == null ? ((0 : stdgo.GoInt) : stdgo._internal.log.slog.Slog_kind.Kind) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt) : stdgo._internal.log.slog.Slog_kind.Kind) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ((0 : stdgo.GoInt) : stdgo._internal.log.slog.Slog_kind.Kind) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/log/slog/value.go#L247"
                return ({ _any : stdgo.Go.toInterface((_v : stdgo._internal.log.slog.Slog_t_kind.T_kind)) } : stdgo._internal.log.slog.Slog_value.Value);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.log.slog.Slog_value.Value))) {
                var _v:stdgo._internal.log.slog.Slog_value.Value = __type__ == null ? ({} : stdgo._internal.log.slog.Slog_value.Value) : __type__.__underlying__() == null ? ({} : stdgo._internal.log.slog.Slog_value.Value) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.log.slog.Slog_value.Value) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/log/slog/value.go#L249"
                return _v?.__copy__();
            } else {
                var _v:stdgo.AnyInterface = __type__?.__underlying__();
                //"file:///home/runner/.go/go1.21.3/src/log/slog/value.go#L251"
                return ({ _any : _v } : stdgo._internal.log.slog.Slog_value.Value);
            };
        };
    }
