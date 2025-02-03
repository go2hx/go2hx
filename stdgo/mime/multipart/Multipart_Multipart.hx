package stdgo.mime.multipart;
/**
    /|*
    Package multipart implements MIME multipart parsing, as defined in RFC
    2046.
    
    The implementation is sufficient for HTTP (RFC 2388) and the multipart
    bodies generated by popular browsers.
    
    # Limits
    
    To protect against malicious inputs, this package sets limits on the size
    of the MIME data it processes.
    
    Reader.NextPart and Reader.NextRawPart limit the number of headers in a
    part to 10000 and Reader.ReadForm limits the total number of headers in all
    FileHeaders to 10000.
    These limits may be adjusted with the GODEBUG=multipartmaxheaders=<values>
    setting.
    
    Reader.ReadForm further limits the number of parts in a form to 1000.
    This limit may be adjusted with the GODEBUG=multipartmaxparts=<value>
    setting.
    *|/
    
    Copyright 2023 The Go Authors. All rights reserved.
    Use of this source code is governed by a BSD-style
    license that can be found in the LICENSE file.
**/
class Multipart {
    /**
        NewReader creates a new multipart Reader reading from r using the
        given MIME boundary.
        
        The boundary is usually obtained from the "boundary" parameter of
        the message's "Content-Type" header. Use mime.ParseMediaType to
        parse such headers.
    **/
    static public inline function newReader(_r:stdgo._internal.io.Io_Reader.Reader, _boundary:String):Reader {
        final _boundary = (_boundary : stdgo.GoString);
        return stdgo._internal.mime.multipart.Multipart_newReader.newReader(_r, _boundary);
    }
    /**
        NewWriter returns a new multipart Writer with a random boundary,
        writing to w.
    **/
    static public inline function newWriter(_w:stdgo._internal.io.Io_Writer.Writer):Writer {
        return stdgo._internal.mime.multipart.Multipart_newWriter.newWriter(_w);
    }
}
