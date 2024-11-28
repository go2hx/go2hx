package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.T_errorReader_asInterface) class T_errorReader_static_extension {
    @:keep
    static public function close( _r:stdgo._internal.debug.elf.Elf_T_errorReader.T_errorReader):stdgo.Error {
        @:recv var _r:stdgo._internal.debug.elf.Elf_T_errorReader.T_errorReader = _r?.__copy__();
        return _r._error;
    }
    @:keep
    static public function seek( _r:stdgo._internal.debug.elf.Elf_T_errorReader.T_errorReader, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo._internal.debug.elf.Elf_T_errorReader.T_errorReader = _r?.__copy__();
        return { _0 : (0i64 : stdgo.GoInt64), _1 : _r._error };
    }
    @:keep
    static public function readAt( _r:stdgo._internal.debug.elf.Elf_T_errorReader.T_errorReader, _p:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo._internal.debug.elf.Elf_T_errorReader.T_errorReader = _r?.__copy__();
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return { _0 : _n = (0 : stdgo.GoInt), _1 : _err = _r._error };
    }
    @:keep
    static public function read( _r:stdgo._internal.debug.elf.Elf_T_errorReader.T_errorReader, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo._internal.debug.elf.Elf_T_errorReader.T_errorReader = _r?.__copy__();
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return { _0 : _n = (0 : stdgo.GoInt), _1 : _err = _r._error };
    }
    @:embedded
    public static function error( __self__:stdgo._internal.debug.elf.Elf_T_errorReader.T_errorReader):stdgo.GoString return __self__.error();
}
