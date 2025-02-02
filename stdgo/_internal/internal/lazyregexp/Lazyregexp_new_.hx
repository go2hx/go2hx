package stdgo._internal.internal.lazyregexp;
function new_(_str:stdgo.GoString):stdgo.Ref<stdgo._internal.internal.lazyregexp.Lazyregexp_Regexp.Regexp> {
        var _lr = (stdgo.Go.setRef(({ _str : _str?.__copy__() } : stdgo._internal.internal.lazyregexp.Lazyregexp_Regexp.Regexp)) : stdgo.Ref<stdgo._internal.internal.lazyregexp.Lazyregexp_Regexp.Regexp>);
        if (stdgo._internal.internal.lazyregexp.Lazyregexp__inTest._inTest) {
            @:check2r _lr._re();
        };
        return _lr;
    }
