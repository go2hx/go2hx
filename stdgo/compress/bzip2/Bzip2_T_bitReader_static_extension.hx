package stdgo.compress.bzip2;
class T_bitReader_static_extension {
    static public function err(_br:T_bitReader):stdgo.Error {
        final _br = (_br : stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_T_bitReader.T_bitReader>);
        return stdgo._internal.compress.bzip2.Bzip2_T_bitReader_static_extension.T_bitReader_static_extension.err(_br);
    }
    static public function readBit(_br:T_bitReader):Bool {
        final _br = (_br : stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_T_bitReader.T_bitReader>);
        return stdgo._internal.compress.bzip2.Bzip2_T_bitReader_static_extension.T_bitReader_static_extension.readBit(_br);
    }
    static public function readBits(_br:T_bitReader, _bits:std.UInt):StdTypes.Int {
        final _br = (_br : stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_T_bitReader.T_bitReader>);
        final _bits = (_bits : stdgo.GoUInt);
        return stdgo._internal.compress.bzip2.Bzip2_T_bitReader_static_extension.T_bitReader_static_extension.readBits(_br, _bits);
    }
    static public function readBits64(_br:T_bitReader, _bits:std.UInt):haxe.UInt64 {
        final _br = (_br : stdgo.Ref<stdgo._internal.compress.bzip2.Bzip2_T_bitReader.T_bitReader>);
        final _bits = (_bits : stdgo.GoUInt);
        return stdgo._internal.compress.bzip2.Bzip2_T_bitReader_static_extension.T_bitReader_static_extension.readBits64(_br, _bits);
    }
}
