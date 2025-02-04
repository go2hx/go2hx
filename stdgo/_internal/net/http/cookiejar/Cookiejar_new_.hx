package stdgo._internal.net.http.cookiejar;
function new_(_o:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_options.Options>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_jar.Jar>; var _1 : stdgo.Error; } {
        var _jar = (stdgo.Go.setRef(({ _entries : (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry>>();
            x.__defaultValue__ = () -> (null : stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry>>) : stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry>>) } : stdgo._internal.net.http.cookiejar.Cookiejar_jar.Jar)) : stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_jar.Jar>);
        if ((_o != null && ((_o : Dynamic).__nil__ == null || !(_o : Dynamic).__nil__))) {
            (@:checkr _jar ?? throw "null pointer dereference")._psList = (@:checkr _o ?? throw "null pointer dereference").publicSuffixList;
        };
        return { _0 : _jar, _1 : (null : stdgo.Error) };
    }
