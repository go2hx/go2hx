package stdgo._internal.io;
@:keep class Seeker_static_extension {
    static public function seek(t:Seeker, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return t.seek(_offset, _whence);
}
