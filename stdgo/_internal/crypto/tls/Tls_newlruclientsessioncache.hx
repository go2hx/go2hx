package stdgo._internal.crypto.tls;
function newLRUClientSessionCache(_capacity:stdgo.GoInt):stdgo._internal.crypto.tls.Tls_clientsessioncache.ClientSessionCache {
        {};
        if ((_capacity < (1 : stdgo.GoInt) : Bool)) {
            _capacity = (64 : stdgo.GoInt);
        };
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _m : (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.container.list.List_element.Element>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.container.list.List_element.Element>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.container.list.List_element.Element>>), _q : stdgo._internal.container.list.List_new_.new_(), _capacity : _capacity } : stdgo._internal.crypto.tls.Tls_t_lrusessioncache.T_lruSessionCache)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_lrusessioncache.T_lruSessionCache>));
    }
