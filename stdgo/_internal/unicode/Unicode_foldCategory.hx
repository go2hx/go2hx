package stdgo._internal.unicode;
var foldCategory : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode_RangeTable.RangeTable>> = ({
        final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.unicode.Unicode_RangeTable.RangeTable>>();
        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.unicode.Unicode_RangeTable.RangeTable>);
        x.set(("L" : stdgo.GoString), stdgo._internal.unicode.Unicode__foldL._foldL);
x.set(("Ll" : stdgo.GoString), stdgo._internal.unicode.Unicode__foldLl._foldLl);
x.set(("Lt" : stdgo.GoString), stdgo._internal.unicode.Unicode__foldLt._foldLt);
x.set(("Lu" : stdgo.GoString), stdgo._internal.unicode.Unicode__foldLu._foldLu);
x.set(("M" : stdgo.GoString), stdgo._internal.unicode.Unicode__foldM._foldM);
x.set(("Mn" : stdgo.GoString), stdgo._internal.unicode.Unicode__foldMn._foldMn);
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode_RangeTable.RangeTable>>);
