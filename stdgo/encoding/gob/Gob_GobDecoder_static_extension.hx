package stdgo.encoding.gob;
class GobDecoder_static_extension {
    static public function gobDecode(t:stdgo._internal.encoding.gob.Gob_GobDecoder.GobDecoder, _0:Array<std.UInt>):stdgo.Error {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.gob.Gob_GobDecoder_static_extension.GobDecoder_static_extension.gobDecode(t, _0);
    }
}
