package stdgo.compress.flate;
class T_compressor_static_extension {
    static public function _close(_d:T_compressor):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>);
        return stdgo._internal.compress.flate.Flate_T_compressor_static_extension.T_compressor_static_extension._close(_d);
    }
    static public function _reset(_d:T_compressor, _w:stdgo._internal.io.Io_Writer.Writer):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>);
        stdgo._internal.compress.flate.Flate_T_compressor_static_extension.T_compressor_static_extension._reset(_d, _w);
    }
    static public function _init(_d:T_compressor, _w:stdgo._internal.io.Io_Writer.Writer, _level:StdTypes.Int):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>);
        final _level = (_level : stdgo.GoInt);
        return stdgo._internal.compress.flate.Flate_T_compressor_static_extension.T_compressor_static_extension._init(_d, _w, _level);
    }
    static public function _syncFlush(_d:T_compressor):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>);
        return stdgo._internal.compress.flate.Flate_T_compressor_static_extension.T_compressor_static_extension._syncFlush(_d);
    }
    static public function _write(_d:T_compressor, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.compress.flate.Flate_T_compressor_static_extension.T_compressor_static_extension._write(_d, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _storeHuff(_d:T_compressor):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>);
        stdgo._internal.compress.flate.Flate_T_compressor_static_extension.T_compressor_static_extension._storeHuff(_d);
    }
    static public function _store(_d:T_compressor):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>);
        stdgo._internal.compress.flate.Flate_T_compressor_static_extension.T_compressor_static_extension._store(_d);
    }
    static public function _fillStore(_d:T_compressor, _b:Array<std.UInt>):StdTypes.Int {
        final _d = (_d : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.compress.flate.Flate_T_compressor_static_extension.T_compressor_static_extension._fillStore(_d, _b);
    }
    static public function _deflate(_d:T_compressor):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>);
        stdgo._internal.compress.flate.Flate_T_compressor_static_extension.T_compressor_static_extension._deflate(_d);
    }
    static public function _initDeflate(_d:T_compressor):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>);
        stdgo._internal.compress.flate.Flate_T_compressor_static_extension.T_compressor_static_extension._initDeflate(_d);
    }
    static public function _encSpeed(_d:T_compressor):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>);
        stdgo._internal.compress.flate.Flate_T_compressor_static_extension.T_compressor_static_extension._encSpeed(_d);
    }
    static public function _writeStoredBlock(_d:T_compressor, _buf:Array<std.UInt>):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.compress.flate.Flate_T_compressor_static_extension.T_compressor_static_extension._writeStoredBlock(_d, _buf);
    }
    static public function _findMatch(_d:T_compressor, _pos:StdTypes.Int, _prevHead:StdTypes.Int, _prevLength:StdTypes.Int, _lookahead:StdTypes.Int):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, Bool> {
        final _d = (_d : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>);
        final _pos = (_pos : stdgo.GoInt);
        final _prevHead = (_prevHead : stdgo.GoInt);
        final _prevLength = (_prevLength : stdgo.GoInt);
        final _lookahead = (_lookahead : stdgo.GoInt);
        return {
            final obj = stdgo._internal.compress.flate.Flate_T_compressor_static_extension.T_compressor_static_extension._findMatch(_d, _pos, _prevHead, _prevLength, _lookahead);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _fillWindow(_d:T_compressor, _b:Array<std.UInt>):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.compress.flate.Flate_T_compressor_static_extension.T_compressor_static_extension._fillWindow(_d, _b);
    }
    static public function _writeBlock(_d:T_compressor, _tokens:Array<T_token>, _index:StdTypes.Int):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>);
        final _tokens = ([for (i in _tokens) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>);
        final _index = (_index : stdgo.GoInt);
        return stdgo._internal.compress.flate.Flate_T_compressor_static_extension.T_compressor_static_extension._writeBlock(_d, _tokens, _index);
    }
    static public function _fillDeflate(_d:T_compressor, _b:Array<std.UInt>):StdTypes.Int {
        final _d = (_d : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.compress.flate.Flate_T_compressor_static_extension.T_compressor_static_extension._fillDeflate(_d, _b);
    }
}
