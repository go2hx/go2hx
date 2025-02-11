package stdgo._internal.io;
@:keep @:allow(stdgo._internal.io.Io.T_nopCloserWriterTo_asInterface) class T_nopCloserWriterTo_static_extension {
    @:keep
    @:tdfield
    static public function writeTo( _c:stdgo._internal.io.Io_t_nopcloserwriterto.T_nopCloserWriterTo, _w:stdgo._internal.io.Io_writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo._internal.io.Io_t_nopcloserwriterto.T_nopCloserWriterTo = _c?.__copy__();
        var _n = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        return {
            final __tmp__ = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c.reader) : stdgo._internal.io.Io_writerto.WriterTo)) : stdgo._internal.io.Io_writerto.WriterTo).writeTo(_w);
            _n = __tmp__._0;
            _err = __tmp__._1;
            { _0 : _n, _1 : _err };
        };
    }
    @:keep
    @:tdfield
    static public function close( _:stdgo._internal.io.Io_t_nopcloserwriterto.T_nopCloserWriterTo):stdgo.Error {
        @:recv var _:stdgo._internal.io.Io_t_nopcloserwriterto.T_nopCloserWriterTo = _?.__copy__();
        return (null : stdgo.Error);
    }
    @:embedded
    @:embeddededffieldsffun
    public static function read( __self__:stdgo._internal.io.Io_t_nopcloserwriterto.T_nopCloserWriterTo, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.read(_0);
}
