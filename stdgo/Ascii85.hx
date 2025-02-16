package stdgo;
@:structInit @:using(stdgo.encoding.ascii85.Ascii85.T_encoder_static_extension) @:dox(hide) abstract T_encoder(stdgo._internal.encoding.ascii85.Ascii85_t_encoder.T_encoder) from stdgo._internal.encoding.ascii85.Ascii85_t_encoder.T_encoder to stdgo._internal.encoding.ascii85.Ascii85_t_encoder.T_encoder {
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public var _w(get, set) : stdgo._internal.io.Io_writer.Writer;
    function get__w():stdgo._internal.io.Io_writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writer.Writer {
        this._w = v;
        return v;
    }
    public var _buf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__buf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._buf) i]);
    function set__buf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._buf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _nbuf(get, set) : StdTypes.Int;
    function get__nbuf():StdTypes.Int return this._nbuf;
    function set__nbuf(v:StdTypes.Int):StdTypes.Int {
        this._nbuf = (v : stdgo.GoInt);
        return v;
    }
    public var _out(get, set) : haxe.ds.Vector<std.UInt>;
    function get__out():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._out) i]);
    function set__out(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._out = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_err:stdgo.Error, ?_w:stdgo._internal.io.Io_writer.Writer, ?_buf:haxe.ds.Vector<std.UInt>, ?_nbuf:StdTypes.Int, ?_out:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.encoding.ascii85.Ascii85_t_encoder.T_encoder((_err : stdgo.Error), _w, ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (_nbuf : stdgo.GoInt), ([for (i in _out) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.ascii85.Ascii85.T_decoder_static_extension) @:dox(hide) abstract T_decoder(stdgo._internal.encoding.ascii85.Ascii85_t_decoder.T_decoder) from stdgo._internal.encoding.ascii85.Ascii85_t_decoder.T_decoder to stdgo._internal.encoding.ascii85.Ascii85_t_decoder.T_decoder {
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public var _readErr(get, set) : stdgo.Error;
    function get__readErr():stdgo.Error return this._readErr;
    function set__readErr(v:stdgo.Error):stdgo.Error {
        this._readErr = (v : stdgo.Error);
        return v;
    }
    public var _r(get, set) : stdgo._internal.io.Io_reader.Reader;
    function get__r():stdgo._internal.io.Io_reader.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
        this._r = v;
        return v;
    }
    public var _buf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__buf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._buf) i]);
    function set__buf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._buf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _nbuf(get, set) : StdTypes.Int;
    function get__nbuf():StdTypes.Int return this._nbuf;
    function set__nbuf(v:StdTypes.Int):StdTypes.Int {
        this._nbuf = (v : stdgo.GoInt);
        return v;
    }
    public var _out(get, set) : Array<std.UInt>;
    function get__out():Array<std.UInt> return [for (i in this._out) i];
    function set__out(v:Array<std.UInt>):Array<std.UInt> {
        this._out = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _outbuf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__outbuf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._outbuf) i]);
    function set__outbuf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._outbuf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_err:stdgo.Error, ?_readErr:stdgo.Error, ?_r:stdgo._internal.io.Io_reader.Reader, ?_buf:haxe.ds.Vector<std.UInt>, ?_nbuf:StdTypes.Int, ?_out:Array<std.UInt>, ?_outbuf:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.encoding.ascii85.Ascii85_t_decoder.T_decoder((_err : stdgo.Error), (_readErr : stdgo.Error), _r, ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (_nbuf : stdgo.GoInt), ([for (i in _out) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _outbuf) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef CorruptInputError = stdgo._internal.encoding.ascii85.Ascii85_corruptinputerror.CorruptInputError;
@:dox(hide) typedef T_encoderPointer = stdgo._internal.encoding.ascii85.Ascii85_t_encoderpointer.T_encoderPointer;
@:dox(hide) class T_encoder_static_extension {
    static public function close(_e:T_encoder):stdgo.Error {
        final _e = (_e : stdgo.Ref<stdgo._internal.encoding.ascii85.Ascii85_t_encoder.T_encoder>);
        return stdgo._internal.encoding.ascii85.Ascii85_t_encoder_static_extension.T_encoder_static_extension.close(_e);
    }
    static public function write(_e:T_encoder, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _e = (_e : stdgo.Ref<stdgo._internal.encoding.ascii85.Ascii85_t_encoder.T_encoder>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.ascii85.Ascii85_t_encoder_static_extension.T_encoder_static_extension.write(_e, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_decoderPointer = stdgo._internal.encoding.ascii85.Ascii85_t_decoderpointer.T_decoderPointer;
@:dox(hide) class T_decoder_static_extension {
    static public function read(_d:T_decoder, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.ascii85.Ascii85_t_decoder.T_decoder>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.ascii85.Ascii85_t_decoder_static_extension.T_decoder_static_extension.read(_d, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef CorruptInputErrorPointer = stdgo._internal.encoding.ascii85.Ascii85_corruptinputerrorpointer.CorruptInputErrorPointer;
class CorruptInputError_static_extension {
    static public function error(_e:CorruptInputError):String {
        return stdgo._internal.encoding.ascii85.Ascii85_corruptinputerror_static_extension.CorruptInputError_static_extension.error(_e);
    }
}
/**
    * Package ascii85 implements the ascii85 data encoding
    * as used in the btoa tool and Adobe's PostScript and PDF document formats.
**/
class Ascii85 {
    /**
        * Encode encodes src into at most MaxEncodedLen(len(src))
        * bytes of dst, returning the actual number of bytes written.
        * 
        * The encoding handles 4-byte chunks, using a special encoding
        * for the last fragment, so Encode is not appropriate for use on
        * individual blocks of a large data stream. Use NewEncoder() instead.
        * 
        * Often, ascii85-encoded data is wrapped in <~ and ~> symbols.
        * Encode does not add these.
    **/
    static public inline function encode(_dst:Array<std.UInt>, _src:Array<std.UInt>):StdTypes.Int {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.ascii85.Ascii85_encode.encode(_dst, _src);
    }
    /**
        * MaxEncodedLen returns the maximum length of an encoding of n source bytes.
    **/
    static public inline function maxEncodedLen(_n:StdTypes.Int):StdTypes.Int {
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.encoding.ascii85.Ascii85_maxencodedlen.maxEncodedLen(_n);
    }
    /**
        * NewEncoder returns a new ascii85 stream encoder. Data written to
        * the returned writer will be encoded and then written to w.
        * Ascii85 encodings operate in 32-bit blocks; when finished
        * writing, the caller must Close the returned encoder to flush any
        * trailing partial block.
    **/
    static public inline function newEncoder(_w:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writecloser.WriteCloser {
        return stdgo._internal.encoding.ascii85.Ascii85_newencoder.newEncoder(_w);
    }
    /**
        * Decode decodes src into dst, returning both the number
        * of bytes written to dst and the number consumed from src.
        * If src contains invalid ascii85 data, Decode will return the
        * number of bytes successfully written and a CorruptInputError.
        * Decode ignores space and control characters in src.
        * Often, ascii85-encoded data is wrapped in <~ and ~> symbols.
        * Decode expects these to have been stripped by the caller.
        * 
        * If flush is true, Decode assumes that src represents the
        * end of the input stream and processes it completely rather
        * than wait for the completion of another 32-bit block.
        * 
        * NewDecoder wraps an io.Reader interface around Decode.
    **/
    static public inline function decode(_dst:Array<std.UInt>, _src:Array<std.UInt>, _flush:Bool):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.ascii85.Ascii85_decode.decode(_dst, _src, _flush);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        * NewDecoder constructs a new ascii85 stream decoder.
    **/
    static public inline function newDecoder(_r:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
        return stdgo._internal.encoding.ascii85.Ascii85_newdecoder.newDecoder(_r);
    }
}
