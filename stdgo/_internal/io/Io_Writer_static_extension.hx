package stdgo._internal.io;
import stdgo._internal.errors.Errors;
@:keep class Writer_static_extension {
    @:interfacetypeffun
    static public function write(t:stdgo._internal.io.Io_Writer.Writer, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return t.write(_p);
}
