package stdgo._internal.regexp.syntax;
function _unicodeTable(_name:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>; var _1 : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>; } {
        if (_name == (("Any" : stdgo.GoString))) {
            return { _0 : stdgo._internal.regexp.syntax.Syntax__anytable._anyTable, _1 : stdgo._internal.regexp.syntax.Syntax__anytable._anyTable };
        };
        {
            var _t = (stdgo._internal.unicode.Unicode_categories.categories[_name] ?? (null : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>));
            if ((_t != null && ((_t : Dynamic).__nil__ == null || !(_t : Dynamic).__nil__))) {
                return { _0 : _t, _1 : (stdgo._internal.unicode.Unicode_foldcategory.foldCategory[_name] ?? (null : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>)) };
            };
        };
        {
            var _t = (stdgo._internal.unicode.Unicode_scripts.scripts[_name] ?? (null : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>));
            if ((_t != null && ((_t : Dynamic).__nil__ == null || !(_t : Dynamic).__nil__))) {
                return { _0 : _t, _1 : (stdgo._internal.unicode.Unicode_foldscript.foldScript[_name] ?? (null : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>)) };
            };
        };
        return { _0 : null, _1 : null };
    }
