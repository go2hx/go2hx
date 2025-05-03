package stdgo._internal.compress.bzip2;
@:keep @:allow(stdgo._internal.compress.bzip2.Bzip2.StructuralError_asInterface) class StructuralError_static_extension {
    @:keep
    @:tdfield
    static public function error( _s:stdgo._internal.compress.bzip2.Bzip2_structuralerror.StructuralError):stdgo.GoString {
        @:recv var _s:stdgo._internal.compress.bzip2.Bzip2_structuralerror.StructuralError = _s;
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2.go#L20"
        return (("bzip2 data invalid: " : stdgo.GoString) + (_s : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
