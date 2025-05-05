package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.T_readSeekerFromReader_asInterface) class T_readSeekerFromReader_static_extension {
    @:keep
    @:tdfield
    static public function seek( _r:stdgo.Ref<stdgo._internal.debug.elf.Elf_t_readseekerfromreader.T_readSeekerFromReader>, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.elf.Elf_t_readseekerfromreader.T_readSeekerFromReader> = _r;
        var _newOffset:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/reader.go#L65"
        {
            final __value__ = _whence;
            if (__value__ == ((0 : stdgo.GoInt))) {
                _newOffset = _offset;
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                _newOffset = ((@:checkr _r ?? throw "null pointer dereference")._offset + _offset : stdgo.GoInt64);
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                _newOffset = ((@:checkr _r ?? throw "null pointer dereference")._size + _offset : stdgo.GoInt64);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/reader.go#L73"
                return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.os.Os_errinvalid.errInvalid };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/reader.go#L76"
        if (_newOffset == ((@:checkr _r ?? throw "null pointer dereference")._offset)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/reader.go#L78"
            return { _0 : _newOffset, _1 : (null : stdgo.Error) };
        } else if ((_newOffset < (0i64 : stdgo.GoInt64) : Bool) || (_newOffset > (@:checkr _r ?? throw "null pointer dereference")._size : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/reader.go#L81"
            return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.os.Os_errinvalid.errInvalid };
        } else if (_newOffset == ((0i64 : stdgo.GoInt64))) {
            (@:checkr _r ?? throw "null pointer dereference")._r = (null : stdgo._internal.io.Io_reader.Reader);
        } else if (_newOffset == ((@:checkr _r ?? throw "null pointer dereference")._size)) {
            (@:checkr _r ?? throw "null pointer dereference")._r = stdgo.Go.asInterface((new stdgo._internal.debug.elf.Elf_t_errorreader.T_errorReader(stdgo._internal.io.Io_eof.eOF) : stdgo._internal.debug.elf.Elf_t_errorreader.T_errorReader));
        } else {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/reader.go#L90"
            if ((_newOffset < (@:checkr _r ?? throw "null pointer dereference")._offset : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/reader.go#L92"
                _r._start();
            };
            var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(512, 512).__setNumber32__();
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/reader.go#L96"
            while (((@:checkr _r ?? throw "null pointer dereference")._offset < _newOffset : Bool)) {
                var _b = (_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/reader.go#L98"
                if (((_newOffset - (@:checkr _r ?? throw "null pointer dereference")._offset : stdgo.GoInt64) < (_buf.length : stdgo.GoInt64) : Bool)) {
                    _b = (_buf.__slice__(0, (_newOffset - (@:checkr _r ?? throw "null pointer dereference")._offset : stdgo.GoInt64)) : stdgo.Slice<stdgo.GoUInt8>);
                };
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/reader.go#L101"
                {
                    var __tmp__ = _r.read(_b), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/elf/reader.go#L102"
                        return { _0 : (0i64 : stdgo.GoInt64), _1 : _err };
                    };
                };
            };
        };
        (@:checkr _r ?? throw "null pointer dereference")._offset = _newOffset;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/reader.go#L107"
        return { _0 : (@:checkr _r ?? throw "null pointer dereference")._offset, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function read( _r:stdgo.Ref<stdgo._internal.debug.elf.Elf_t_readseekerfromreader.T_readSeekerFromReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.elf.Elf_t_readseekerfromreader.T_readSeekerFromReader> = _r;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/reader.go#L55"
        if ((@:checkr _r ?? throw "null pointer dereference")._r == null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/reader.go#L56"
            _r._start();
        };
        {
            var __tmp__ = (@:checkr _r ?? throw "null pointer dereference")._r.read(_p);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        (@:checkr _r ?? throw "null pointer dereference")._offset = ((@:checkr _r ?? throw "null pointer dereference")._offset + ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/reader.go#L60"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _start( _r:stdgo.Ref<stdgo._internal.debug.elf.Elf_t_readseekerfromreader.T_readSeekerFromReader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.debug.elf.Elf_t_readseekerfromreader.T_readSeekerFromReader> = _r;
        var __tmp__ = (@:checkr _r ?? throw "null pointer dereference")._reset(), _x:stdgo._internal.io.Io_reader.Reader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/reader.go#L46"
        if (_err != null) {
            (@:checkr _r ?? throw "null pointer dereference")._r = stdgo.Go.asInterface((new stdgo._internal.debug.elf.Elf_t_errorreader.T_errorReader(_err) : stdgo._internal.debug.elf.Elf_t_errorreader.T_errorReader));
        } else {
            (@:checkr _r ?? throw "null pointer dereference")._r = _x;
        };
        (@:checkr _r ?? throw "null pointer dereference")._offset = (0i64 : stdgo.GoInt64);
    }
}
