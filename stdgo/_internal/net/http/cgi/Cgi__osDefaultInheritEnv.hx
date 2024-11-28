package stdgo._internal.net.http.cgi;
var _osDefaultInheritEnv : stdgo.Slice<stdgo.GoString> = ({
        var a = function():stdgo.Slice<stdgo.GoString> {
            {
                final __value__ = ("js" : stdgo.GoString);
                if (__value__ == (("darwin" : stdgo.GoString)) || __value__ == (("ios" : stdgo.GoString))) {
                    return (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("DYLD_LIBRARY_PATH" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
                } else if (__value__ == (("android" : stdgo.GoString)) || __value__ == (("linux" : stdgo.GoString)) || __value__ == (("freebsd" : stdgo.GoString)) || __value__ == (("netbsd" : stdgo.GoString)) || __value__ == (("openbsd" : stdgo.GoString))) {
                    return (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("LD_LIBRARY_PATH" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
                } else if (__value__ == (("hpux" : stdgo.GoString))) {
                    return (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("LD_LIBRARY_PATH" : stdgo.GoString), ("SHLIB_PATH" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
                } else if (__value__ == (("irix" : stdgo.GoString))) {
                    return (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("LD_LIBRARY_PATH" : stdgo.GoString), ("LD_LIBRARYN32_PATH" : stdgo.GoString), ("LD_LIBRARY64_PATH" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
                } else if (__value__ == (("illumos" : stdgo.GoString)) || __value__ == (("solaris" : stdgo.GoString))) {
                    return (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("LD_LIBRARY_PATH" : stdgo.GoString), ("LD_LIBRARY_PATH_32" : stdgo.GoString), ("LD_LIBRARY_PATH_64" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
                } else if (__value__ == (("windows" : stdgo.GoString))) {
                    return (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("SystemRoot" : stdgo.GoString), ("COMSPEC" : stdgo.GoString), ("PATHEXT" : stdgo.GoString), ("WINDIR" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
                };
            };
            return (null : stdgo.Slice<stdgo.GoString>);
        };
        a();
    });
