package stdgo._internal.expvar;
function newInt(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.expvar.Expvar_int_.Int_> {
        var _v = (stdgo.Go.setRef(({} : stdgo._internal.expvar.Expvar_int_.Int_)) : stdgo.Ref<stdgo._internal.expvar.Expvar_int_.Int_>);
        stdgo._internal.expvar.Expvar_publish.publish(_name?.__copy__(), stdgo.Go.asInterface(_v));
        return _v;
    }
