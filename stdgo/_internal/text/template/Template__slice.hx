package stdgo._internal.text.template;
function _slice(_item:stdgo._internal.reflect.Reflect_value.Value, _indexes:haxe.Rest<stdgo._internal.reflect.Reflect_value.Value>):{ var _0 : stdgo._internal.reflect.Reflect_value.Value; var _1 : stdgo.Error; } {
        var _indexes = new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>(_indexes.length, 0, ..._indexes);
        _item = stdgo._internal.text.template.Template__indirectinterface._indirectInterface(_item?.__copy__())?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L254"
        if (!_item.isValid()) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L255"
            return { _0 : (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("slice of untyped nil" : stdgo.GoString)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L257"
        if (((_indexes.length) > (3 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L258"
            return { _0 : (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("too many slice indexes: %d" : stdgo.GoString), stdgo.Go.toInterface((_indexes.length))) };
        };
        var _cap:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L261"
        {
            final __value__ = _item.kind();
            if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L263"
                if ((_indexes.length) == ((3 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L264"
                    return { _0 : (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("cannot 3-index slice a string" : stdgo.GoString)) };
                };
                _cap = _item.len();
            } else if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                _cap = _item.cap();
            } else {
                //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L270"
                return { _0 : (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("can\'t slice item of type %s" : stdgo.GoString), stdgo.Go.toInterface(_item.type())) };
            };
        };
        var _idx = (new stdgo.GoArray<stdgo.GoInt>(3, 3, ...[(0 : stdgo.GoInt), _item.len()]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L274"
        for (_i => _index in _indexes) {
            var __tmp__ = stdgo._internal.text.template.Template__indexarg._indexArg(_index?.__copy__(), _cap), _x:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L276"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L277"
                return { _0 : (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value), _1 : _err };
            };
            _idx[(_i : stdgo.GoInt)] = _x;
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L282"
        if ((_idx[(0 : stdgo.GoInt)] > _idx[(1 : stdgo.GoInt)] : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L283"
            return { _0 : (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid slice index: %d > %d" : stdgo.GoString), stdgo.Go.toInterface(_idx[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_idx[(1 : stdgo.GoInt)])) };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L285"
        if (((_indexes.length) < (3 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L286"
            return { _0 : _item.slice(_idx[(0 : stdgo.GoInt)], _idx[(1 : stdgo.GoInt)])?.__copy__(), _1 : (null : stdgo.Error) };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L289"
        if ((_idx[(1 : stdgo.GoInt)] > _idx[(2 : stdgo.GoInt)] : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L290"
            return { _0 : (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid slice index: %d > %d" : stdgo.GoString), stdgo.Go.toInterface(_idx[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_idx[(2 : stdgo.GoInt)])) };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L292"
        return { _0 : _item.slice3(_idx[(0 : stdgo.GoInt)], _idx[(1 : stdgo.GoInt)], _idx[(2 : stdgo.GoInt)])?.__copy__(), _1 : (null : stdgo.Error) };
    }
