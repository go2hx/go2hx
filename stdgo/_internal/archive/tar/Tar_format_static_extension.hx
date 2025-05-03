package stdgo._internal.archive.tar;
@:keep @:allow(stdgo._internal.archive.tar.Tar.Format_asInterface) class Format_static_extension {
    @:keep
    @:tdfield
    static public function string( _f:stdgo._internal.archive.tar.Tar_format.Format):stdgo.GoString {
        @:recv var _f:stdgo._internal.archive.tar.Tar_format.Format = _f;
        var _ss:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/format.go#L119"
        {
            var _f2 = ((1 : stdgo._internal.archive.tar.Tar_format.Format) : stdgo._internal.archive.tar.Tar_format.Format);
            while ((_f2 < (32 : stdgo._internal.archive.tar.Tar_format.Format) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/format.go#L120"
                if (_f._has(_f2)) {
                    _ss = (_ss.__append__((stdgo._internal.archive.tar.Tar__formatnames._formatNames[_f2] ?? ("" : stdgo.GoString)).__copy__()) : stdgo.Slice<stdgo.GoString>);
                };
                _f2 = (_f2 << ((1i64 : stdgo.GoUInt64)) : stdgo._internal.archive.tar.Tar_format.Format);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/format.go#L124"
        {
            final __value__ = (_ss.length);
            if (__value__ == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/format.go#L126"
                return ("<unknown>" : stdgo.GoString);
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/format.go#L128"
                return _ss[(0 : stdgo.GoInt)]?.__copy__();
            } else {
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/format.go#L130"
                return ((("(" : stdgo.GoString) + stdgo._internal.strings.Strings_join.join(_ss, (" | " : stdgo.GoString))?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
            };
        };
    }
    @:keep
    @:pointer
    @:tdfield
    static public function _mustNotBe( _f:stdgo.Pointer<stdgo._internal.archive.tar.Tar_format.Format>, _f2:stdgo._internal.archive.tar.Tar_format.Format):Void {
        _f.value = (_f.value & (((_f2) ^ (-1i64 : stdgo.GoInt32) : stdgo._internal.archive.tar.Tar_format.Format)) : stdgo._internal.archive.tar.Tar_format.Format);
    }
    @:keep
    @:pointer
    @:tdfield
    static public function _mayOnlyBe( _f:stdgo.Pointer<stdgo._internal.archive.tar.Tar_format.Format>, _f2:stdgo._internal.archive.tar.Tar_format.Format):Void {
        _f.value = (_f.value & (_f2) : stdgo._internal.archive.tar.Tar_format.Format);
    }
    @:keep
    @:pointer
    @:tdfield
    static public function _mayBe( _f:stdgo.Pointer<stdgo._internal.archive.tar.Tar_format.Format>, _f2:stdgo._internal.archive.tar.Tar_format.Format):Void {
        _f.value = (_f.value | (_f2) : stdgo._internal.archive.tar.Tar_format.Format);
    }
    @:keep
    @:tdfield
    static public function _has( _f:stdgo._internal.archive.tar.Tar_format.Format, _f2:stdgo._internal.archive.tar.Tar_format.Format):Bool {
        @:recv var _f:stdgo._internal.archive.tar.Tar_format.Format = _f;
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/format.go#L108"
        return (_f & _f2 : stdgo._internal.archive.tar.Tar_format.Format) != ((0 : stdgo._internal.archive.tar.Tar_format.Format));
    }
}
