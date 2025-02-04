package stdgo._internal.expvar;
function newMap(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.expvar.Expvar_map_.Map_> {
        var _v = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.expvar.Expvar_map_.Map_)) : stdgo.Ref<stdgo._internal.expvar.Expvar_map_.Map_>).init();
        stdgo._internal.expvar.Expvar_publish.publish(_name?.__copy__(), stdgo.Go.asInterface(_v));
        return _v;
    }
