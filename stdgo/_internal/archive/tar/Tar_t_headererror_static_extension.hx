package stdgo._internal.archive.tar;
@:keep @:allow(stdgo._internal.archive.tar.Tar.T_headerError_asInterface) class T_headerError_static_extension {
    @:keep
    @:tdfield
    static public function error( _he:stdgo._internal.archive.tar.Tar_t_headererror.T_headerError):stdgo.GoString {
        @:recv var _he:stdgo._internal.archive.tar.Tar_t_headererror.T_headerError = _he;
        {};
        var _ss:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        for (__1 => _s in _he) {
            if (_s != ((stdgo.Go.str() : stdgo.GoString))) {
                _ss = (_ss.__append__(_s?.__copy__()));
            };
        };
        if ((_ss.length) == ((0 : stdgo.GoInt))) {
            return ("archive/tar: cannot encode header" : stdgo.GoString);
        };
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s: %v" : stdgo.GoString), stdgo.Go.toInterface(("archive/tar: cannot encode header" : stdgo.GoString)), stdgo.Go.toInterface(stdgo._internal.strings.Strings_join.join(_ss, ("; and " : stdgo.GoString))))?.__copy__();
    }
}
