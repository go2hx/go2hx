package stdgo._internal.bufio;
@:keep @:allow(stdgo._internal.bufio.Bufio.Reader_asInterface) class Reader_static_extension {
    @:keep
    @:tdfield
    static public function _writeBuf( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>, _w:stdgo._internal.io.Io_writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = _b;
        var __tmp__ = _w.write(((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__((@:checkr _b ?? throw "null pointer dereference")._r, (@:checkr _b ?? throw "null pointer dereference")._w) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L564"
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L565"
            throw stdgo.Go.toInterface(stdgo._internal.bufio.Bufio__errnegativewrite._errNegativeWrite);
        };
        (@:checkr _b ?? throw "null pointer dereference")._r = ((@:checkr _b ?? throw "null pointer dereference")._r + (_n) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L568"
        return { _0 : (_n : stdgo.GoInt64), _1 : _err };
    }
    @:keep
    @:tdfield
    static public function writeTo( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>, _w:stdgo._internal.io.Io_writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = _b;
        var _n = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        (@:checkr _b ?? throw "null pointer dereference")._lastByte = (-1 : stdgo.GoInt);
        (@:checkr _b ?? throw "null pointer dereference")._lastRuneSize = (-1 : stdgo.GoInt);
        {
            var __tmp__ = _b._writeBuf(_w);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L522"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L523"
            return { _0 : _n, _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L526"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _b ?? throw "null pointer dereference")._rd) : stdgo._internal.io.Io_writerto.WriterTo)) : stdgo._internal.io.Io_writerto.WriterTo), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io_writerto.WriterTo), _1 : false };
            }, _r = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                var __tmp__ = _r.writeTo(_w), _m:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _n = (_n + (_m) : stdgo.GoInt64);
                //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L529"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L532"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_w) : stdgo._internal.io.Io_readerfrom.ReaderFrom)) : stdgo._internal.io.Io_readerfrom.ReaderFrom), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io_readerfrom.ReaderFrom), _1 : false };
            }, _w = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                var __tmp__ = _w.readFrom((@:checkr _b ?? throw "null pointer dereference")._rd), _m:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _n = (_n + (_m) : stdgo.GoInt64);
                //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L535"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L538"
        if ((((@:checkr _b ?? throw "null pointer dereference")._w - (@:checkr _b ?? throw "null pointer dereference")._r : stdgo.GoInt) < ((@:checkr _b ?? throw "null pointer dereference")._buf.length) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L539"
            _b._fill();
        };
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L542"
        while (((@:checkr _b ?? throw "null pointer dereference")._r < (@:checkr _b ?? throw "null pointer dereference")._w : Bool)) {
            var __tmp__ = _b._writeBuf(_w), _m:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            _n = (_n + (_m) : stdgo.GoInt64);
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L546"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L547"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L549"
            _b._fill();
        };
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L552"
        if (stdgo.Go.toInterface((@:checkr _b ?? throw "null pointer dereference")._err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
            (@:checkr _b ?? throw "null pointer dereference")._err = (null : stdgo.Error);
        };
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L556"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : _b._readErr() };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function readString( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>, _delim:stdgo.GoUInt8):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = _b;
        var __tmp__ = _b._collectFragments(_delim), _full:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> = __tmp__._0, _frag:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _n:stdgo.GoInt = __tmp__._2, _err:stdgo.Error = __tmp__._3;
        var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L504"
        _buf.grow(_n);
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L506"
        for (__0 => _fb in _full) {
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L507"
            _buf.write(_fb);
        };
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L509"
        _buf.write(_frag);
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L510"
        return { _0 : (_buf.string() : stdgo.GoString)?.__copy__(), _1 : _err };
    }
    @:keep
    @:tdfield
    static public function readBytes( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>, _delim:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = _b;
        var __tmp__ = _b._collectFragments(_delim), _full:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> = __tmp__._0, _frag:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _n:stdgo.GoInt = __tmp__._2, _err:stdgo.Error = __tmp__._3;
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _n = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L486"
        for (_i => _ in _full) {
            _n = (_n + ((_buf.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_full[(_i : stdgo.GoInt)])) : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L489"
        (_buf.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_frag);
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L490"
        return { _0 : _buf, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function _collectFragments( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>, _delim:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = _b;
        var _fullBuffers = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>), _finalFragment = (null : stdgo.Slice<stdgo.GoUInt8>), _totalLen = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _frag:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L452"
        while (true) {
            var _e:stdgo.Error = (null : stdgo.Error);
            {
                var __tmp__ = _b.readSlice(_delim);
                _frag = @:tmpset0 __tmp__._0;
                _e = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L455"
            if (_e == null) {
                //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L456"
                break;
            };
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L458"
            if (stdgo.Go.toInterface(_e) != (stdgo.Go.toInterface(stdgo._internal.bufio.Bufio_errbufferfull.errBufferFull))) {
                _err = _e;
                //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L460"
                break;
            };
            var _buf = stdgo._internal.bytes.Bytes_clone.clone(_frag);
            _fullBuffers = (_fullBuffers.__append__(_buf) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
            _totalLen = (_totalLen + ((_buf.length)) : stdgo.GoInt);
        };
        _totalLen = (_totalLen + ((_frag.length)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L470"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } = { _0 : _fullBuffers, _1 : _frag, _2 : _totalLen, _3 : _err };
            _fullBuffers = __tmp__._0;
            _finalFragment = __tmp__._1;
            _totalLen = __tmp__._2;
            _err = __tmp__._3;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function readLine( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : Bool; var _2 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = _b;
        var _line = (null : stdgo.Slice<stdgo.GoUInt8>), _isPrefix = false, _err = (null : stdgo.Error);
        {
            var __tmp__ = _b.readSlice((10 : stdgo.GoUInt8));
            _line = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L409"
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.bufio.Bufio_errbufferfull.errBufferFull))) {
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L411"
            if ((((_line.length) > (0 : stdgo.GoInt) : Bool) && (_line[((_line.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (13 : stdgo.GoUInt8)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L414"
                if ((@:checkr _b ?? throw "null pointer dereference")._r == ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L416"
                    throw stdgo.Go.toInterface(("bufio: tried to rewind past start of buffer" : stdgo.GoString));
                };
                //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L418"
                (@:checkr _b ?? throw "null pointer dereference")._r--;
                _line = (_line.__slice__(0, ((_line.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L421"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : Bool; var _2 : stdgo.Error; } = { _0 : _line, _1 : true, _2 : (null : stdgo.Error) };
                _line = __tmp__._0;
                _isPrefix = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L424"
        if ((_line.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L425"
            if (_err != null) {
                _line = (null : stdgo.Slice<stdgo.GoUInt8>);
            };
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L428"
            return { _0 : _line, _1 : _isPrefix, _2 : _err };
        };
        _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L432"
        if (_line[((_line.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((10 : stdgo.GoUInt8))) {
            var _drop = (1 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L434"
            if ((((_line.length) > (1 : stdgo.GoInt) : Bool) && (_line[((_line.length) - (2 : stdgo.GoInt) : stdgo.GoInt)] == (13 : stdgo.GoUInt8)) : Bool)) {
                _drop = (2 : stdgo.GoInt);
            };
            _line = (_line.__slice__(0, ((_line.length) - _drop : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L439"
        return { _0 : _line, _1 : _isPrefix, _2 : _err };
    }
    @:keep
    @:tdfield
    static public function readSlice( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>, _delim:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = _b;
        var _line = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        var _s = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L352"
        while (true) {
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L354"
            {
                var _i = (stdgo._internal.bytes.Bytes_indexbyte.indexByte(((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__(((@:checkr _b ?? throw "null pointer dereference")._r + _s : stdgo.GoInt), (@:checkr _b ?? throw "null pointer dereference")._w) : stdgo.Slice<stdgo.GoUInt8>), _delim) : stdgo.GoInt);
                if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                    _i = (_i + (_s) : stdgo.GoInt);
                    _line = ((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__((@:checkr _b ?? throw "null pointer dereference")._r, (((@:checkr _b ?? throw "null pointer dereference")._r + _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    (@:checkr _b ?? throw "null pointer dereference")._r = ((@:checkr _b ?? throw "null pointer dereference")._r + ((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L358"
                    break;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L362"
            if ((@:checkr _b ?? throw "null pointer dereference")._err != null) {
                _line = ((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__((@:checkr _b ?? throw "null pointer dereference")._r, (@:checkr _b ?? throw "null pointer dereference")._w) : stdgo.Slice<stdgo.GoUInt8>);
                (@:checkr _b ?? throw "null pointer dereference")._r = (@:checkr _b ?? throw "null pointer dereference")._w;
                _err = _b._readErr();
                //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L366"
                break;
            };
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L370"
            if ((_b.buffered() >= ((@:checkr _b ?? throw "null pointer dereference")._buf.length) : Bool)) {
                (@:checkr _b ?? throw "null pointer dereference")._r = (@:checkr _b ?? throw "null pointer dereference")._w;
                _line = (@:checkr _b ?? throw "null pointer dereference")._buf;
                _err = stdgo._internal.bufio.Bufio_errbufferfull.errBufferFull;
                //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L374"
                break;
            };
            _s = ((@:checkr _b ?? throw "null pointer dereference")._w - (@:checkr _b ?? throw "null pointer dereference")._r : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L379"
            _b._fill();
        };
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L383"
        {
            var _i = ((_line.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                (@:checkr _b ?? throw "null pointer dereference")._lastByte = (_line[(_i : stdgo.GoInt)] : stdgo.GoInt);
                (@:checkr _b ?? throw "null pointer dereference")._lastRuneSize = (-1 : stdgo.GoInt);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L388"
        return { _0 : _line, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function buffered( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = _b;
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L338"
        return ((@:checkr _b ?? throw "null pointer dereference")._w - (@:checkr _b ?? throw "null pointer dereference")._r : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function unreadRune( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>):stdgo.Error {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = _b;
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L328"
        if ((((@:checkr _b ?? throw "null pointer dereference")._lastRuneSize < (0 : stdgo.GoInt) : Bool) || ((@:checkr _b ?? throw "null pointer dereference")._r < (@:checkr _b ?? throw "null pointer dereference")._lastRuneSize : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L329"
            return stdgo._internal.bufio.Bufio_errinvalidunreadrune.errInvalidUnreadRune;
        };
        (@:checkr _b ?? throw "null pointer dereference")._r = ((@:checkr _b ?? throw "null pointer dereference")._r - ((@:checkr _b ?? throw "null pointer dereference")._lastRuneSize) : stdgo.GoInt);
        (@:checkr _b ?? throw "null pointer dereference")._lastByte = (-1 : stdgo.GoInt);
        (@:checkr _b ?? throw "null pointer dereference")._lastRuneSize = (-1 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L334"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function readRune( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = _b;
        var _r = (0 : stdgo.GoInt32), _size = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L306"
        while (((((((@:checkr _b ?? throw "null pointer dereference")._r + (4 : stdgo.GoInt) : stdgo.GoInt) > (@:checkr _b ?? throw "null pointer dereference")._w : Bool) && !stdgo._internal.unicode.utf8.Utf8_fullrune.fullRune(((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__((@:checkr _b ?? throw "null pointer dereference")._r, (@:checkr _b ?? throw "null pointer dereference")._w) : stdgo.Slice<stdgo.GoUInt8>)) : Bool) && (@:checkr _b ?? throw "null pointer dereference")._err == null : Bool) && (((@:checkr _b ?? throw "null pointer dereference")._w - (@:checkr _b ?? throw "null pointer dereference")._r : stdgo.GoInt) < ((@:checkr _b ?? throw "null pointer dereference")._buf.length) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L307"
            _b._fill();
        };
        (@:checkr _b ?? throw "null pointer dereference")._lastRuneSize = (-1 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L310"
        if ((@:checkr _b ?? throw "null pointer dereference")._r == ((@:checkr _b ?? throw "null pointer dereference")._w)) {
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L311"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt32), _1 : (0 : stdgo.GoInt), _2 : _b._readErr() };
                _r = __tmp__._0;
                _size = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        {
            final __tmp__0 = ((@:checkr _b ?? throw "null pointer dereference")._buf[((@:checkr _b ?? throw "null pointer dereference")._r : stdgo.GoInt)] : stdgo.GoInt32);
            final __tmp__1 = (1 : stdgo.GoInt);
            _r = @:binopAssign __tmp__0;
            _size = @:binopAssign __tmp__1;
        };
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L314"
        if ((_r >= (128 : stdgo.GoInt32) : Bool)) {
            {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__((@:checkr _b ?? throw "null pointer dereference")._r, (@:checkr _b ?? throw "null pointer dereference")._w) : stdgo.Slice<stdgo.GoUInt8>));
                _r = @:tmpset0 __tmp__._0;
                _size = @:tmpset0 __tmp__._1;
            };
        };
        (@:checkr _b ?? throw "null pointer dereference")._r = ((@:checkr _b ?? throw "null pointer dereference")._r + (_size) : stdgo.GoInt);
        (@:checkr _b ?? throw "null pointer dereference")._lastByte = ((@:checkr _b ?? throw "null pointer dereference")._buf[((@:checkr _b ?? throw "null pointer dereference")._r - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt);
        (@:checkr _b ?? throw "null pointer dereference")._lastRuneSize = _size;
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L320"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : _r, _1 : _size, _2 : (null : stdgo.Error) };
            _r = __tmp__._0;
            _size = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function unreadByte( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>):stdgo.Error {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = _b;
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L286"
        if ((((@:checkr _b ?? throw "null pointer dereference")._lastByte < (0 : stdgo.GoInt) : Bool) || ((@:checkr _b ?? throw "null pointer dereference")._r == ((0 : stdgo.GoInt)) && ((@:checkr _b ?? throw "null pointer dereference")._w > (0 : stdgo.GoInt) : Bool) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L287"
            return stdgo._internal.bufio.Bufio_errinvalidunreadbyte.errInvalidUnreadByte;
        };
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L290"
        if (((@:checkr _b ?? throw "null pointer dereference")._r > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L291"
            (@:checkr _b ?? throw "null pointer dereference")._r--;
        } else {
            (@:checkr _b ?? throw "null pointer dereference")._w = (1 : stdgo.GoInt);
        };
        (@:checkr _b ?? throw "null pointer dereference")._buf[((@:checkr _b ?? throw "null pointer dereference")._r : stdgo.GoInt)] = ((@:checkr _b ?? throw "null pointer dereference")._lastByte : stdgo.GoUInt8);
        (@:checkr _b ?? throw "null pointer dereference")._lastByte = (-1 : stdgo.GoInt);
        (@:checkr _b ?? throw "null pointer dereference")._lastRuneSize = (-1 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L299"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function readByte( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = _b;
        (@:checkr _b ?? throw "null pointer dereference")._lastRuneSize = (-1 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L268"
        while ((@:checkr _b ?? throw "null pointer dereference")._r == ((@:checkr _b ?? throw "null pointer dereference")._w)) {
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L269"
            if ((@:checkr _b ?? throw "null pointer dereference")._err != null) {
                //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L270"
                return { _0 : (0 : stdgo.GoUInt8), _1 : _b._readErr() };
            };
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L272"
            _b._fill();
        };
        var _c = ((@:checkr _b ?? throw "null pointer dereference")._buf[((@:checkr _b ?? throw "null pointer dereference")._r : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L275"
        (@:checkr _b ?? throw "null pointer dereference")._r++;
        (@:checkr _b ?? throw "null pointer dereference")._lastByte = (_c : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L277"
        return { _0 : _c, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function read( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = _b;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        _n = (_p.length);
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L217"
        if (_n == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L218"
            if ((_b.buffered() > (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L219"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L221"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _b._readErr() };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L223"
        if ((@:checkr _b ?? throw "null pointer dereference")._r == ((@:checkr _b ?? throw "null pointer dereference")._w)) {
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L224"
            if ((@:checkr _b ?? throw "null pointer dereference")._err != null) {
                //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L225"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _b._readErr() };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L227"
            if (((_p.length) >= ((@:checkr _b ?? throw "null pointer dereference")._buf.length) : Bool)) {
                {
                    var __tmp__ = (@:checkr _b ?? throw "null pointer dereference")._rd.read(_p);
                    _n = @:tmpset0 __tmp__._0;
                    (@:checkr _b ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
                };
                //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L231"
                if ((_n < (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L232"
                    throw stdgo.Go.toInterface(stdgo._internal.bufio.Bufio__errnegativeread._errNegativeRead);
                };
                //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L234"
                if ((_n > (0 : stdgo.GoInt) : Bool)) {
                    (@:checkr _b ?? throw "null pointer dereference")._lastByte = (_p[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt);
                    (@:checkr _b ?? throw "null pointer dereference")._lastRuneSize = (-1 : stdgo.GoInt);
                };
                //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L238"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _b._readErr() };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            (@:checkr _b ?? throw "null pointer dereference")._r = (0 : stdgo.GoInt);
            (@:checkr _b ?? throw "null pointer dereference")._w = (0 : stdgo.GoInt);
            {
                var __tmp__ = (@:checkr _b ?? throw "null pointer dereference")._rd.read((@:checkr _b ?? throw "null pointer dereference")._buf);
                _n = @:tmpset0 __tmp__._0;
                (@:checkr _b ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L245"
            if ((_n < (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L246"
                throw stdgo.Go.toInterface(stdgo._internal.bufio.Bufio__errnegativeread._errNegativeRead);
            };
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L248"
            if (_n == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L249"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _b._readErr() };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            (@:checkr _b ?? throw "null pointer dereference")._w = ((@:checkr _b ?? throw "null pointer dereference")._w + (_n) : stdgo.GoInt);
        };
        _n = _p.__copyTo__(((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__((@:checkr _b ?? throw "null pointer dereference")._r, (@:checkr _b ?? throw "null pointer dereference")._w) : stdgo.Slice<stdgo.GoUInt8>));
        (@:checkr _b ?? throw "null pointer dereference")._r = ((@:checkr _b ?? throw "null pointer dereference")._r + (_n) : stdgo.GoInt);
        (@:checkr _b ?? throw "null pointer dereference")._lastByte = ((@:checkr _b ?? throw "null pointer dereference")._buf[((@:checkr _b ?? throw "null pointer dereference")._r - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt);
        (@:checkr _b ?? throw "null pointer dereference")._lastRuneSize = (-1 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L261"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function discard( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>, _n:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = _b;
        var _discarded = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L177"
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L178"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.bufio.Bufio_errnegativecount.errNegativeCount };
                _discarded = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L180"
        if (_n == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L181"
            return { _0 : _discarded, _1 : _err };
        };
        (@:checkr _b ?? throw "null pointer dereference")._lastByte = (-1 : stdgo.GoInt);
        (@:checkr _b ?? throw "null pointer dereference")._lastRuneSize = (-1 : stdgo.GoInt);
        var _remain = (_n : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L188"
        while (true) {
            var _skip = (_b.buffered() : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L190"
            if (_skip == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L191"
                _b._fill();
                _skip = _b.buffered();
            };
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L194"
            if ((_skip > _remain : Bool)) {
                _skip = _remain;
            };
            (@:checkr _b ?? throw "null pointer dereference")._r = ((@:checkr _b ?? throw "null pointer dereference")._r + (_skip) : stdgo.GoInt);
            _remain = (_remain - (_skip) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L199"
            if (_remain == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L200"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                    _discarded = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L202"
            if ((@:checkr _b ?? throw "null pointer dereference")._err != null) {
                //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L203"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (_n - _remain : stdgo.GoInt), _1 : _b._readErr() };
                    _discarded = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function peek( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>, _n:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = _b;
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L143"
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L144"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.bufio.Bufio_errnegativecount.errNegativeCount };
        };
        (@:checkr _b ?? throw "null pointer dereference")._lastByte = (-1 : stdgo.GoInt);
        (@:checkr _b ?? throw "null pointer dereference")._lastRuneSize = (-1 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L150"
        while ((((((@:checkr _b ?? throw "null pointer dereference")._w - (@:checkr _b ?? throw "null pointer dereference")._r : stdgo.GoInt) < _n : Bool) && (((@:checkr _b ?? throw "null pointer dereference")._w - (@:checkr _b ?? throw "null pointer dereference")._r : stdgo.GoInt) < ((@:checkr _b ?? throw "null pointer dereference")._buf.length) : Bool) : Bool) && ((@:checkr _b ?? throw "null pointer dereference")._err == null) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L151"
            _b._fill();
        };
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L154"
        if ((_n > ((@:checkr _b ?? throw "null pointer dereference")._buf.length) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L155"
            return { _0 : ((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__((@:checkr _b ?? throw "null pointer dereference")._r, (@:checkr _b ?? throw "null pointer dereference")._w) : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.bufio.Bufio_errbufferfull.errBufferFull };
        };
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L160"
        {
            var _avail = ((@:checkr _b ?? throw "null pointer dereference")._w - (@:checkr _b ?? throw "null pointer dereference")._r : stdgo.GoInt);
            if ((_avail < _n : Bool)) {
                _n = _avail;
                _err = _b._readErr();
                //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L164"
                if (_err == null) {
                    _err = stdgo._internal.bufio.Bufio_errbufferfull.errBufferFull;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L168"
        return { _0 : ((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__((@:checkr _b ?? throw "null pointer dereference")._r, ((@:checkr _b ?? throw "null pointer dereference")._r + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
    }
    @:keep
    @:tdfield
    static public function _readErr( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>):stdgo.Error {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = _b;
        var _err = ((@:checkr _b ?? throw "null pointer dereference")._err : stdgo.Error);
        (@:checkr _b ?? throw "null pointer dereference")._err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L132"
        return _err;
    }
    @:keep
    @:tdfield
    static public function _fill( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = _b;
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L101"
        if (((@:checkr _b ?? throw "null pointer dereference")._r > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L102"
            (@:checkr _b ?? throw "null pointer dereference")._buf.__copyTo__(((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__((@:checkr _b ?? throw "null pointer dereference")._r, (@:checkr _b ?? throw "null pointer dereference")._w) : stdgo.Slice<stdgo.GoUInt8>));
            (@:checkr _b ?? throw "null pointer dereference")._w = ((@:checkr _b ?? throw "null pointer dereference")._w - ((@:checkr _b ?? throw "null pointer dereference")._r) : stdgo.GoInt);
            (@:checkr _b ?? throw "null pointer dereference")._r = (0 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L107"
        if (((@:checkr _b ?? throw "null pointer dereference")._w >= ((@:checkr _b ?? throw "null pointer dereference")._buf.length) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L108"
            throw stdgo.Go.toInterface(("bufio: tried to fill full buffer" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L112"
        {
            var _i = (100 : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                var __tmp__ = (@:checkr _b ?? throw "null pointer dereference")._rd.read(((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__((@:checkr _b ?? throw "null pointer dereference")._w) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
//"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L114"
                if ((_n < (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L115"
                    throw stdgo.Go.toInterface(stdgo._internal.bufio.Bufio__errnegativeread._errNegativeRead);
                };
(@:checkr _b ?? throw "null pointer dereference")._w = ((@:checkr _b ?? throw "null pointer dereference")._w + (_n) : stdgo.GoInt);
//"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L118"
                if (_err != null) {
                    (@:checkr _b ?? throw "null pointer dereference")._err = _err;
                    //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L120"
                    return;
                };
//"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L122"
                if ((_n > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L123"
                    return;
                };
                _i--;
            };
        };
        (@:checkr _b ?? throw "null pointer dereference")._err = stdgo._internal.io.Io_errnoprogress.errNoProgress;
    }
    @:keep
    @:tdfield
    static public function _reset( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>, _buf:stdgo.Slice<stdgo.GoUInt8>, _r:stdgo._internal.io.Io_reader.Reader):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = _b;
        {
            var __tmp__ = ({ _buf : _buf, _rd : _r, _lastByte : (-1 : stdgo.GoInt), _lastRuneSize : (-1 : stdgo.GoInt) } : stdgo._internal.bufio.Bufio_reader.Reader);
            var x = (_b : stdgo._internal.bufio.Bufio_reader.Reader);
            x._buf = __tmp__?._buf;
            x._rd = __tmp__?._rd;
            x._r = __tmp__?._r;
            x._w = __tmp__?._w;
            x._err = __tmp__?._err;
            x._lastByte = __tmp__?._lastByte;
            x._lastRuneSize = __tmp__?._lastRuneSize;
        };
    }
    @:keep
    @:tdfield
    static public function reset( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>, _r:stdgo._internal.io.Io_reader.Reader):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = _b;
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L78"
        if (stdgo.Go.toInterface(stdgo.Go.asInterface(_b)) == (stdgo.Go.toInterface(_r))) {
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L79"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L81"
        if ((@:checkr _b ?? throw "null pointer dereference")._buf == null) {
            (@:checkr _b ?? throw "null pointer dereference")._buf = (new stdgo.Slice<stdgo.GoUInt8>((4096 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L84"
        _b._reset((@:checkr _b ?? throw "null pointer dereference")._buf, _r);
    }
    @:keep
    @:tdfield
    static public function size( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = _b;
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L67"
        return ((@:checkr _b ?? throw "null pointer dereference")._buf.length);
    }
}
