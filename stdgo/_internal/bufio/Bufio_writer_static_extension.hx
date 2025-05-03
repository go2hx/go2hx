package stdgo._internal.bufio;
@:keep @:allow(stdgo._internal.bufio.Bufio.Writer_asInterface) class Writer_static_extension {
    @:keep
    @:tdfield
    static public function readFrom( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>, _r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer> = _b;
        var _n = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L785"
        if ((@:checkr _b ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L786"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : (0i64 : stdgo.GoInt64), _1 : (@:checkr _b ?? throw "null pointer dereference")._err };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _b ?? throw "null pointer dereference")._wr) : stdgo._internal.io.Io_readerfrom.ReaderFrom)) : stdgo._internal.io.Io_readerfrom.ReaderFrom), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.io.Io_readerfrom.ReaderFrom), _1 : false };
        }, _readerFrom = __tmp__._0, _readerFromOK = __tmp__._1;
        var _m:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L790"
        while (true) {
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L791"
            if (_b.available() == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L792"
                {
                    var _err1 = (_b.flush() : stdgo.Error);
                    if (_err1 != null) {
                        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L793"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err1 };
                            _n = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L796"
            if ((_readerFromOK && (_b.buffered() == (0 : stdgo.GoInt)) : Bool)) {
                var __tmp__ = _readerFrom.readFrom(_r), _nn:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                (@:checkr _b ?? throw "null pointer dereference")._err = _err;
                _n = (_n + (_nn) : stdgo.GoInt64);
                //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L800"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            var _nr = (0 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L803"
            while ((_nr < (100 : stdgo.GoInt) : Bool)) {
                {
                    var __tmp__ = _r.read(((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__((@:checkr _b ?? throw "null pointer dereference")._n) : stdgo.Slice<stdgo.GoUInt8>));
                    _m = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L805"
                if (((_m != (0 : stdgo.GoInt)) || (_err != null) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L806"
                    break;
                };
                //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L808"
                _nr++;
            };
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L810"
            if (_nr == ((100 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L811"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo._internal.io.Io_errnoprogress.errNoProgress };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            (@:checkr _b ?? throw "null pointer dereference")._n = ((@:checkr _b ?? throw "null pointer dereference")._n + (_m) : stdgo.GoInt);
            _n = (_n + ((_m : stdgo.GoInt64)) : stdgo.GoInt64);
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L815"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L816"
                break;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L819"
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L821"
            if (_b.available() == ((0 : stdgo.GoInt))) {
                _err = _b.flush();
            } else {
                _err = (null : stdgo.Error);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L827"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function writeString( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer> = _b;
        var _sw:stdgo._internal.io.Io_stringwriter.StringWriter = (null : stdgo._internal.io.Io_stringwriter.StringWriter);
        var _tryStringWriter = (true : Bool);
        var _nn = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L752"
        while ((((_s.length) > _b.available() : Bool) && ((@:checkr _b ?? throw "null pointer dereference")._err == null) : Bool)) {
            var _n:stdgo.GoInt = (0 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L754"
            if (((_b.buffered() == ((0 : stdgo.GoInt)) && _sw == null : Bool) && _tryStringWriter : Bool)) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _b ?? throw "null pointer dereference")._wr) : stdgo._internal.io.Io_stringwriter.StringWriter)) : stdgo._internal.io.Io_stringwriter.StringWriter), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo._internal.io.Io_stringwriter.StringWriter), _1 : false };
                    };
                    _sw = @:tmpset0 __tmp__._0;
                    _tryStringWriter = @:tmpset0 __tmp__._1;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L758"
            if (((_b.buffered() == (0 : stdgo.GoInt)) && _tryStringWriter : Bool)) {
                {
                    var __tmp__ = _sw.writeString(_s?.__copy__());
                    _n = @:tmpset0 __tmp__._0;
                    (@:checkr _b ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
                };
            } else {
                _n = ((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__((@:checkr _b ?? throw "null pointer dereference")._n) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_s);
                (@:checkr _b ?? throw "null pointer dereference")._n = ((@:checkr _b ?? throw "null pointer dereference")._n + (_n) : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L766"
                _b.flush();
            };
            _nn = (_nn + (_n) : stdgo.GoInt);
            _s = (_s.__slice__(_n) : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L771"
        if ((@:checkr _b ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L772"
            return { _0 : _nn, _1 : (@:checkr _b ?? throw "null pointer dereference")._err };
        };
        var _n = (((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__((@:checkr _b ?? throw "null pointer dereference")._n) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_s) : stdgo.GoInt);
        (@:checkr _b ?? throw "null pointer dereference")._n = ((@:checkr _b ?? throw "null pointer dereference")._n + (_n) : stdgo.GoInt);
        _nn = (_nn + (_n) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L777"
        return { _0 : _nn, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function writeRune( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>, _r:stdgo.GoInt32):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer> = _b;
        var _size = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L717"
        if (((_r : stdgo.GoUInt32) < (128u32 : stdgo.GoUInt32) : Bool)) {
            _err = _b.writeByte((_r : stdgo.GoUInt8));
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L719"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L720"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _err };
                    _size = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L722"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (1 : stdgo.GoInt), _1 : (null : stdgo.Error) };
                _size = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L724"
        if ((@:checkr _b ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L725"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _b ?? throw "null pointer dereference")._err };
                _size = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _n = (_b.available() : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L728"
        if ((_n < (4 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L729"
            {
                _b.flush();
                if ((@:checkr _b ?? throw "null pointer dereference")._err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L730"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _b ?? throw "null pointer dereference")._err };
                        _size = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            _n = _b.available();
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L733"
            if ((_n < (4 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L735"
                return _b.writeString((_r : stdgo.GoString)?.__copy__());
            };
        };
        _size = stdgo._internal.unicode.utf8.Utf8_encoderune.encodeRune(((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__((@:checkr _b ?? throw "null pointer dereference")._n) : stdgo.Slice<stdgo.GoUInt8>), _r);
        (@:checkr _b ?? throw "null pointer dereference")._n = ((@:checkr _b ?? throw "null pointer dereference")._n + (_size) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L740"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _size, _1 : (null : stdgo.Error) };
            _size = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function writeByte( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>, _c:stdgo.GoUInt8):stdgo.Error {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer> = _b;
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L702"
        if ((@:checkr _b ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L703"
            return (@:checkr _b ?? throw "null pointer dereference")._err;
        };
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L705"
        if (((_b.available() <= (0 : stdgo.GoInt) : Bool) && (_b.flush() != null) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L706"
            return (@:checkr _b ?? throw "null pointer dereference")._err;
        };
        (@:checkr _b ?? throw "null pointer dereference")._buf[((@:checkr _b ?? throw "null pointer dereference")._n : stdgo.GoInt)] = _c;
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L709"
        (@:checkr _b ?? throw "null pointer dereference")._n++;
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L710"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function write( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer> = _b;
        var _nn = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L677"
        while ((((_p.length) > _b.available() : Bool) && ((@:checkr _b ?? throw "null pointer dereference")._err == null) : Bool)) {
            var _n:stdgo.GoInt = (0 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L679"
            if (_b.buffered() == ((0 : stdgo.GoInt))) {
                {
                    var __tmp__ = (@:checkr _b ?? throw "null pointer dereference")._wr.write(_p);
                    _n = @:tmpset0 __tmp__._0;
                    (@:checkr _b ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
                };
            } else {
                _n = ((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__((@:checkr _b ?? throw "null pointer dereference")._n) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_p);
                (@:checkr _b ?? throw "null pointer dereference")._n = ((@:checkr _b ?? throw "null pointer dereference")._n + (_n) : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L686"
                _b.flush();
            };
            _nn = (_nn + (_n) : stdgo.GoInt);
            _p = (_p.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L691"
        if ((@:checkr _b ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L692"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _nn, _1 : (@:checkr _b ?? throw "null pointer dereference")._err };
                _nn = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _n = (((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__((@:checkr _b ?? throw "null pointer dereference")._n) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_p) : stdgo.GoInt);
        (@:checkr _b ?? throw "null pointer dereference")._n = ((@:checkr _b ?? throw "null pointer dereference")._n + (_n) : stdgo.GoInt);
        _nn = (_nn + (_n) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L697"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _nn, _1 : (null : stdgo.Error) };
            _nn = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function buffered( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer> = _b;
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L670"
        return (@:checkr _b ?? throw "null pointer dereference")._n;
    }
    @:keep
    @:tdfield
    static public function availableBuffer( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer> = _b;
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L666"
        return (((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__((@:checkr _b ?? throw "null pointer dereference")._n) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function available( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer> = _b;
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L659"
        return (((@:checkr _b ?? throw "null pointer dereference")._buf.length) - (@:checkr _b ?? throw "null pointer dereference")._n : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function flush( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>):stdgo.Error {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer> = _b;
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L636"
        if ((@:checkr _b ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L637"
            return (@:checkr _b ?? throw "null pointer dereference")._err;
        };
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L639"
        if ((@:checkr _b ?? throw "null pointer dereference")._n == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L640"
            return (null : stdgo.Error);
        };
        var __tmp__ = (@:checkr _b ?? throw "null pointer dereference")._wr.write(((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__((0 : stdgo.GoInt), (@:checkr _b ?? throw "null pointer dereference")._n) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L643"
        if (((_n < (@:checkr _b ?? throw "null pointer dereference")._n : Bool) && (_err == null) : Bool)) {
            _err = stdgo._internal.io.Io_errshortwrite.errShortWrite;
        };
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L646"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L647"
            if (((_n > (0 : stdgo.GoInt) : Bool) && (_n < (@:checkr _b ?? throw "null pointer dereference")._n : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L648"
                ((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__((0 : stdgo.GoInt), ((@:checkr _b ?? throw "null pointer dereference")._n - _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__(_n, (@:checkr _b ?? throw "null pointer dereference")._n) : stdgo.Slice<stdgo.GoUInt8>));
            };
            (@:checkr _b ?? throw "null pointer dereference")._n = ((@:checkr _b ?? throw "null pointer dereference")._n - (_n) : stdgo.GoInt);
            (@:checkr _b ?? throw "null pointer dereference")._err = _err;
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L652"
            return _err;
        };
        (@:checkr _b ?? throw "null pointer dereference")._n = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L655"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function reset( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>, _w:stdgo._internal.io.Io_writer.Writer):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer> = _b;
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L623"
        if (stdgo.Go.toInterface(stdgo.Go.asInterface(_b)) == (stdgo.Go.toInterface(_w))) {
            //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L624"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L626"
        if ((@:checkr _b ?? throw "null pointer dereference")._buf == null) {
            (@:checkr _b ?? throw "null pointer dereference")._buf = (new stdgo.Slice<stdgo.GoUInt8>((4096 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        (@:checkr _b ?? throw "null pointer dereference")._err = (null : stdgo.Error);
        (@:checkr _b ?? throw "null pointer dereference")._n = (0 : stdgo.GoInt);
        (@:checkr _b ?? throw "null pointer dereference")._wr = _w;
    }
    @:keep
    @:tdfield
    static public function size( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer> = _b;
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L612"
        return ((@:checkr _b ?? throw "null pointer dereference")._buf.length);
    }
}
