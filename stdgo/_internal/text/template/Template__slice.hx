package stdgo._internal.text.template;
function _slice(_item:stdgo._internal.reflect.Reflect_value.Value, _indexes:haxe.Rest<stdgo._internal.reflect.Reflect_value.Value>):{ var _0 : stdgo._internal.reflect.Reflect_value.Value; var _1 : stdgo.Error; } {
        var _indexes = new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>(_indexes.length, 0, ..._indexes);
        _item = stdgo._internal.text.template.Template__indirectinterface._indirectInterface(_item?.__copy__())?.__copy__();
        if (!_item.isValid()) {
            return { _0 : (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("slice of untyped nil" : stdgo.GoString)) };
        };
        if (((_indexes.length) > (3 : stdgo.GoInt) : Bool)) {
            return { _0 : (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("too many slice indexes: %d" : stdgo.GoString), stdgo.Go.toInterface((_indexes.length))) };
        };
        var _cap:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            final __value__ = _item.kind();
            if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                if ((_indexes.length) == ((3 : stdgo.GoInt))) {
                    return { _0 : (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("cannot 3-index slice a string" : stdgo.GoString)) };
                };
                _cap = _item.len();
            } else if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                _cap = _item.cap();
            } else {
                return { _0 : (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("can\'t slice item of type %s" : stdgo.GoString), stdgo.Go.toInterface(_item.type())) };
            };
        };
        var _idx = (new stdgo.GoArray<stdgo.GoInt>(3, 3, ...[(0 : stdgo.GoInt), _item.len()]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)?.__copy__();
        for (_i => _index in _indexes) {
            var __tmp__ = stdgo._internal.text.template.Template__indexarg._indexArg(_index?.__copy__(), _cap), _x:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value), _1 : _err };
            };
            _idx[(_i : stdgo.GoInt)] = _x;
        };
        if ((_idx[(0 : stdgo.GoInt)] > _idx[(1 : stdgo.GoInt)] : Bool)) {
            return { _0 : (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid slice index: %d > %d" : stdgo.GoString), stdgo.Go.toInterface(_idx[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_idx[(1 : stdgo.GoInt)])) };
        };
        if (((_indexes.length) < (3 : stdgo.GoInt) : Bool)) {
            return { _0 : _item.slice(_idx[(0 : stdgo.GoInt)], _idx[(1 : stdgo.GoInt)])?.__copy__(), _1 : (null : stdgo.Error) };
        };
        if ((_idx[(1 : stdgo.GoInt)] > _idx[(2 : stdgo.GoInt)] : Bool)) {
            return { _0 : (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid slice index: %d > %d" : stdgo.GoString), stdgo.Go.toInterface(_idx[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_idx[(2 : stdgo.GoInt)])) };
        };
        return { _0 : _item.slice3(_idx[(0 : stdgo.GoInt)], _idx[(1 : stdgo.GoInt)], _idx[(2 : stdgo.GoInt)])?.__copy__(), _1 : (null : stdgo.Error) };
    }
