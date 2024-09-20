package _internal.vendor.golang_dot_org.x.text.secure.bidirule;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = _internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule_errInvalid.errInvalid, __tmp__1 = _internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule__transitions._transitions;
            for (_i => _ in _internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule__asciiTable._asciiTable) {
                var __tmp__ = _internal.golang_dot_org.x.text.unicode.bidi.Bidi_lookupRune.lookupRune((_i : stdgo.GoInt32)), _p:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties = __tmp__._0, __0:stdgo.GoInt = __tmp__._1;
                _internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule__asciiTable._asciiTable[(_i : stdgo.GoInt)] = _p?.__copy__();
            };
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
