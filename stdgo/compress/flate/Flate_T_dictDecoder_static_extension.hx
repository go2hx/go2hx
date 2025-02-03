package stdgo.compress.flate;
class T_dictDecoder_static_extension {
    static public function _readFlush(_dd:T_dictDecoder):Array<std.UInt> {
        final _dd = (_dd : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_dictDecoder.T_dictDecoder>);
        return [for (i in stdgo._internal.compress.flate.Flate_T_dictDecoder_static_extension.T_dictDecoder_static_extension._readFlush(_dd)) i];
    }
    static public function _tryWriteCopy(_dd:T_dictDecoder, _dist:StdTypes.Int, _length:StdTypes.Int):StdTypes.Int {
        final _dd = (_dd : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_dictDecoder.T_dictDecoder>);
        final _dist = (_dist : stdgo.GoInt);
        final _length = (_length : stdgo.GoInt);
        return stdgo._internal.compress.flate.Flate_T_dictDecoder_static_extension.T_dictDecoder_static_extension._tryWriteCopy(_dd, _dist, _length);
    }
    static public function _writeCopy(_dd:T_dictDecoder, _dist:StdTypes.Int, _length:StdTypes.Int):StdTypes.Int {
        final _dd = (_dd : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_dictDecoder.T_dictDecoder>);
        final _dist = (_dist : stdgo.GoInt);
        final _length = (_length : stdgo.GoInt);
        return stdgo._internal.compress.flate.Flate_T_dictDecoder_static_extension.T_dictDecoder_static_extension._writeCopy(_dd, _dist, _length);
    }
    static public function _writeByte(_dd:T_dictDecoder, _c:std.UInt):Void {
        final _dd = (_dd : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_dictDecoder.T_dictDecoder>);
        final _c = (_c : stdgo.GoUInt8);
        stdgo._internal.compress.flate.Flate_T_dictDecoder_static_extension.T_dictDecoder_static_extension._writeByte(_dd, _c);
    }
    static public function _writeMark(_dd:T_dictDecoder, _cnt:StdTypes.Int):Void {
        final _dd = (_dd : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_dictDecoder.T_dictDecoder>);
        final _cnt = (_cnt : stdgo.GoInt);
        stdgo._internal.compress.flate.Flate_T_dictDecoder_static_extension.T_dictDecoder_static_extension._writeMark(_dd, _cnt);
    }
    static public function _writeSlice(_dd:T_dictDecoder):Array<std.UInt> {
        final _dd = (_dd : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_dictDecoder.T_dictDecoder>);
        return [for (i in stdgo._internal.compress.flate.Flate_T_dictDecoder_static_extension.T_dictDecoder_static_extension._writeSlice(_dd)) i];
    }
    static public function _availWrite(_dd:T_dictDecoder):StdTypes.Int {
        final _dd = (_dd : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_dictDecoder.T_dictDecoder>);
        return stdgo._internal.compress.flate.Flate_T_dictDecoder_static_extension.T_dictDecoder_static_extension._availWrite(_dd);
    }
    static public function _availRead(_dd:T_dictDecoder):StdTypes.Int {
        final _dd = (_dd : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_dictDecoder.T_dictDecoder>);
        return stdgo._internal.compress.flate.Flate_T_dictDecoder_static_extension.T_dictDecoder_static_extension._availRead(_dd);
    }
    static public function _histSize(_dd:T_dictDecoder):StdTypes.Int {
        final _dd = (_dd : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_dictDecoder.T_dictDecoder>);
        return stdgo._internal.compress.flate.Flate_T_dictDecoder_static_extension.T_dictDecoder_static_extension._histSize(_dd);
    }
    static public function _init(_dd:T_dictDecoder, _size:StdTypes.Int, _dict:Array<std.UInt>):Void {
        final _dd = (_dd : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_dictDecoder.T_dictDecoder>);
        final _size = (_size : stdgo.GoInt);
        final _dict = ([for (i in _dict) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.compress.flate.Flate_T_dictDecoder_static_extension.T_dictDecoder_static_extension._init(_dd, _size, _dict);
    }
}
