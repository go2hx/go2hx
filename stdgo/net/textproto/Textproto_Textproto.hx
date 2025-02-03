package stdgo.net.textproto;
/**
    Package textproto implements generic support for text-based request/response
    protocols in the style of HTTP, NNTP, and SMTP.
    
    The package provides:
    
    Error, which represents a numeric error response from
    a server.
    
    Pipeline, to manage pipelined requests and responses
    in a client.
    
    Reader, to read numeric response code lines,
    key: value headers, lines wrapped with leading spaces
    on continuation lines, and whole text blocks ending
    with a dot on a line by itself.
    
    Writer, to write dot-encoded text blocks.
    
    Conn, a convenient packaging of Reader, Writer, and Pipeline for use
    with a single network connection.
**/
class Textproto {
    /**
        NewReader returns a new Reader reading from r.
        
        To avoid denial of service attacks, the provided bufio.Reader
        should be reading from an io.LimitReader or similar Reader to bound
        the size of responses.
    **/
    static public inline function newReader(_r:stdgo._internal.bufio.Bufio_Reader.Reader):Reader {
        final _r = (_r : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
        return stdgo._internal.net.textproto.Textproto_newReader.newReader(_r);
    }
    /**
        CanonicalMIMEHeaderKey returns the canonical format of the
        MIME header key s. The canonicalization converts the first
        letter and any letter following a hyphen to upper case;
        the rest are converted to lowercase. For example, the
        canonical key for "accept-encoding" is "Accept-Encoding".
        MIME header keys are assumed to be ASCII only.
        If s contains a space or invalid header field bytes, it is
        returned without modifications.
    **/
    static public inline function canonicalMIMEHeaderKey(_s:String):String {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.net.textproto.Textproto_canonicalMIMEHeaderKey.canonicalMIMEHeaderKey(_s);
    }
    /**
        NewConn returns a new Conn using conn for I/O.
    **/
    static public inline function newConn(_conn:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser):Conn {
        return stdgo._internal.net.textproto.Textproto_newConn.newConn(_conn);
    }
    /**
        Dial connects to the given address on the given network using net.Dial
        and then returns a new Conn for the connection.
    **/
    static public inline function dial(_network:String, _addr:String):stdgo.Tuple<Conn, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _addr = (_addr : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.textproto.Textproto_dial.dial(_network, _addr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        TrimString returns s without leading and trailing ASCII space.
    **/
    static public inline function trimString(_s:String):String {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.net.textproto.Textproto_trimString.trimString(_s);
    }
    /**
        TrimBytes returns b without leading and trailing ASCII space.
    **/
    static public inline function trimBytes(_b:Array<std.UInt>):Array<std.UInt> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.net.textproto.Textproto_trimBytes.trimBytes(_b)) i];
    }
    /**
        NewWriter returns a new Writer writing to w.
    **/
    static public inline function newWriter(_w:stdgo._internal.bufio.Bufio_Writer.Writer):Writer {
        final _w = (_w : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>);
        return stdgo._internal.net.textproto.Textproto_newWriter.newWriter(_w);
    }
}
