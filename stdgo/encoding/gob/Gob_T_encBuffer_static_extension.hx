package stdgo.encoding.gob;
class T_encBuffer_static_extension {
    static public function reset(_e:T_encBuffer):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>);
        stdgo._internal.encoding.gob.Gob_T_encBuffer_static_extension.T_encBuffer_static_extension.reset(_e);
    }
    static public function bytes(_e:T_encBuffer):Array<std.UInt> {
        final _e = (_e : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>);
        return [for (i in stdgo._internal.encoding.gob.Gob_T_encBuffer_static_extension.T_encBuffer_static_extension.bytes(_e)) i];
    }
    static public function len(_e:T_encBuffer):StdTypes.Int {
        final _e = (_e : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>);
        return stdgo._internal.encoding.gob.Gob_T_encBuffer_static_extension.T_encBuffer_static_extension.len(_e);
    }
    static public function writeString(_e:T_encBuffer, _s:String):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>);
        final _s = (_s : stdgo.GoString);
        stdgo._internal.encoding.gob.Gob_T_encBuffer_static_extension.T_encBuffer_static_extension.writeString(_e, _s);
    }
    static public function write(_e:T_encBuffer, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _e = (_e : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.gob.Gob_T_encBuffer_static_extension.T_encBuffer_static_extension.write(_e, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _writeByte(_e:T_encBuffer, _c:std.UInt):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>);
        final _c = (_c : stdgo.GoUInt8);
        stdgo._internal.encoding.gob.Gob_T_encBuffer_static_extension.T_encBuffer_static_extension._writeByte(_e, _c);
    }
}
