package stdgo._internal.expvar;
function newMap(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.expvar.Expvar_map_.Map_> {
        var _v = (stdgo.Go.setRef(({} : stdgo._internal.expvar.Expvar_map_.Map_)) : stdgo.Ref<stdgo._internal.expvar.Expvar_map_.Map_>).init();
        //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L316"
        stdgo._internal.expvar.Expvar_publish.publish(_name?.__copy__(), stdgo.Go.asInterface(_v));
        //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L317"
        return _v;
    }
