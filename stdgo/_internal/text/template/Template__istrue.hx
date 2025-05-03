package stdgo._internal.text.template;
function _isTrue(_val:stdgo._internal.reflect.Reflect_value.Value):{ var _0 : Bool; var _1 : Bool; } {
        var _truth = false, _ok = false;
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L325"
        if (!_val.isValid()) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L327"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : Bool; } = { _0 : false, _1 : true };
                _truth = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L329"
        {
            final __value__ = _val.kind();
            if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((21u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                _truth = (_val.len() > (0 : stdgo.GoInt) : Bool);
            } else if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                _truth = _val.bool_();
            } else if (__value__ == ((15u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((16u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                _truth = _val.complex() != (((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64)));
            } else if (__value__ == ((18u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((19u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((20u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                _truth = !_val.isNil();
            } else if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                _truth = _val.int_() != ((0i64 : stdgo.GoInt64));
            } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                _truth = _val.float_() != ((0 : stdgo.GoFloat64));
            } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                _truth = _val.uint() != ((0i64 : stdgo.GoUInt64));
            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                _truth = true;
            } else {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L347"
                return { _0 : _truth, _1 : _ok };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L349"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : Bool; } = { _0 : _truth, _1 : true };
            _truth = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
