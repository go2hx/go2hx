package stdgo._internal.net.http.cookiejar;
function new_(_o:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_Options.Options>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_Jar.Jar>; var _1 : stdgo.Error; } {
        var _jar = (stdgo.Go.setRef(({ _entries : ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry>>();
            x.__defaultValue__ = () -> (null : stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry>>) } : stdgo._internal.net.http.cookiejar.Cookiejar_Jar.Jar)) : stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_Jar.Jar>);
        if (_o != null && ((_o : Dynamic).__nil__ == null || !(_o : Dynamic).__nil__)) {
            _jar._psList = _o.publicSuffixList;
        };
        return { _0 : _jar, _1 : (null : stdgo.Error) };
    }
