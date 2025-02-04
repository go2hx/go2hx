package stdgo._internal.expvar;
function newString(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.expvar.Expvar_string_.String_> {
        var _v = (stdgo.Go.setRef(({} : stdgo._internal.expvar.Expvar_string_.String_)) : stdgo.Ref<stdgo._internal.expvar.Expvar_string_.String_>);
        stdgo._internal.expvar.Expvar_publish.publish(_name?.__copy__(), stdgo.Go.asInterface(_v));
        return _v;
    }
