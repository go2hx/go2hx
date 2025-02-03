package stdgo.encoding.gob;
class T_gobDecoderBug0_static_extension {
    static public function gobDecode(_br:T_gobDecoderBug0, _b:Array<std.UInt>):stdgo.Error {
        final _br = (_br : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobDecoderBug0.T_gobDecoderBug0>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.gob.Gob_T_gobDecoderBug0_static_extension.T_gobDecoderBug0_static_extension.gobDecode(_br, _b);
    }
    static public function gobEncode(_br:T_gobDecoderBug0):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _br = (_br : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobDecoderBug0.T_gobDecoderBug0>);
        return {
            final obj = stdgo._internal.encoding.gob.Gob_T_gobDecoderBug0_static_extension.T_gobDecoderBug0_static_extension.gobEncode(_br);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function string(_br:T_gobDecoderBug0):String {
        final _br = (_br : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_gobDecoderBug0.T_gobDecoderBug0>);
        return stdgo._internal.encoding.gob.Gob_T_gobDecoderBug0_static_extension.T_gobDecoderBug0_static_extension.string(_br);
    }
}
