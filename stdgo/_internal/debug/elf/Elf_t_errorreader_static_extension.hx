package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.T_errorReader_asInterface) class T_errorReader_static_extension {
    @:keep
    @:tdfield
    static public function close( _r:stdgo._internal.debug.elf.Elf_t_errorreader.T_errorReader):stdgo.Error {
        @:recv var _r:stdgo._internal.debug.elf.Elf_t_errorreader.T_errorReader = _r?.__copy__();
        return _r._error;
    }
    @:keep
    @:tdfield
    static public function seek( _r:stdgo._internal.debug.elf.Elf_t_errorreader.T_errorReader, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo._internal.debug.elf.Elf_t_errorreader.T_errorReader = _r?.__copy__();
        return { _0 : (0i64 : stdgo.GoInt64), _1 : _r._error };
    }
    @:keep
    @:tdfield
    static public function readAt( _r:stdgo._internal.debug.elf.Elf_t_errorreader.T_errorReader, _p:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo._internal.debug.elf.Elf_t_errorreader.T_errorReader = _r?.__copy__();
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _r._error };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function read( _r:stdgo._internal.debug.elf.Elf_t_errorreader.T_errorReader, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo._internal.debug.elf.Elf_t_errorreader.T_errorReader = _r?.__copy__();
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _r._error };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:embedded
    @:embeddededffieldsffun
    public static function error( __self__:stdgo._internal.debug.elf.Elf_t_errorreader.T_errorReader):stdgo.GoString return @:_5 __self__.error();
}
