package stdgo._internal.io;
@:keep class Seeker_static_extension {
    @:interfacetypeffun
    static public function seek(t:stdgo._internal.io.Io_seeker.Seeker, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return t.seek(_offset, _whence);
}
