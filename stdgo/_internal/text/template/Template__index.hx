package stdgo._internal.text.template;
function _index(_item:stdgo._internal.reflect.Reflect_value.Value, _indexes:haxe.Rest<stdgo._internal.reflect.Reflect_value.Value>):{ var _0 : stdgo._internal.reflect.Reflect_value.Value; var _1 : stdgo.Error; } {
        var _indexes = new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>(_indexes.length, 0, ..._indexes);
        _item = stdgo._internal.text.template.Template__indirectinterface._indirectInterface(_item?.__copy__())?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L210"
        if (!_item.isValid()) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L211"
            return { _0 : (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("index of untyped nil" : stdgo.GoString)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L213"
        for (__8 => _index in _indexes) {
            _index = stdgo._internal.text.template.Template__indirectinterface._indirectInterface(_index?.__copy__())?.__copy__();
            var _isNil:Bool = false;
            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L216"
            {
                {
                    var __tmp__ = stdgo._internal.text.template.Template__indirect._indirect(_item?.__copy__());
                    _item = @:tmpset0 __tmp__._0?.__copy__();
                    _isNil = @:tmpset0 __tmp__._1;
                };
                if (_isNil) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L217"
                    return { _0 : (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("index of nil pointer" : stdgo.GoString)) };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L219"
            {
                final __value__ = _item.kind();
                if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    var __tmp__ = stdgo._internal.text.template.Template__indexarg._indexArg(_index?.__copy__(), _item.len()), _x:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L222"
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L223"
                        return { _0 : (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value), _1 : _err };
                    };
                    _item = _item.index(_x)?.__copy__();
                } else if (__value__ == ((21u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    var __tmp__ = stdgo._internal.text.template.Template__preparearg._prepareArg(_index?.__copy__(), _item.type().key()), _index:stdgo._internal.reflect.Reflect_value.Value = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L228"
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L229"
                        return { _0 : (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value), _1 : _err };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L231"
                    {
                        var _x = (_item.mapIndex(_index?.__copy__())?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                        if (_x.isValid()) {
                            _item = _x?.__copy__();
                        } else {
                            _item = stdgo._internal.reflect.Reflect_zero.zero(_item.type().elem())?.__copy__();
                        };
                    };
                } else if (__value__ == ((0u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L238"
                    throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L240"
                    return { _0 : (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("can\'t index item of type %s" : stdgo.GoString), stdgo.Go.toInterface(_item.type())) };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L243"
        return { _0 : _item?.__copy__(), _1 : (null : stdgo.Error) };
    }
