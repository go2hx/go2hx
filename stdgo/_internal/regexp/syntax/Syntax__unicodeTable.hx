package stdgo._internal.regexp.syntax;
function _unicodeTable(_name:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.unicode.Unicode_RangeTable.RangeTable>; var _1 : stdgo.Ref<stdgo._internal.unicode.Unicode_RangeTable.RangeTable>; } {
        if (_name == (("Any" : stdgo.GoString))) {
            return { _0 : stdgo._internal.regexp.syntax.Syntax__anyTable._anyTable, _1 : stdgo._internal.regexp.syntax.Syntax__anyTable._anyTable };
        };
        {
            var _t = (stdgo._internal.unicode.Unicode_categories.categories[_name] ?? (null : stdgo.Ref<stdgo._internal.unicode.Unicode_RangeTable.RangeTable>));
            if ((_t != null && ((_t : Dynamic).__nil__ == null || !(_t : Dynamic).__nil__))) {
                return { _0 : _t, _1 : (stdgo._internal.unicode.Unicode_foldCategory.foldCategory[_name] ?? (null : stdgo.Ref<stdgo._internal.unicode.Unicode_RangeTable.RangeTable>)) };
            };
        };
        {
            var _t = (stdgo._internal.unicode.Unicode_scripts.scripts[_name] ?? (null : stdgo.Ref<stdgo._internal.unicode.Unicode_RangeTable.RangeTable>));
            if ((_t != null && ((_t : Dynamic).__nil__ == null || !(_t : Dynamic).__nil__))) {
                return { _0 : _t, _1 : (stdgo._internal.unicode.Unicode_foldScript.foldScript[_name] ?? (null : stdgo.Ref<stdgo._internal.unicode.Unicode_RangeTable.RangeTable>)) };
            };
        };
        return { _0 : null, _1 : null };
    }
