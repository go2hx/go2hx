package stdgo._internal.internal.lazyregexp;
function new_(_str:stdgo.GoString):stdgo.Ref<stdgo._internal.internal.lazyregexp.Lazyregexp_regexp.Regexp> {
        var _lr = (stdgo.Go.setRef(({ _str : _str?.__copy__() } : stdgo._internal.internal.lazyregexp.Lazyregexp_regexp.Regexp)) : stdgo.Ref<stdgo._internal.internal.lazyregexp.Lazyregexp_regexp.Regexp>);
        if (stdgo._internal.internal.lazyregexp.Lazyregexp__intest._inTest) {
            @:check2r _lr._re();
        };
        return _lr;
    }
