package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.T_readSeekerFromReader_asInterface) class T_readSeekerFromReader_static_extension {
    @:keep
    static public function seek( _r:stdgo.Ref<stdgo._internal.debug.elf.Elf_T_readSeekerFromReader.T_readSeekerFromReader>, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.elf.Elf_T_readSeekerFromReader.T_readSeekerFromReader> = _r;
        var _newOffset:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        {
            final __value__ = _whence;
            if (__value__ == ((0 : stdgo.GoInt))) {
                _newOffset = _offset;
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                _newOffset = (_r._offset + _offset : stdgo.GoInt64);
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                _newOffset = (_r._size + _offset : stdgo.GoInt64);
            } else {
                return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.os.Os_errInvalid.errInvalid };
            };
        };
        if (_newOffset == (_r._offset)) {
            return { _0 : _newOffset, _1 : (null : stdgo.Error) };
        } else if ((_newOffset < (0i64 : stdgo.GoInt64) : Bool) || (_newOffset > _r._size : Bool)) {
            return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.os.Os_errInvalid.errInvalid };
        } else if (_newOffset == ((0i64 : stdgo.GoInt64))) {
            _r._r = (null : stdgo._internal.io.Io_Reader.Reader);
        } else if (_newOffset == (_r._size)) {
            _r._r = stdgo.Go.asInterface((new stdgo._internal.debug.elf.Elf_T_errorReader.T_errorReader(stdgo._internal.io.Io_eof.eof) : stdgo._internal.debug.elf.Elf_T_errorReader.T_errorReader));
        } else {
            if ((_newOffset < _r._offset : Bool)) {
                _r._start();
            };
            var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(512, 512, ...[for (i in 0 ... 512) (0 : stdgo.GoUInt8)]);
            while ((_r._offset < _newOffset : Bool)) {
                var _b = (_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
                if (((_newOffset - _r._offset : stdgo.GoInt64) < (_buf.length : stdgo.GoInt64) : Bool)) {
                    _b = (_buf.__slice__(0, (_newOffset - _r._offset : stdgo.GoInt64)) : stdgo.Slice<stdgo.GoUInt8>);
                };
                {
                    var __tmp__ = _r.read(_b), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return { _0 : (0i64 : stdgo.GoInt64), _1 : _err };
                    };
                };
            };
        };
        _r._offset = _newOffset;
        return { _0 : _r._offset, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function read( _r:stdgo.Ref<stdgo._internal.debug.elf.Elf_T_readSeekerFromReader.T_readSeekerFromReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.elf.Elf_T_readSeekerFromReader.T_readSeekerFromReader> = _r;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (_r._r == null) {
            _r._start();
        };
        {
            var __tmp__ = _r._r.read(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _r._offset = (_r._offset + ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    static public function _start( _r:stdgo.Ref<stdgo._internal.debug.elf.Elf_T_readSeekerFromReader.T_readSeekerFromReader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.elf.Elf_T_readSeekerFromReader.T_readSeekerFromReader> = _r;
        var __tmp__ = _r._reset(), _x:stdgo._internal.io.Io_Reader.Reader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _r._r = stdgo.Go.asInterface((new stdgo._internal.debug.elf.Elf_T_errorReader.T_errorReader(_err) : stdgo._internal.debug.elf.Elf_T_errorReader.T_errorReader));
        } else {
            _r._r = _x;
        };
        _r._offset = (0i64 : stdgo.GoInt64);
    }
}
