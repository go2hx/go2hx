package stdgo.log.slog.internal.buffer;
typedef Buffer_ = stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer;
typedef BufferPointer = stdgo._internal.log.slog.internal.buffer.Buffer_bufferpointer.BufferPointer;
class Buffer_static_extension {
    static public function string(_b:Buffer_):String {
        final _b = (_b : stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer>);
        return stdgo._internal.log.slog.internal.buffer.Buffer_buffer_static_extension.Buffer_static_extension.string(_b);
    }
    static public function writePosIntWidth(_b:Buffer_, _i:StdTypes.Int, _width:StdTypes.Int):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer>);
        final _i = (_i : stdgo.GoInt);
        final _width = (_width : stdgo.GoInt);
        stdgo._internal.log.slog.internal.buffer.Buffer_buffer_static_extension.Buffer_static_extension.writePosIntWidth(_b, _i, _width);
    }
    static public function writePosInt(_b:Buffer_, _i:StdTypes.Int):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer>);
        final _i = (_i : stdgo.GoInt);
        stdgo._internal.log.slog.internal.buffer.Buffer_buffer_static_extension.Buffer_static_extension.writePosInt(_b, _i);
    }
    static public function writeByte(_b:Buffer_, _c:std.UInt):stdgo.Error {
        final _b = (_b : stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer>);
        final _c = (_c : stdgo.GoUInt8);
        return stdgo._internal.log.slog.internal.buffer.Buffer_buffer_static_extension.Buffer_static_extension.writeByte(_b, _c);
    }
    static public function writeString(_b:Buffer_, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.log.slog.internal.buffer.Buffer_buffer_static_extension.Buffer_static_extension.writeString(_b, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_b:Buffer_, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.log.slog.internal.buffer.Buffer_buffer_static_extension.Buffer_static_extension.write(_b, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function reset(_b:Buffer_):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer>);
        stdgo._internal.log.slog.internal.buffer.Buffer_buffer_static_extension.Buffer_static_extension.reset(_b);
    }
    static public function free(_b:Buffer_):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer>);
        stdgo._internal.log.slog.internal.buffer.Buffer_buffer_static_extension.Buffer_static_extension.free(_b);
    }
}
/**
    * Package buffer provides a pool-allocated byte buffer.
**/
class Buffer {
    static public inline function new_():Buffer_ {
        return stdgo._internal.log.slog.internal.buffer.Buffer_new_.new_();
    }
}
