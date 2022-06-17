package stdgo.compress.flate_test;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
function example_reset():Void {
        var _proverbs:Slice<GoString> = ((new Slice<GoString>(((("Don\'t communicate by sharing memory, share memory by communicating.\n" : GoString))), ((("Concurrency is not parallelism.\n" : GoString))), ((("The bigger the interface, the weaker the abstraction.\n" : GoString))), ((("Documentation is for users.\n" : GoString)))) : Slice<GoString>));
        var _r:stdgo.strings.Strings.Reader = new stdgo.strings.Strings.Reader();
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((32768 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var __tmp__ = stdgo.compress.flate.Flate.newWriter(((null : stdgo.io.Io.Writer)), ((-1 : GoInt))), _zw:Ref<Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo.log.Log.fatal(Go.toInterface(_err));
        };
        var _zr:stdgo.io.Io.ReadCloser = stdgo.compress.flate.Flate.newReader(((null : stdgo.io.Io.Reader)));
        for (_0 => _s in _proverbs) {
            _r.reset(_s);
            _b.reset();
            _zw.reset(_b);
            {
                var __tmp__ = stdgo.io.Io.copyBuffer(_zw, _r, _buf), _1:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    stdgo.log.Log.fatal(Go.toInterface(_err));
                };
            };
            {
                var _err:stdgo.Error = _zw.close();
                if (_err != null) {
                    stdgo.log.Log.fatal(Go.toInterface(_err));
                };
            };
            {
                var _err:stdgo.Error = ((((_zr.__underlying__().value : Dynamic)) : Resetter)).reset(_b, ((null : Slice<GoUInt8>)));
                if (_err != null) {
                    stdgo.log.Log.fatal(Go.toInterface(_err));
                };
            };
            {
                var __tmp__ = stdgo.io.Io.copyBuffer(stdgo.os.Os.stdout, _zr, _buf), _2:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    stdgo.log.Log.fatal(Go.toInterface(_err));
                };
            };
            {
                var _err:stdgo.Error = _zr.close();
                if (_err != null) {
                    stdgo.log.Log.fatal(Go.toInterface(_err));
                };
            };
        };
    }
function example_dictionary():Void {
        {};
        {};
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var __tmp__ = stdgo.compress.flate.Flate.newWriterDict(_b, ((-1 : GoInt)), ((((("<?xml version=\"1.0\"?><book><data><meta name=\"\" content=\"" : GoString))) : Slice<GoByte>))), _zw:Ref<Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo.log.Log.fatal(Go.toInterface(_err));
        };
        {
            var __tmp__ = stdgo.io.Io.copy(_zw, stdgo.strings.Strings.newReader(((("<?xml version=\"1.0\"?>\n<book>\n\t<meta name=\"title\" content=\"The Go Programming Language\"/>\n\t<meta name=\"authors\" content=\"Alan Donovan and Brian Kernighan\"/>\n\t<meta name=\"published\" content=\"2015-10-26\"/>\n\t<meta name=\"isbn\" content=\"978-0134190440\"/>\n\t<data>...</data>\n</book>\n" : GoString))))), _0:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = _zw.close();
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
        stdgo.fmt.Fmt.println(((("Decompressed output using the dictionary:" : GoString))));
        var _zr:stdgo.io.Io.ReadCloser = stdgo.compress.flate.Flate.newReaderDict(stdgo.bytes.Bytes.newReader(_b.bytes()), ((((("<?xml version=\"1.0\"?><book><data><meta name=\"\" content=\"" : GoString))) : Slice<GoByte>)));
        {
            var __tmp__ = stdgo.io.Io.copy(stdgo.os.Os.stdout, _zr), _1:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = _zr.close();
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
        stdgo.fmt.Fmt.println();
        stdgo.fmt.Fmt.println(((("Substrings matched by the dictionary are marked with #:" : GoString))));
        var _hashDict:Slice<GoUInt8> = ((((("<?xml version=\"1.0\"?><book><data><meta name=\"\" content=\"" : GoString))) : Slice<GoByte>));
        for (_i => _ in _hashDict) {
            if (_hashDict != null) _hashDict[_i] = ((((("#" : GoString))).code : GoRune));
        };
        _zr = stdgo.compress.flate.Flate.newReaderDict(_b, _hashDict);
        {
            var __tmp__ = stdgo.io.Io.copy(stdgo.os.Os.stdout, _zr), _2:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = _zr.close();
            if (_err != null) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
    }
function example_synchronization():Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _wg:stdgo.sync.Sync.WaitGroup = new stdgo.sync.Sync.WaitGroup();
            __deferstack__.unshift(() -> _wg.wait());
            var __tmp__ = stdgo.io.Io.pipe(), _rp:Ref<stdgo.io.Io.PipeReader> = __tmp__._0, _wp:Ref<stdgo.io.Io.PipeWriter> = __tmp__._1;
            _wg.add(((1 : GoInt)));
            Go.routine(() -> {
                var a = function():Void {
                    __deferstack__.unshift(() -> _wg.done());
                    var __tmp__ = stdgo.compress.flate.Flate.newWriter(_wp, ((1 : GoInt))), _zw:Ref<Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        stdgo.log.Log.fatal(Go.toInterface(_err));
                    };
                    var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((256 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
                    for (_0 => _m in stdgo.strings.Strings.fields(((("A long time ago in a galaxy far, far away..." : GoString))))) {
                        if (_b != null) _b[((0 : GoInt))] = ((Go.copySlice(((_b.__slice__(((1 : GoInt))) : Slice<GoUInt8>)), _m) : GoUInt8));
                        {
                            var __tmp__ = _zw.write(((_b.__slice__(0, ((1 : GoInt)) + (_m != null ? _m.length : ((0 : GoInt)))) : Slice<GoUInt8>))), _1:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                stdgo.log.Log.fatal(Go.toInterface(_err));
                            };
                        };
                        {
                            var _err:stdgo.Error = _zw.flush();
                            if (_err != null) {
                                stdgo.log.Log.fatal(Go.toInterface(_err));
                            };
                        };
                    };
                    {
                        var _err:stdgo.Error = _zw.close();
                        if (_err != null) {
                            stdgo.log.Log.fatal(Go.toInterface(_err));
                        };
                    };
                };
                a();
            });
            _wg.add(((1 : GoInt)));
            Go.routine(() -> {
                var a = function():Void {
                    __deferstack__.unshift(() -> _wg.done());
                    var _zr:stdgo.io.Io.ReadCloser = stdgo.compress.flate.Flate.newReader(_rp);
                    var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((256 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
                    while (true) {
                        {
                            var __tmp__ = stdgo.io.Io.readFull(_zr, ((_b.__slice__(0, ((1 : GoInt))) : Slice<GoUInt8>))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                if (_err == stdgo.io.Io.eof) {
                                    break;
                                };
                                stdgo.log.Log.fatal(Go.toInterface(_err));
                            };
                        };
                        var _n:GoInt = (((_b != null ? _b[((0 : GoInt))] : ((0 : GoUInt8))) : GoInt));
                        {
                            var __tmp__ = stdgo.io.Io.readFull(_zr, ((_b.__slice__(0, _n) : Slice<GoUInt8>))), _1:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                stdgo.log.Log.fatal(Go.toInterface(_err));
                            };
                        };
                        stdgo.fmt.Fmt.printf(((("Received %d bytes: %s\n" : GoString))), Go.toInterface(_n), Go.toInterface(((_b.__slice__(0, _n) : Slice<GoUInt8>))));
                    };
                    stdgo.fmt.Fmt.println();
                    {
                        var _err:stdgo.Error = _zr.close();
                        if (_err != null) {
                            stdgo.log.Log.fatal(Go.toInterface(_err));
                        };
                    };
                };
                a();
            });
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
