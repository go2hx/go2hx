package stdgo._internal.io;
@:keep @:allow(stdgo._internal.io.Io.OffsetWriter_asInterface) class OffsetWriter_static_extension {
    @:keep
    @:tdfield
    static public function seek( _o:stdgo.Ref<stdgo._internal.io.Io_offsetwriter.OffsetWriter>, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _o:stdgo.Ref<stdgo._internal.io.Io_offsetwriter.OffsetWriter> = _o;
        //"file:///home/runner/.go/go1.21.3/src/io/io.go#L590"
        {
            final __value__ = _whence;
            if (__value__ == ((0 : stdgo.GoInt))) {
                _offset = (_offset + ((@:checkr _o ?? throw "null pointer dereference")._base) : stdgo.GoInt64);
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                _offset = (_offset + ((@:checkr _o ?? throw "null pointer dereference")._off) : stdgo.GoInt64);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/io/io.go#L592"
                return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.io.Io__errwhence._errWhence };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/io/io.go#L598"
        if ((_offset < (@:checkr _o ?? throw "null pointer dereference")._base : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/io/io.go#L599"
            return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.io.Io__erroffset._errOffset };
        };
        (@:checkr _o ?? throw "null pointer dereference")._off = _offset;
        //"file:///home/runner/.go/go1.21.3/src/io/io.go#L602"
        return { _0 : (_offset - (@:checkr _o ?? throw "null pointer dereference")._base : stdgo.GoInt64), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function writeAt( _o:stdgo.Ref<stdgo._internal.io.Io_offsetwriter.OffsetWriter>, _p:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _o:stdgo.Ref<stdgo._internal.io.Io_offsetwriter.OffsetWriter> = _o;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/io/io.go#L581"
        if ((_off < (0i64 : stdgo.GoInt64) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/io/io.go#L582"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io__erroffset._errOffset };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        _off = (_off + ((@:checkr _o ?? throw "null pointer dereference")._base) : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/io/io.go#L586"
        return (@:checkr _o ?? throw "null pointer dereference")._w.writeAt(_p, _off);
    }
    @:keep
    @:tdfield
    static public function write( _o:stdgo.Ref<stdgo._internal.io.Io_offsetwriter.OffsetWriter>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _o:stdgo.Ref<stdgo._internal.io.Io_offsetwriter.OffsetWriter> = _o;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        {
            var __tmp__ = (@:checkr _o ?? throw "null pointer dereference")._w.writeAt(_p, (@:checkr _o ?? throw "null pointer dereference")._off);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        (@:checkr _o ?? throw "null pointer dereference")._off = ((@:checkr _o ?? throw "null pointer dereference")._off + ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/io/io.go#L577"
        return { _0 : _n, _1 : _err };
    }
}
