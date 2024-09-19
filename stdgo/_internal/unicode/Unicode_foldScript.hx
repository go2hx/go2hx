package stdgo._internal.unicode;
var foldScript : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode_RangeTable.RangeTable>> = ({
        final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.unicode.Unicode_RangeTable.RangeTable>>();
        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.unicode.Unicode_RangeTable.RangeTable>);
        x.set(("Common" : stdgo.GoString), stdgo._internal.unicode.Unicode__foldCommon._foldCommon);
x.set(("Greek" : stdgo.GoString), stdgo._internal.unicode.Unicode__foldGreek._foldGreek);
x.set(("Inherited" : stdgo.GoString), stdgo._internal.unicode.Unicode__foldInherited._foldInherited);
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode_RangeTable.RangeTable>>);
