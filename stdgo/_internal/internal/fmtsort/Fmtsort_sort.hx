package stdgo._internal.internal.fmtsort;
function sort(_mapValue:stdgo._internal.reflect.Reflect_value.Value):stdgo.Ref<stdgo._internal.internal.fmtsort.Fmtsort_sortedmap.SortedMap> {
        if (_mapValue.type().kind() != ((21u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
            return null;
        };
        var _n = (_mapValue.len() : stdgo.GoInt);
        var _key = (new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>((0 : stdgo.GoInt).toBasic(), _n, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _n ? (0 : stdgo.GoInt).toBasic() : _n : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)]) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>);
        var _value = (new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>((0 : stdgo.GoInt).toBasic(), _n, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _n ? (0 : stdgo.GoInt).toBasic() : _n : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)]) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>);
        var _iter = _mapValue.mapRange();
        while (@:check2r _iter.next()) {
            _key = (_key.__append__(@:check2r _iter.key()?.__copy__()));
            _value = (_value.__append__(@:check2r _iter.value()?.__copy__()));
        };
        var _sorted = (stdgo.Go.setRef(({ key : _key, value : _value } : stdgo._internal.internal.fmtsort.Fmtsort_sortedmap.SortedMap)) : stdgo.Ref<stdgo._internal.internal.fmtsort.Fmtsort_sortedmap.SortedMap>);
        stdgo._internal.sort.Sort_stable.stable(stdgo.Go.asInterface(_sorted));
        return _sorted;
    }
