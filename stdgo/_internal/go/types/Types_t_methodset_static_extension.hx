package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T_methodSet_asInterface) class T_methodSet_static_extension {
    @:keep
    @:tdfield
    static public function _addOne( _s:stdgo._internal.go.types.Types_t_methodset.T_methodSet, _f:stdgo.Ref<stdgo._internal.go.types.Types_func.Func>, _index:stdgo.Slice<stdgo.GoInt>, _indirect:Bool, _multiples:Bool):stdgo._internal.go.types.Types_t_methodset.T_methodSet {
        @:recv var _s:stdgo._internal.go.types.Types_t_methodset.T_methodSet = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L229"
        if (_s == null) {
            _s = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>>) : stdgo._internal.go.types.Types_t_methodset.T_methodSet);
        };
        var _key = (_f.id()?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L234"
        if (!_multiples) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L239"
            {
                var __tmp__ = (_s != null && _s.__exists__(_key?.__copy__()) ? { _0 : _s[_key?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>), _1 : false }), __0:stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection> = __tmp__._0, _found:Bool = __tmp__._1;
                if ((!_found && ((_indirect || !_f._hasPtrRecv() : Bool)) : Bool)) {
                    _s[_key] = (stdgo.Go.setRef((new stdgo._internal.go.types.Types_selection.Selection((1 : stdgo._internal.go.types.Types_selectionkind.SelectionKind), (null : stdgo._internal.go.types.Types_type_.Type_), stdgo.Go.asInterface(_f), _index, _indirect) : stdgo._internal.go.types.Types_selection.Selection)) : stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L241"
                    return _s;
                };
            };
        };
        _s[_key] = null;
        //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L245"
        return _s;
    }
    @:keep
    @:tdfield
    static public function _add( _s:stdgo._internal.go.types.Types_t_methodset.T_methodSet, _list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>, _index:stdgo.Slice<stdgo.GoInt>, _indirect:Bool, _multiples:Bool):stdgo._internal.go.types.Types_t_methodset.T_methodSet {
        @:recv var _s:stdgo._internal.go.types.Types_t_methodset.T_methodSet = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L219"
        if ((_list.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L220"
            return _s;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L222"
        for (_i => _f in _list) {
            _s = _s._addOne(_f, stdgo._internal.go.types.Types__concat._concat(_index, _i), _indirect, _multiples);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/methodset.go#L225"
        return _s;
    }
}
