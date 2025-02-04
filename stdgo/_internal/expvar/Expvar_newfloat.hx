package stdgo._internal.expvar;
function newFloat(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.expvar.Expvar_float_.Float_> {
        var _v = (stdgo.Go.setRef(({} : stdgo._internal.expvar.Expvar_float_.Float_)) : stdgo.Ref<stdgo._internal.expvar.Expvar_float_.Float_>);
        stdgo._internal.expvar.Expvar_publish.publish(_name?.__copy__(), stdgo.Go.asInterface(_v));
        return _v;
    }
