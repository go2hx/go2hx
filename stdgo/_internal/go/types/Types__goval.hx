package stdgo._internal.go.types;
function _goVal(_val:stdgo._internal.go.constant.Constant_value.Value):stdgo.AnyInterface {
        //"file:///home/runner/.go/go1.21.3/src/go/types/stmt.go#L197"
        if (_val == null) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/stmt.go#L198"
            return (null : stdgo.AnyInterface);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/stmt.go#L204"
        {
            final __value__ = _val.kind();
            if (__value__ == ((3 : stdgo._internal.go.constant.Constant_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/stmt.go#L206"
                {
                    var __tmp__ = stdgo._internal.go.constant.Constant_int64val.int64Val(_val), _x:stdgo.GoInt64 = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/stmt.go#L207"
                        return stdgo.Go.toInterface(_x);
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/types/stmt.go#L209"
                {
                    var __tmp__ = stdgo._internal.go.constant.Constant_uint64val.uint64Val(_val), _x:stdgo.GoUInt64 = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/stmt.go#L210"
                        return stdgo.Go.toInterface(_x);
                    };
                };
            } else if (__value__ == ((4 : stdgo._internal.go.constant.Constant_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/stmt.go#L213"
                {
                    var __tmp__ = stdgo._internal.go.constant.Constant_float64val.float64Val(_val), _x:stdgo.GoFloat64 = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/stmt.go#L214"
                        return stdgo.Go.toInterface(_x);
                    };
                };
            } else if (__value__ == ((2 : stdgo._internal.go.constant.Constant_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/stmt.go#L217"
                return stdgo.Go.toInterface(stdgo._internal.go.constant.Constant_stringval.stringVal(_val));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/stmt.go#L219"
        return (null : stdgo.AnyInterface);
    }
