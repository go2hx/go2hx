package stdgo._internal.expvar;
function newFloat(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.expvar.Expvar_float_.Float_> {
        var _v = (stdgo.Go.setRef(({} : stdgo._internal.expvar.Expvar_float_.Float_)) : stdgo.Ref<stdgo._internal.expvar.Expvar_float_.Float_>);
        //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L310"
        stdgo._internal.expvar.Expvar_publish.publish(_name?.__copy__(), stdgo.Go.asInterface(_v));
        //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L311"
        return _v;
    }
