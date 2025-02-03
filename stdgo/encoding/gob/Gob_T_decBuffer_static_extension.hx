package stdgo.encoding.gob;
class T_decBuffer_static_extension {
    static public function reset(_d:T_decBuffer):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decBuffer.T_decBuffer>);
        stdgo._internal.encoding.gob.Gob_T_decBuffer_static_extension.T_decBuffer_static_extension.reset(_d);
    }
    static public function setBytes(_d:T_decBuffer, _data:Array<std.UInt>):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decBuffer.T_decBuffer>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.encoding.gob.Gob_T_decBuffer_static_extension.T_decBuffer_static_extension.setBytes(_d, _data);
    }
    static public function bytes(_d:T_decBuffer):Array<std.UInt> {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decBuffer.T_decBuffer>);
        return [for (i in stdgo._internal.encoding.gob.Gob_T_decBuffer_static_extension.T_decBuffer_static_extension.bytes(_d)) i];
    }
    static public function len(_d:T_decBuffer):StdTypes.Int {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decBuffer.T_decBuffer>);
        return stdgo._internal.encoding.gob.Gob_T_decBuffer_static_extension.T_decBuffer_static_extension.len(_d);
    }
    static public function readByte(_d:T_decBuffer):stdgo.Tuple<std.UInt, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decBuffer.T_decBuffer>);
        return {
            final obj = stdgo._internal.encoding.gob.Gob_T_decBuffer_static_extension.T_decBuffer_static_extension.readByte(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function drop(_d:T_decBuffer, _n:StdTypes.Int):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decBuffer.T_decBuffer>);
        final _n = (_n : stdgo.GoInt);
        stdgo._internal.encoding.gob.Gob_T_decBuffer_static_extension.T_decBuffer_static_extension.drop(_d, _n);
    }
    static public function read(_d:T_decBuffer, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decBuffer.T_decBuffer>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.gob.Gob_T_decBuffer_static_extension.T_decBuffer_static_extension.read(_d, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
