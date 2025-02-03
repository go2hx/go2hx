package stdgo.compress.flate;
class T_decompressor_static_extension {
    static public function reset(_f:T_decompressor, _r:stdgo._internal.io.Io_Reader.Reader, _dict:Array<std.UInt>):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>);
        final _dict = ([for (i in _dict) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.compress.flate.Flate_T_decompressor_static_extension.T_decompressor_static_extension.reset(_f, _r, _dict);
    }
    static public function _makeReader(_f:T_decompressor, _r:stdgo._internal.io.Io_Reader.Reader):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>);
        stdgo._internal.compress.flate.Flate_T_decompressor_static_extension.T_decompressor_static_extension._makeReader(_f, _r);
    }
    static public function _huffSym(_f:T_decompressor, _h:T_huffmanDecoder):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>);
        final _h = (_h : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanDecoder.T_huffmanDecoder>);
        return {
            final obj = stdgo._internal.compress.flate.Flate_T_decompressor_static_extension.T_decompressor_static_extension._huffSym(_f, _h);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _moreBits(_f:T_decompressor):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>);
        return stdgo._internal.compress.flate.Flate_T_decompressor_static_extension.T_decompressor_static_extension._moreBits(_f);
    }
    static public function _finishBlock(_f:T_decompressor):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>);
        stdgo._internal.compress.flate.Flate_T_decompressor_static_extension.T_decompressor_static_extension._finishBlock(_f);
    }
    static public function _copyData(_f:T_decompressor):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>);
        stdgo._internal.compress.flate.Flate_T_decompressor_static_extension.T_decompressor_static_extension._copyData(_f);
    }
    static public function _dataBlock(_f:T_decompressor):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>);
        stdgo._internal.compress.flate.Flate_T_decompressor_static_extension.T_decompressor_static_extension._dataBlock(_f);
    }
    static public function _huffmanBlock(_f:T_decompressor):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>);
        stdgo._internal.compress.flate.Flate_T_decompressor_static_extension.T_decompressor_static_extension._huffmanBlock(_f);
    }
    static public function _readHuffman(_f:T_decompressor):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>);
        return stdgo._internal.compress.flate.Flate_T_decompressor_static_extension.T_decompressor_static_extension._readHuffman(_f);
    }
    static public function close(_f:T_decompressor):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>);
        return stdgo._internal.compress.flate.Flate_T_decompressor_static_extension.T_decompressor_static_extension.close(_f);
    }
    static public function read(_f:T_decompressor, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.compress.flate.Flate_T_decompressor_static_extension.T_decompressor_static_extension.read(_f, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _nextBlock(_f:T_decompressor):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>);
        stdgo._internal.compress.flate.Flate_T_decompressor_static_extension.T_decompressor_static_extension._nextBlock(_f);
    }
}
