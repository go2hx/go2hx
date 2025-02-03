package stdgo.net.http.internal;
/**
    Package internal contains HTTP internals shared by net/http and
    net/http/httputil.
**/
class Internal {
    /**
        NewChunkedReader returns a new chunkedReader that translates the data read from r
        out of HTTP "chunked" format before returning it.
        The chunkedReader returns io.EOF when the final 0-length chunk is read.
        
        NewChunkedReader is not needed by normal applications. The http package
        automatically decodes chunking when reading response bodies.
    **/
    static public inline function newChunkedReader(_r:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        return stdgo._internal.net.http.internal.Internal_newChunkedReader.newChunkedReader(_r);
    }
    /**
        NewChunkedWriter returns a new chunkedWriter that translates writes into HTTP
        "chunked" format before writing them to w. Closing the returned chunkedWriter
        sends the final 0-length chunk that marks the end of the stream but does
        not send the final CRLF that appears after trailers; trailers and the last
        CRLF must be written separately.
        
        NewChunkedWriter is not needed by normal applications. The http
        package adds chunking automatically if handlers don't set a
        Content-Length header. Using newChunkedWriter inside a handler
        would result in double chunking or chunking with a Content-Length
        length, both of which are wrong.
    **/
    static public inline function newChunkedWriter(_w:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_WriteCloser.WriteCloser {
        return stdgo._internal.net.http.internal.Internal_newChunkedWriter.newChunkedWriter(_w);
    }
}
