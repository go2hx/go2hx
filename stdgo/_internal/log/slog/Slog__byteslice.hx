package stdgo._internal.log.slog;
function _byteSlice(_a:stdgo.AnyInterface):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : Bool; } {
        //"file:///home/runner/.go/go1.21.3/src/log/slog/text_handler.go#L130"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_a : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : false };
            }, _bs = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/log/slog/text_handler.go#L131"
                return { _0 : _bs, _1 : true };
            };
        };
        var _t = (stdgo._internal.reflect.Reflect_typeof.typeOf(_a) : stdgo._internal.reflect.Reflect_type_.Type_);
        //"file:///home/runner/.go/go1.21.3/src/log/slog/text_handler.go#L135"
        if (((!((_t.string() : String) == (null.string() : String)) && _t.kind() == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind)) : Bool) && (_t.elem().kind() == (8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/log/slog/text_handler.go#L136"
            return { _0 : stdgo._internal.reflect.Reflect_valueof.valueOf(_a).bytes(), _1 : true };
        };
        //"file:///home/runner/.go/go1.21.3/src/log/slog/text_handler.go#L138"
        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : false };
    }
