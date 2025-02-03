package stdgo.bufio;
/**
    Package bufio implements buffered I/O. It wraps an io.Reader or io.Writer
    object, creating another object (Reader or Writer) that also implements
    the interface but provides buffering and some help for textual I/O.
**/
class Bufio {
    /**
        NewReaderSize returns a new Reader whose buffer has at least the specified
        size. If the argument io.Reader is already a Reader with large enough
        size, it returns the underlying Reader.
    **/
    static public inline function newReaderSize(_rd:stdgo._internal.io.Io_Reader.Reader, _size:StdTypes.Int):Reader {
        final _size = (_size : stdgo.GoInt);
        return stdgo._internal.bufio.Bufio_newReaderSize.newReaderSize(_rd, _size);
    }
    /**
        NewReader returns a new Reader whose buffer has the default size.
    **/
    static public inline function newReader(_rd:stdgo._internal.io.Io_Reader.Reader):Reader {
        return stdgo._internal.bufio.Bufio_newReader.newReader(_rd);
    }
    /**
        NewWriterSize returns a new Writer whose buffer has at least the specified
        size. If the argument io.Writer is already a Writer with large enough
        size, it returns the underlying Writer.
    **/
    static public inline function newWriterSize(_w:stdgo._internal.io.Io_Writer.Writer, _size:StdTypes.Int):Writer {
        final _size = (_size : stdgo.GoInt);
        return stdgo._internal.bufio.Bufio_newWriterSize.newWriterSize(_w, _size);
    }
    /**
        NewWriter returns a new Writer whose buffer has the default size.
        If the argument io.Writer is already a Writer with large enough buffer size,
        it returns the underlying Writer.
    **/
    static public inline function newWriter(_w:stdgo._internal.io.Io_Writer.Writer):Writer {
        return stdgo._internal.bufio.Bufio_newWriter.newWriter(_w);
    }
    /**
        NewReadWriter allocates a new ReadWriter that dispatches to r and w.
    **/
    static public inline function newReadWriter(_r:Reader, _w:Writer):ReadWriter {
        final _r = (_r : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
        final _w = (_w : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>);
        return stdgo._internal.bufio.Bufio_newReadWriter.newReadWriter(_r, _w);
    }
    /**
        NewScanner returns a new Scanner to read from r.
        The split function defaults to ScanLines.
    **/
    static public inline function newScanner(_r:stdgo._internal.io.Io_Reader.Reader):Scanner {
        return stdgo._internal.bufio.Bufio_newScanner.newScanner(_r);
    }
    /**
        ScanBytes is a split function for a Scanner that returns each byte as a token.
    **/
    static public inline function scanBytes(_data:Array<std.UInt>, _atEOF:Bool):stdgo.Tuple.Tuple3<StdTypes.Int, Array<std.UInt>, stdgo.Error> {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.bufio.Bufio_scanBytes.scanBytes(_data, _atEOF);
            { _0 : obj._0, _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
    /**
        ScanRunes is a split function for a Scanner that returns each
        UTF-8-encoded rune as a token. The sequence of runes returned is
        equivalent to that from a range loop over the input as a string, which
        means that erroneous UTF-8 encodings translate to U+FFFD = "\xef\xbf\xbd".
        Because of the Scan interface, this makes it impossible for the client to
        distinguish correctly encoded replacement runes from encoding errors.
    **/
    static public inline function scanRunes(_data:Array<std.UInt>, _atEOF:Bool):stdgo.Tuple.Tuple3<StdTypes.Int, Array<std.UInt>, stdgo.Error> {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.bufio.Bufio_scanRunes.scanRunes(_data, _atEOF);
            { _0 : obj._0, _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
    /**
        ScanLines is a split function for a Scanner that returns each line of
        text, stripped of any trailing end-of-line marker. The returned line may
        be empty. The end-of-line marker is one optional carriage return followed
        by one mandatory newline. In regular expression notation, it is `\r?\n`.
        The last non-empty line of input will be returned even if it has no
        newline.
    **/
    static public inline function scanLines(_data:Array<std.UInt>, _atEOF:Bool):stdgo.Tuple.Tuple3<StdTypes.Int, Array<std.UInt>, stdgo.Error> {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.bufio.Bufio_scanLines.scanLines(_data, _atEOF);
            { _0 : obj._0, _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
    /**
        ScanWords is a split function for a Scanner that returns each
        space-separated word of text, with surrounding spaces deleted. It will
        never return an empty string. The definition of space is set by
        unicode.IsSpace.
    **/
    static public inline function scanWords(_data:Array<std.UInt>, _atEOF:Bool):stdgo.Tuple.Tuple3<StdTypes.Int, Array<std.UInt>, stdgo.Error> {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.bufio.Bufio_scanWords.scanWords(_data, _atEOF);
            { _0 : obj._0, _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
}
