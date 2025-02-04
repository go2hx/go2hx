package stdgo._internal.unicode;
var foldScript : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>> = ({
        final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>>();
        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>);
        x.set(("Common" : stdgo.GoString), stdgo._internal.unicode.Unicode__foldcommon._foldCommon);
x.set(("Greek" : stdgo.GoString), stdgo._internal.unicode.Unicode__foldgreek._foldGreek);
x.set(("Inherited" : stdgo.GoString), stdgo._internal.unicode.Unicode__foldinherited._foldInherited);
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>>);
