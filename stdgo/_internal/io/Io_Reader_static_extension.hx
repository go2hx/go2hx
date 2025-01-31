package stdgo._internal.io;
import stdgo._internal.errors.Errors;
@:keep class Reader_static_extension {
    @:interfacetypeffun
    static public function read(t:stdgo._internal.io.Io_Reader.Reader, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return t.read(_p);
}
