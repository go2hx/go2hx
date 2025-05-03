package stdgo._internal.log.slog.internal.buffer;
@:keep @:allow(stdgo._internal.log.slog.internal.buffer.Buffer.Buffer_asInterface) class Buffer_static_extension {
    @:keep
    @:tdfield
    static public function string( _b:stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer>):stdgo.GoString {
        @:recv var _b:stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer> = _b;
        //"file:///home/runner/.go/go1.21.3/src/log/slog/internal/buffer/buffer.go#L83"
        return ((_b : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer) : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function writePosIntWidth( _b:stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer>, _i:stdgo.GoInt, _width:stdgo.GoInt):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer> = _b;
        //"file:///home/runner/.go/go1.21.3/src/log/slog/internal/buffer/buffer.go#L63"
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/log/slog/internal/buffer/buffer.go#L64"
            throw stdgo.Go.toInterface(("negative int" : stdgo.GoString));
        };
        var _bb:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(20, 20).__setNumber32__();
        var _bp = (19 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/log/slog/internal/buffer/buffer.go#L70"
        while (((_i >= (10 : stdgo.GoInt) : Bool) || (_width > (1 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/log/slog/internal/buffer/buffer.go#L71"
            _width--;
            var _q = (_i / (10 : stdgo.GoInt) : stdgo.GoInt);
            _bb[(_bp : stdgo.GoInt)] = ((((48 : stdgo.GoInt) + _i : stdgo.GoInt) - (_q * (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
            //"file:///home/runner/.go/go1.21.3/src/log/slog/internal/buffer/buffer.go#L74"
            _bp--;
            _i = _q;
        };
        _bb[(_bp : stdgo.GoInt)] = (((48 : stdgo.GoInt) + _i : stdgo.GoInt) : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/log/slog/internal/buffer/buffer.go#L79"
        _b.write((_bb.__slice__(_bp) : stdgo.Slice<stdgo.GoUInt8>));
    }
    @:keep
    @:tdfield
    static public function writePosInt( _b:stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer>, _i:stdgo.GoInt):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer> = _b;
        //"file:///home/runner/.go/go1.21.3/src/log/slog/internal/buffer/buffer.go#L54"
        _b.writePosIntWidth(_i, (0 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function writeByte( _b:stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer>, _c:stdgo.GoUInt8):stdgo.Error {
        @:recv var _b:stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer> = _b;
        (_b : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer).__setData__(((_b : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer).__append__(_c) : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer));
        //"file:///home/runner/.go/go1.21.3/src/log/slog/internal/buffer/buffer.go#L50"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function writeString( _b:stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer> = _b;
        (_b : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer).__setData__(((_b : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer).__append__(...(_s : Array<stdgo.GoUInt8>)) : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer));
        //"file:///home/runner/.go/go1.21.3/src/log/slog/internal/buffer/buffer.go#L45"
        return { _0 : (_s.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function write( _b:stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer> = _b;
        (_b : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer).__setData__(((_b : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer).__append__(...(_p : Array<stdgo.GoUInt8>)) : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer));
        //"file:///home/runner/.go/go1.21.3/src/log/slog/internal/buffer/buffer.go#L40"
        return { _0 : (_p.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function reset( _b:stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer> = _b;
        (_b : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer).__setData__((((_b : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer)).__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer));
    }
    @:keep
    @:tdfield
    static public function free( _b:stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer> = _b;
        {};
        //"file:///home/runner/.go/go1.21.3/src/log/slog/internal/buffer/buffer.go#L28"
        if (((_b : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer).capacity <= (16384 : stdgo.GoInt) : Bool)) {
            (_b : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer).__setData__((((_b : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer)).__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer));
            //"file:///home/runner/.go/go1.21.3/src/log/slog/internal/buffer/buffer.go#L30"
            stdgo._internal.log.slog.internal.buffer.Buffer__bufpool._bufPool.put(stdgo.Go.toInterface(stdgo.Go.asInterface(_b)));
        };
    }
}
