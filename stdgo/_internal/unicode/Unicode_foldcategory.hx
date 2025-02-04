package stdgo._internal.unicode;
var foldCategory : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>> = ({
        final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>>();
        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>);
        x.set(("L" : stdgo.GoString), stdgo._internal.unicode.Unicode__foldl._foldL);
x.set(("Ll" : stdgo.GoString), stdgo._internal.unicode.Unicode__foldll._foldLl);
x.set(("Lt" : stdgo.GoString), stdgo._internal.unicode.Unicode__foldlt._foldLt);
x.set(("Lu" : stdgo.GoString), stdgo._internal.unicode.Unicode__foldlu._foldLu);
x.set(("M" : stdgo.GoString), stdgo._internal.unicode.Unicode__foldm._foldM);
x.set(("Mn" : stdgo.GoString), stdgo._internal.unicode.Unicode__foldmn._foldMn);
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>>);
