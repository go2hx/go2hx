package stdgo._internal.archive.tar;
@:keep @:allow(stdgo._internal.archive.tar.Tar.Format_asInterface) class Format_static_extension {
    @:keep
    static public function string( _f:stdgo._internal.archive.tar.Tar_Format.Format):stdgo.GoString {
        @:recv var _f:stdgo._internal.archive.tar.Tar_Format.Format = _f;
        var _ss:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        {
            var _f2 = ((1 : stdgo._internal.archive.tar.Tar_Format.Format) : stdgo._internal.archive.tar.Tar_Format.Format);
            stdgo.Go.cfor((_f2 < (32 : stdgo._internal.archive.tar.Tar_Format.Format) : Bool), _f2 = (_f2 << ((1i64 : stdgo.GoUInt64)) : stdgo._internal.archive.tar.Tar_Format.Format), {
                if (_f._has(_f2)) {
                    _ss = (_ss.__append__((stdgo._internal.archive.tar.Tar__formatNames._formatNames[_f2] ?? ("" : stdgo.GoString))?.__copy__()));
                };
            });
        };
        {
            final __value__ = (_ss.length);
            if (__value__ == ((0 : stdgo.GoInt))) {
                return ("<unknown>" : stdgo.GoString);
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                return _ss[(0 : stdgo.GoInt)]?.__copy__();
            } else {
                return ((("(" : stdgo.GoString) + stdgo._internal.strings.Strings_join.join(_ss, (" | " : stdgo.GoString))?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
            };
        };
    }
    @:keep
    @:pointer
    static public function _mustNotBe(____:stdgo._internal.archive.tar.Tar_Format.Format,  _f:stdgo.Pointer<stdgo._internal.archive.tar.Tar_Format.Format>, _f2:stdgo._internal.archive.tar.Tar_Format.Format):Void {
        _f.value = (_f.value & (((_f2) ^ (-1i32 : stdgo.GoInt) : stdgo._internal.archive.tar.Tar_Format.Format)) : stdgo._internal.archive.tar.Tar_Format.Format);
    }
    @:keep
    @:pointer
    static public function _mayOnlyBe(____:stdgo._internal.archive.tar.Tar_Format.Format,  _f:stdgo.Pointer<stdgo._internal.archive.tar.Tar_Format.Format>, _f2:stdgo._internal.archive.tar.Tar_Format.Format):Void {
        _f.value = (_f.value & (_f2) : stdgo._internal.archive.tar.Tar_Format.Format);
    }
    @:keep
    @:pointer
    static public function _mayBe(____:stdgo._internal.archive.tar.Tar_Format.Format,  _f:stdgo.Pointer<stdgo._internal.archive.tar.Tar_Format.Format>, _f2:stdgo._internal.archive.tar.Tar_Format.Format):Void {
        _f.value = (_f.value | (_f2) : stdgo._internal.archive.tar.Tar_Format.Format);
    }
    @:keep
    static public function _has( _f:stdgo._internal.archive.tar.Tar_Format.Format, _f2:stdgo._internal.archive.tar.Tar_Format.Format):Bool {
        @:recv var _f:stdgo._internal.archive.tar.Tar_Format.Format = _f;
        return (_f & _f2 : stdgo._internal.archive.tar.Tar_Format.Format) != ((0 : stdgo._internal.archive.tar.Tar_Format.Format));
    }
}
