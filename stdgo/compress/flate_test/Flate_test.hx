package stdgo.compress.flate_test;
import stdgo.compress.flate.Flate;
/**
    // In performance critical applications, Reset can be used to discard the
    // current compressor or decompressor state and reinitialize them quickly
    // by taking advantage of previously allocated memory.
**/
function example_reset():Void {
        var _proverbs = (new stdgo.Slice<stdgo.GoString>(4, 4, ("Don\'t communicate by sharing memory, share memory by communicating.\n" : stdgo.GoString), ("Concurrency is not parallelism.\n" : stdgo.GoString), ("The bigger the interface, the weaker the abstraction.\n" : stdgo.GoString), ("Documentation is for users.\n" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        var _r:stdgo.strings.Strings.Reader = ({} : stdgo.strings.Strings.Reader);
        var _b:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        var _buf = new stdgo.Slice<stdgo.GoUInt8>((32768 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        var __tmp__ = stdgo.compress.flate.Flate.newWriter((null : stdgo.io.Io.Writer), (-1 : stdgo.GoInt)), _zw:stdgo.Ref<stdgo.compress.flate.Flate.Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo.log.Log.fatal(stdgo.Go.toInterface(_err));
        };
        var _zr:stdgo.io.Io.ReadCloser = stdgo.compress.flate.Flate.newReader((null : stdgo.io.Io.Reader));
        for (__0 => _s in _proverbs) {
            _r.reset(_s?.__copy__());
            _b.reset();
            _zw.reset(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo.bytes.Bytes.Buffer>)));
            {
                var __tmp__ = stdgo.io.Io.copyBuffer(stdgo.Go.asInterface(_zw), stdgo.Go.asInterface((stdgo.Go.setRef(_r) : stdgo.Ref<stdgo.strings.Strings.Reader>)), _buf), __1:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    stdgo.log.Log.fatal(stdgo.Go.toInterface(_err));
                };
            };
            {
                var _err:stdgo.Error = _zw.close();
                if (_err != null) {
                    stdgo.log.Log.fatal(stdgo.Go.toInterface(_err));
                };
            };
            {
                var _err:stdgo.Error = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_zr) : stdgo.compress.flate.Flate.Resetter)) : stdgo.compress.flate.Flate.Resetter).reset(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo.bytes.Bytes.Buffer>)), (null : stdgo.Slice<stdgo.GoUInt8>));
                if (_err != null) {
                    stdgo.log.Log.fatal(stdgo.Go.toInterface(_err));
                };
            };
            {
                var __tmp__ = stdgo.io.Io.copyBuffer(stdgo.Go.asInterface(stdgo.os.Os.stdout), _zr, _buf), __2:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    stdgo.log.Log.fatal(stdgo.Go.toInterface(_err));
                };
            };
            {
                var _err:stdgo.Error = _zr.close();
                if (_err != null) {
                    stdgo.log.Log.fatal(stdgo.Go.toInterface(_err));
                };
            };
        };
    }
/**
    // A preset dictionary can be used to improve the compression ratio.
    // The downside to using a dictionary is that the compressor and decompressor
    // must agree in advance what dictionary to use.
**/
function example_dictionary():Void {
        {};
        {};
        var _b:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        var __tmp__ = stdgo.compress.flate.Flate.newWriterDict(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo.bytes.Bytes.Buffer>)), (-1 : stdgo.GoInt), (("<?xml version=\"1.0\"?><book><data><meta name=\"\" content=\"" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), _zw:stdgo.Ref<stdgo.compress.flate.Flate.Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo.log.Log.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = stdgo.io.Io.copy(stdgo.Go.asInterface(_zw), stdgo.Go.asInterface(stdgo.strings.Strings.newReader(("<?xml version=\"1.0\"?>\n<book>\n\t<meta name=\"title\" content=\"The Go Programming Language\"/>\n\t<meta name=\"authors\" content=\"Alan Donovan and Brian Kernighan\"/>\n\t<meta name=\"published\" content=\"2015-10-26\"/>\n\t<meta name=\"isbn\" content=\"978-0134190440\"/>\n\t<data>...</data>\n</book>\n" : stdgo.GoString)))), __0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = _zw.close();
            if (_err != null) {
                stdgo.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
        };
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("Decompressed output using the dictionary:" : stdgo.GoString)));
        var _zr:stdgo.io.Io.ReadCloser = stdgo.compress.flate.Flate.newReaderDict(stdgo.Go.asInterface(stdgo.bytes.Bytes.newReader(_b.bytes())), (("<?xml version=\"1.0\"?><book><data><meta name=\"\" content=\"" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        {
            var __tmp__ = stdgo.io.Io.copy(stdgo.Go.asInterface(stdgo.os.Os.stdout), _zr), __1:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = _zr.close();
            if (_err != null) {
                stdgo.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
        };
        stdgo.fmt.Fmt.println();
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("Substrings matched by the dictionary are marked with #:" : stdgo.GoString)));
        var _hashDict = (("<?xml version=\"1.0\"?><book><data><meta name=\"\" content=\"" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        for (_i => _ in _hashDict) {
            _hashDict[(_i : stdgo.GoInt)] = (35 : stdgo.GoUInt8);
        };
        _zr = stdgo.compress.flate.Flate.newReaderDict(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo.bytes.Bytes.Buffer>)), _hashDict);
        {
            var __tmp__ = stdgo.io.Io.copy(stdgo.Go.asInterface(stdgo.os.Os.stdout), _zr), __2:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = _zr.close();
            if (_err != null) {
                stdgo.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
/**
    // DEFLATE is suitable for transmitting compressed data across the network.
**/
function example_synchronization():Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _wg:stdgo.sync.Sync.WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
            __deferstack__.unshift(() -> _wg.wait_());
            var __tmp__ = stdgo.io.Io.pipe(), _rp:stdgo.Ref<stdgo.io.Io.PipeReader> = __tmp__._0, _wp:stdgo.Ref<stdgo.io.Io.PipeWriter> = __tmp__._1;
            _wg.add((1 : stdgo.GoInt));
            stdgo.Go.routine(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        __deferstack__.unshift(() -> _wg.done());
                        var __tmp__ = stdgo.compress.flate.Flate.newWriter(stdgo.Go.asInterface(_wp), (1 : stdgo.GoInt)), _zw:stdgo.Ref<stdgo.compress.flate.Flate.Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            stdgo.log.Log.fatal(stdgo.Go.toInterface(_err));
                        };
                        var _b = new stdgo.Slice<stdgo.GoUInt8>((256 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
                        for (__12 => _m in stdgo.strings.Strings.fields(("A long time ago in a galaxy far, far away..." : stdgo.GoString))) {
                            _b[(0 : stdgo.GoInt)] = (stdgo.Go.copySlice((_b.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _m) : stdgo.GoUInt8);
                            {
                                var __tmp__ = _zw.write((_b.__slice__(0, (1 : stdgo.GoInt) + (_m.length)) : stdgo.Slice<stdgo.GoUInt8>)), __13:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                if (_err != null) {
                                    stdgo.log.Log.fatal(stdgo.Go.toInterface(_err));
                                };
                            };
                            {
                                var _err:stdgo.Error = _zw.flush();
                                if (_err != null) {
                                    stdgo.log.Log.fatal(stdgo.Go.toInterface(_err));
                                };
                            };
                        };
                        {
                            var _err:stdgo.Error = _zw.close();
                            if (_err != null) {
                                stdgo.log.Log.fatal(stdgo.Go.toInterface(_err));
                            };
                        };
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                            return;
                        };
                    } catch(__exception__) {
                        var exe:Dynamic = __exception__.native;
                        if ((exe is haxe.ValueException)) exe = exe.value;
                        if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                            exe = stdgo.Go.toInterface(__exception__.message);
                        };
                        stdgo.Go.recover_exception = exe;
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return;
                    };
                };
                a();
            });
            _wg.add((1 : stdgo.GoInt));
            stdgo.Go.routine(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        __deferstack__.unshift(() -> _wg.done());
                        var _zr:stdgo.io.Io.ReadCloser = stdgo.compress.flate.Flate.newReader(stdgo.Go.asInterface(_rp));
                        var _b = new stdgo.Slice<stdgo.GoUInt8>((256 : stdgo.GoInt).toBasic(), 0).__setNumber32__();
                        while (true) {
                            {
                                var __tmp__ = stdgo.io.Io.readFull(_zr, (_b.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __16:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                if (_err != null) {
                                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo.io.Io.eof))) {
                                        break;
                                    };
                                    stdgo.log.Log.fatal(stdgo.Go.toInterface(_err));
                                };
                            };
                            var _n:stdgo.GoInt = (_b[(0 : stdgo.GoInt)] : stdgo.GoInt);
                            {
                                var __tmp__ = stdgo.io.Io.readFull(_zr, (_b.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>)), __17:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                if (_err != null) {
                                    stdgo.log.Log.fatal(stdgo.Go.toInterface(_err));
                                };
                            };
                            stdgo.fmt.Fmt.printf(("Received %d bytes: %s\n" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_b.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>)));
                        };
                        stdgo.fmt.Fmt.println();
                        {
                            var _err:stdgo.Error = _zr.close();
                            if (_err != null) {
                                stdgo.log.Log.fatal(stdgo.Go.toInterface(_err));
                            };
                        };
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                            return;
                        };
                    } catch(__exception__) {
                        var exe:Dynamic = __exception__.native;
                        if ((exe is haxe.ValueException)) exe = exe.value;
                        if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                            exe = stdgo.Go.toInterface(__exception__.message);
                        };
                        stdgo.Go.recover_exception = exe;
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return;
                    };
                };
                a();
            });
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
