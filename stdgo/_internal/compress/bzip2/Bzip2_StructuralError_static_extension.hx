package stdgo._internal.compress.bzip2;
@:keep @:allow(stdgo._internal.compress.bzip2.Bzip2.StructuralError_asInterface) class StructuralError_static_extension {
    @:keep
    static public function error( _s:stdgo._internal.compress.bzip2.Bzip2_StructuralError.StructuralError):stdgo.GoString {
        @:recv var _s:stdgo._internal.compress.bzip2.Bzip2_StructuralError.StructuralError = _s;
        return (("bzip2 data invalid: " : stdgo.GoString) + (_s : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}