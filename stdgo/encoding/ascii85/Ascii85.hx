package stdgo.encoding.ascii85;
@:structInit @:using(stdgo.encoding.ascii85.Ascii85.T_encoder_static_extension) abstract T_encoder(stdgo._internal.encoding.ascii85.Ascii85_T_encoder.T_encoder) from stdgo._internal.encoding.ascii85.Ascii85_T_encoder.T_encoder to stdgo._internal.encoding.ascii85.Ascii85_T_encoder.T_encoder {
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public var _w(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get__w():stdgo._internal.io.Io_Writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this._w = v;
        return v;
    }
    public var _buf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__buf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._buf) i]);
    function set__buf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._buf = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _nbuf(get, set) : StdTypes.Int;
    function get__nbuf():StdTypes.Int return this._nbuf;
    function set__nbuf(v:StdTypes.Int):StdTypes.Int {
        this._nbuf = v;
        return v;
    }
    public var _out(get, set) : haxe.ds.Vector<std.UInt>;
    function get__out():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._out) i]);
    function set__out(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._out = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_err:stdgo.Error, ?_w:stdgo._internal.io.Io_Writer.Writer, ?_buf:haxe.ds.Vector<std.UInt>, ?_nbuf:StdTypes.Int, ?_out:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.encoding.ascii85.Ascii85_T_encoder.T_encoder(_err, _w, ([for (i in _buf) i] : stdgo.GoArray<stdgo.GoUInt8>), _nbuf, ([for (i in _out) i] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.ascii85.Ascii85.T_decoder_static_extension) abstract T_decoder(stdgo._internal.encoding.ascii85.Ascii85_T_decoder.T_decoder) from stdgo._internal.encoding.ascii85.Ascii85_T_decoder.T_decoder to stdgo._internal.encoding.ascii85.Ascii85_T_decoder.T_decoder {
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public var _readErr(get, set) : stdgo.Error;
    function get__readErr():stdgo.Error return this._readErr;
    function set__readErr(v:stdgo.Error):stdgo.Error {
        this._readErr = v;
        return v;
    }
    public var _r(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get__r():stdgo._internal.io.Io_Reader.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        this._r = v;
        return v;
    }
    public var _buf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__buf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._buf) i]);
    function set__buf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._buf = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _nbuf(get, set) : StdTypes.Int;
    function get__nbuf():StdTypes.Int return this._nbuf;
    function set__nbuf(v:StdTypes.Int):StdTypes.Int {
        this._nbuf = v;
        return v;
    }
    public var _out(get, set) : Array<std.UInt>;
    function get__out():Array<std.UInt> return [for (i in this._out) i];
    function set__out(v:Array<std.UInt>):Array<std.UInt> {
        this._out = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _outbuf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__outbuf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._outbuf) i]);
    function set__outbuf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._outbuf = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_err:stdgo.Error, ?_readErr:stdgo.Error, ?_r:stdgo._internal.io.Io_Reader.Reader, ?_buf:haxe.ds.Vector<std.UInt>, ?_nbuf:StdTypes.Int, ?_out:Array<std.UInt>, ?_outbuf:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.encoding.ascii85.Ascii85_T_decoder.T_decoder(_err, _readErr, _r, ([for (i in _buf) i] : stdgo.GoArray<stdgo.GoUInt8>), _nbuf, ([for (i in _out) i] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _outbuf) i] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef CorruptInputError = stdgo._internal.encoding.ascii85.Ascii85_CorruptInputError.CorruptInputError;
typedef T_encoderPointer = stdgo._internal.encoding.ascii85.Ascii85_T_encoderPointer.T_encoderPointer;
class T_encoder_static_extension {
    static public function close(_e:T_encoder):stdgo.Error {
        return stdgo._internal.encoding.ascii85.Ascii85_T_encoder_static_extension.T_encoder_static_extension.close(_e);
    }
    static public function write(_e:T_encoder, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.ascii85.Ascii85_T_encoder_static_extension.T_encoder_static_extension.write(_e, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_decoderPointer = stdgo._internal.encoding.ascii85.Ascii85_T_decoderPointer.T_decoderPointer;
class T_decoder_static_extension {
    static public function read(_d:T_decoder, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.ascii85.Ascii85_T_decoder_static_extension.T_decoder_static_extension.read(_d, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef CorruptInputErrorPointer = stdgo._internal.encoding.ascii85.Ascii85_CorruptInputErrorPointer.CorruptInputErrorPointer;
class CorruptInputError_static_extension {
    static public function error(_e:CorruptInputError):String {
        return stdgo._internal.encoding.ascii85.Ascii85_CorruptInputError_static_extension.CorruptInputError_static_extension.error(_e);
    }
}
/**
    Package ascii85 implements the ascii85 data encoding
    as used in the btoa tool and Adobe's PostScript and PDF document formats.
**/
class Ascii85 {
    /**
        Encode encodes src into at most MaxEncodedLen(len(src))
        bytes of dst, returning the actual number of bytes written.
        
        The encoding handles 4-byte chunks, using a special encoding
        for the last fragment, so Encode is not appropriate for use on
        individual blocks of a large data stream. Use NewEncoder() instead.
        
        Often, ascii85-encoded data is wrapped in <~ and ~> symbols.
        Encode does not add these.
    **/
    static public function encode(_dst:Array<std.UInt>, _src:Array<std.UInt>):StdTypes.Int {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.ascii85.Ascii85_encode.encode(_dst, _src);
    }
    /**
        MaxEncodedLen returns the maximum length of an encoding of n source bytes.
    **/
    static public function maxEncodedLen(_n:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.encoding.ascii85.Ascii85_maxEncodedLen.maxEncodedLen(_n);
    }
    /**
        NewEncoder returns a new ascii85 stream encoder. Data written to
        the returned writer will be encoded and then written to w.
        Ascii85 encodings operate in 32-bit blocks; when finished
        writing, the caller must Close the returned encoder to flush any
        trailing partial block.
    **/
    static public function newEncoder(_w:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_WriteCloser.WriteCloser {
        return stdgo._internal.encoding.ascii85.Ascii85_newEncoder.newEncoder(_w);
    }
    /**
        Decode decodes src into dst, returning both the number
        of bytes written to dst and the number consumed from src.
        If src contains invalid ascii85 data, Decode will return the
        number of bytes successfully written and a CorruptInputError.
        Decode ignores space and control characters in src.
        Often, ascii85-encoded data is wrapped in <~ and ~> symbols.
        Decode expects these to have been stripped by the caller.
        
        If flush is true, Decode assumes that src represents the
        end of the input stream and processes it completely rather
        than wait for the completion of another 32-bit block.
        
        NewDecoder wraps an io.Reader interface around Decode.
    **/
    static public function decode(_dst:Array<std.UInt>, _src:Array<std.UInt>, _flush:Bool):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.ascii85.Ascii85_decode.decode(_dst, _src, _flush);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        NewDecoder constructs a new ascii85 stream decoder.
    **/
    static public function newDecoder(_r:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        return stdgo._internal.encoding.ascii85.Ascii85_newDecoder.newDecoder(_r);
    }
}
