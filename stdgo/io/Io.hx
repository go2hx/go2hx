package stdgo.io;
/**
    // Package io provides basic interfaces to I/O primitives.
    // Its primary job is to wrap existing implementations of such primitives,
    // such as those in package os, into shared public interfaces that
    // abstract the functionality, plus some other related primitives.
    //
    // Because these interfaces and primitives wrap lower-level operations with
    // various implementations, unless otherwise informed clients should not
    // assume they are safe for parallel execution.
**/
private var __go2hxdoc__package : Bool;
/**
    // ErrShortWrite means that a write accepted fewer bytes than requested
    // but failed to return an explicit error.
    
    
**/
var errShortWrite : stdgo.Error = stdgo.errors.Errors.new_(("short write" : stdgo.GoString)?.__copy__());
/**
    // errInvalidWrite means that a write returned an impossible count.
    
    
**/
var _errInvalidWrite : stdgo.Error = stdgo.errors.Errors.new_(("invalid write result" : stdgo.GoString)?.__copy__());
/**
    // ErrShortBuffer means that a read required a longer buffer than was provided.
    
    
**/
var errShortBuffer : stdgo.Error = stdgo.errors.Errors.new_(("short buffer" : stdgo.GoString)?.__copy__());
/**
    // EOF is the error returned by Read when no more input is available.
    // (Read must return EOF itself, not an error wrapping EOF,
    // because callers will test for EOF using ==.)
    // Functions should return EOF only to signal a graceful end of input.
    // If the EOF occurs unexpectedly in a structured data stream,
    // the appropriate error is either ErrUnexpectedEOF or some other error
    // giving more detail.
    
    
**/
var eof : stdgo.Error = stdgo.errors.Errors.new_(("EOF" : stdgo.GoString)?.__copy__());
/**
    // ErrUnexpectedEOF means that EOF was encountered in the
    // middle of reading a fixed-size block or data structure.
    
    
**/
var errUnexpectedEOF : stdgo.Error = stdgo.errors.Errors.new_(("unexpected EOF" : stdgo.GoString)?.__copy__());
/**
    // ErrNoProgress is returned by some clients of a Reader when
    // many calls to Read have failed to return any data or error,
    // usually the sign of a broken Reader implementation.
    
    
**/
var errNoProgress : stdgo.Error = stdgo.errors.Errors.new_(("multiple Read calls return no data or error" : stdgo.GoString)?.__copy__());
/**
    
    
    
**/
var _errWhence : stdgo.Error = stdgo.errors.Errors.new_(("Seek: invalid whence" : stdgo.GoString)?.__copy__());
/**
    
    
    
**/
var _errOffset : stdgo.Error = stdgo.errors.Errors.new_(("Seek: invalid offset" : stdgo.GoString)?.__copy__());
/**
    // Discard is a Writer on which all Write calls succeed
    // without doing anything.
    
    
**/
var discard : stdgo.io.Io.Writer = stdgo.Go.asInterface((new stdgo.io.Io.T_discard() : stdgo.io.Io.T_discard));
/**
    
    
    
**/
var _blackHolePool : stdgo.sync.Sync.Pool = ({ new_ : function():stdgo.StdGoTypes.AnyInterface {
        var _b = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((8192 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        return stdgo.Go.toInterface((stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoUInt8>>));
    } } : stdgo.sync.Sync.Pool);
/**
    // ErrClosedPipe is the error used for read or write operations on a closed pipe.
    
    
**/
var errClosedPipe : stdgo.Error = stdgo.errors.Errors.new_(("io: read/write on closed pipe" : stdgo.GoString)?.__copy__());
/**
    // exported for test
    
    
**/
var errInvalidWrite : stdgo.Error = _errInvalidWrite;
/**
    
    
    
**/
var errWhence : stdgo.Error = _errWhence;
/**
    
    
    
**/
var errOffset : stdgo.Error = _errOffset;
/**
    // Seek whence values.
    
    // seek relative to the origin of the file
**/
final seekStart : stdgo.StdGoTypes.GoUInt64 = (0i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // Seek whence values.
    
    // seek relative to the current offset
**/
final seekCurrent : stdgo.StdGoTypes.GoUInt64 = (1i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // Seek whence values.
    
    // seek relative to the end
**/
final seekEnd : stdgo.StdGoTypes.GoUInt64 = (2i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // discard implements ReaderFrom as an optimization so Copy to
    // io.Discard can avoid doing unnecessary work.
    
    
**/
var __3 : stdgo.io.Io.ReaderFrom = stdgo.Go.asInterface((new stdgo.io.Io.T_discard() : stdgo.io.Io.T_discard));
/**
    
    
    
**/
var __4 : stdgo.io.Io.WriterTo = stdgo.Go.asInterface(((null : stdgo.StdGoTypes.Ref<stdgo.io.Io.T_multiReader>) : stdgo.StdGoTypes.Ref<T_multiReader>));
/**
    
    
    
**/
var __5 : stdgo.io.Io.StringWriter = stdgo.Go.asInterface(((null : stdgo.StdGoTypes.Ref<stdgo.io.Io.T_multiWriter>) : stdgo.StdGoTypes.Ref<T_multiWriter>));
/**
    // Reader is the interface that wraps the basic Read method.
    //
    // Read reads up to len(p) bytes into p. It returns the number of bytes
    // read (0 <= n <= len(p)) and any error encountered. Even if Read
    // returns n < len(p), it may use all of p as scratch space during the call.
    // If some data is available but not len(p) bytes, Read conventionally
    // returns what is available instead of waiting for more.
    //
    // When Read encounters an error or end-of-file condition after
    // successfully reading n > 0 bytes, it returns the number of
    // bytes read. It may return the (non-nil) error from the same call
    // or return the error (and n == 0) from a subsequent call.
    // An instance of this general case is that a Reader returning
    // a non-zero number of bytes at the end of the input stream may
    // return either err == EOF or err == nil. The next Read should
    // return 0, EOF.
    //
    // Callers should always process the n > 0 bytes returned before
    // considering the error err. Doing so correctly handles I/O errors
    // that happen after reading some bytes and also both of the
    // allowed EOF behaviors.
    //
    // If len(p) == 0, Read should always return n == 0. It may return a
    // non-nil error if some error condition is known, such as EOF.
    //
    // Implementations of Read are discouraged from returning a
    // zero byte count with a nil error, except when len(p) == 0.
    // Callers should treat a return of 0 and nil as indicating that
    // nothing happened; in particular it does not indicate EOF.
    //
    // Implementations must not retain p.
    
    
**/
typedef Reader = stdgo.StdGoTypes.StructType & {
    /**
        
        
        
    **/
    public dynamic function read(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; };
};
/**
    // Writer is the interface that wraps the basic Write method.
    //
    // Write writes len(p) bytes from p to the underlying data stream.
    // It returns the number of bytes written from p (0 <= n <= len(p))
    // and any error encountered that caused the write to stop early.
    // Write must return a non-nil error if it returns n < len(p).
    // Write must not modify the slice data, even temporarily.
    //
    // Implementations must not retain p.
    
    
**/
typedef Writer = stdgo.StdGoTypes.StructType & {
    /**
        
        
        
    **/
    public dynamic function write(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; };
};
/**
    // Closer is the interface that wraps the basic Close method.
    //
    // The behavior of Close after the first call is undefined.
    // Specific implementations may document their own behavior.
    
    
**/
typedef Closer = stdgo.StdGoTypes.StructType & {
    /**
        
        
        
    **/
    public dynamic function close():stdgo.Error;
};
/**
    // Seeker is the interface that wraps the basic Seek method.
    //
    // Seek sets the offset for the next Read or Write to offset,
    // interpreted according to whence:
    // SeekStart means relative to the start of the file,
    // SeekCurrent means relative to the current offset, and
    // SeekEnd means relative to the end
    // (for example, offset = -2 specifies the penultimate byte of the file).
    // Seek returns the new offset relative to the start of the
    // file or an error, if any.
    //
    // Seeking to an offset before the start of the file is an error.
    // Seeking to any positive offset may be allowed, but if the new offset exceeds
    // the size of the underlying object the behavior of subsequent I/O operations
    // is implementation-dependent.
    
    
**/
typedef Seeker = stdgo.StdGoTypes.StructType & {
    /**
        
        
        
    **/
    public dynamic function seek(_offset:stdgo.StdGoTypes.GoInt64, _whence:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; };
};
/**
    // ReadWriter is the interface that groups the basic Read and Write methods.
    
    
**/
typedef ReadWriter = stdgo.StdGoTypes.StructType & {
    > Reader,
    > Writer,
};
/**
    // ReadCloser is the interface that groups the basic Read and Close methods.
    
    
**/
typedef ReadCloser = stdgo.StdGoTypes.StructType & {
    > Reader,
    > Closer,
};
/**
    // WriteCloser is the interface that groups the basic Write and Close methods.
    
    
**/
typedef WriteCloser = stdgo.StdGoTypes.StructType & {
    > Writer,
    > Closer,
};
/**
    // ReadWriteCloser is the interface that groups the basic Read, Write and Close methods.
    
    
**/
typedef ReadWriteCloser = stdgo.StdGoTypes.StructType & {
    > Reader,
    > Writer,
    > Closer,
};
/**
    // ReadSeeker is the interface that groups the basic Read and Seek methods.
    
    
**/
typedef ReadSeeker = stdgo.StdGoTypes.StructType & {
    > Reader,
    > Seeker,
};
/**
    // ReadSeekCloser is the interface that groups the basic Read, Seek and Close
    // methods.
    
    
**/
typedef ReadSeekCloser = stdgo.StdGoTypes.StructType & {
    > Reader,
    > Seeker,
    > Closer,
};
/**
    // WriteSeeker is the interface that groups the basic Write and Seek methods.
    
    
**/
typedef WriteSeeker = stdgo.StdGoTypes.StructType & {
    > Writer,
    > Seeker,
};
/**
    // ReadWriteSeeker is the interface that groups the basic Read, Write and Seek methods.
    
    
**/
typedef ReadWriteSeeker = stdgo.StdGoTypes.StructType & {
    > Reader,
    > Writer,
    > Seeker,
};
/**
    // ReaderFrom is the interface that wraps the ReadFrom method.
    //
    // ReadFrom reads data from r until EOF or error.
    // The return value n is the number of bytes read.
    // Any error except EOF encountered during the read is also returned.
    //
    // The Copy function uses ReaderFrom if available.
    
    
**/
typedef ReaderFrom = stdgo.StdGoTypes.StructType & {
    /**
        
        
        
    **/
    public dynamic function readFrom(_r:Reader):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; };
};
/**
    // WriterTo is the interface that wraps the WriteTo method.
    //
    // WriteTo writes data to w until there's no more data to write or
    // when an error occurs. The return value n is the number of bytes
    // written. Any error encountered during the write is also returned.
    //
    // The Copy function uses WriterTo if available.
    
    
**/
typedef WriterTo = stdgo.StdGoTypes.StructType & {
    /**
        
        
        
    **/
    public dynamic function writeTo(_w:Writer):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; };
};
/**
    // ReaderAt is the interface that wraps the basic ReadAt method.
    //
    // ReadAt reads len(p) bytes into p starting at offset off in the
    // underlying input source. It returns the number of bytes
    // read (0 <= n <= len(p)) and any error encountered.
    //
    // When ReadAt returns n < len(p), it returns a non-nil error
    // explaining why more bytes were not returned. In this respect,
    // ReadAt is stricter than Read.
    //
    // Even if ReadAt returns n < len(p), it may use all of p as scratch
    // space during the call. If some data is available but not len(p) bytes,
    // ReadAt blocks until either all the data is available or an error occurs.
    // In this respect ReadAt is different from Read.
    //
    // If the n = len(p) bytes returned by ReadAt are at the end of the
    // input source, ReadAt may return either err == EOF or err == nil.
    //
    // If ReadAt is reading from an input source with a seek offset,
    // ReadAt should not affect nor be affected by the underlying
    // seek offset.
    //
    // Clients of ReadAt can execute parallel ReadAt calls on the
    // same input source.
    //
    // Implementations must not retain p.
    
    
**/
typedef ReaderAt = stdgo.StdGoTypes.StructType & {
    /**
        
        
        
    **/
    public dynamic function readAt(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _off:stdgo.StdGoTypes.GoInt64):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; };
};
/**
    // WriterAt is the interface that wraps the basic WriteAt method.
    //
    // WriteAt writes len(p) bytes from p to the underlying data stream
    // at offset off. It returns the number of bytes written from p (0 <= n <= len(p))
    // and any error encountered that caused the write to stop early.
    // WriteAt must return a non-nil error if it returns n < len(p).
    //
    // If WriteAt is writing to a destination with a seek offset,
    // WriteAt should not affect nor be affected by the underlying
    // seek offset.
    //
    // Clients of WriteAt can execute parallel WriteAt calls on the same
    // destination if the ranges do not overlap.
    //
    // Implementations must not retain p.
    
    
**/
typedef WriterAt = stdgo.StdGoTypes.StructType & {
    /**
        
        
        
    **/
    public dynamic function writeAt(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _off:stdgo.StdGoTypes.GoInt64):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; };
};
/**
    // ByteReader is the interface that wraps the ReadByte method.
    //
    // ReadByte reads and returns the next byte from the input or
    // any error encountered. If ReadByte returns an error, no input
    // byte was consumed, and the returned byte value is undefined.
    //
    // ReadByte provides an efficient interface for byte-at-time
    // processing. A Reader that does not implement  ByteReader
    // can be wrapped using bufio.NewReader to add this method.
    
    
**/
typedef ByteReader = stdgo.StdGoTypes.StructType & {
    /**
        
        
        
    **/
    public dynamic function readByte():{ var _0 : stdgo.StdGoTypes.GoByte; var _1 : stdgo.Error; };
};
/**
    // ByteScanner is the interface that adds the UnreadByte method to the
    // basic ReadByte method.
    //
    // UnreadByte causes the next call to ReadByte to return the last byte read.
    // If the last operation was not a successful call to ReadByte, UnreadByte may
    // return an error, unread the last byte read (or the byte prior to the
    // last-unread byte), or (in implementations that support the Seeker interface)
    // seek to one byte before the current offset.
    
    
**/
typedef ByteScanner = stdgo.StdGoTypes.StructType & {
    > ByteReader,
    /**
        
        
        
    **/
    public dynamic function unreadByte():stdgo.Error;
};
/**
    // ByteWriter is the interface that wraps the WriteByte method.
    
    
**/
typedef ByteWriter = stdgo.StdGoTypes.StructType & {
    /**
        
        
        
    **/
    public dynamic function writeByte(_c:stdgo.StdGoTypes.GoByte):stdgo.Error;
};
/**
    // RuneReader is the interface that wraps the ReadRune method.
    //
    // ReadRune reads a single encoded Unicode character
    // and returns the rune and its size in bytes. If no character is
    // available, err will be set.
    
    
**/
typedef RuneReader = stdgo.StdGoTypes.StructType & {
    /**
        
        
        
    **/
    public dynamic function readRune():{ var _0 : stdgo.StdGoTypes.GoRune; var _1 : stdgo.StdGoTypes.GoInt; var _2 : stdgo.Error; };
};
/**
    // RuneScanner is the interface that adds the UnreadRune method to the
    // basic ReadRune method.
    //
    // UnreadRune causes the next call to ReadRune to return the last rune read.
    // If the last operation was not a successful call to ReadRune, UnreadRune may
    // return an error, unread the last rune read (or the rune prior to the
    // last-unread rune), or (in implementations that support the Seeker interface)
    // seek to the start of the rune before the current offset.
    
    
**/
typedef RuneScanner = stdgo.StdGoTypes.StructType & {
    > RuneReader,
    /**
        
        
        
    **/
    public dynamic function unreadRune():stdgo.Error;
};
/**
    // StringWriter is the interface that wraps the WriteString method.
    
    
**/
typedef StringWriter = stdgo.StdGoTypes.StructType & {
    /**
        
        
        
    **/
    public dynamic function writeString(_s:stdgo.GoString):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; };
};
/**
    // A LimitedReader reads from R but limits the amount of
    // data returned to just N bytes. Each call to Read
    // updates N to reflect the new amount remaining.
    // Read returns EOF when N <= 0 or when the underlying R returns EOF.
    
    
**/
@:structInit @:using(stdgo.io.Io.LimitedReader_static_extension) class LimitedReader {
    public var r : stdgo.io.Io.Reader = (null : stdgo.io.Io.Reader);
    public var n : stdgo.StdGoTypes.GoInt64 = 0;
    public function new(?r:stdgo.io.Io.Reader, ?n:stdgo.StdGoTypes.GoInt64) {
        if (r != null) this.r = r;
        if (n != null) this.n = n;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new LimitedReader(r, n);
    }
}
/**
    // SectionReader implements Read, Seek, and ReadAt on a section
    // of an underlying ReaderAt.
    
    
**/
@:structInit @:using(stdgo.io.Io.SectionReader_static_extension) class SectionReader {
    public var _r : stdgo.io.Io.ReaderAt = (null : stdgo.io.Io.ReaderAt);
    public var _base : stdgo.StdGoTypes.GoInt64 = 0;
    public var _off : stdgo.StdGoTypes.GoInt64 = 0;
    public var _limit : stdgo.StdGoTypes.GoInt64 = 0;
    public function new(?_r:stdgo.io.Io.ReaderAt, ?_base:stdgo.StdGoTypes.GoInt64, ?_off:stdgo.StdGoTypes.GoInt64, ?_limit:stdgo.StdGoTypes.GoInt64) {
        if (_r != null) this._r = _r;
        if (_base != null) this._base = _base;
        if (_off != null) this._off = _off;
        if (_limit != null) this._limit = _limit;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SectionReader(_r, _base, _off, _limit);
    }
}
/**
    // An OffsetWriter maps writes at offset base to offset base+off in the underlying writer.
    
    
**/
@:structInit @:using(stdgo.io.Io.OffsetWriter_static_extension) class OffsetWriter {
    public var _w : stdgo.io.Io.WriterAt = (null : stdgo.io.Io.WriterAt);
    public var _base : stdgo.StdGoTypes.GoInt64 = 0;
    public var _off : stdgo.StdGoTypes.GoInt64 = 0;
    public function new(?_w:stdgo.io.Io.WriterAt, ?_base:stdgo.StdGoTypes.GoInt64, ?_off:stdgo.StdGoTypes.GoInt64) {
        if (_w != null) this._w = _w;
        if (_base != null) this._base = _base;
        if (_off != null) this._off = _off;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new OffsetWriter(_w, _base, _off);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.io.Io.T_teeReader_static_extension) class T_teeReader {
    public var _r : stdgo.io.Io.Reader = (null : stdgo.io.Io.Reader);
    public var _w : stdgo.io.Io.Writer = (null : stdgo.io.Io.Writer);
    public function new(?_r:stdgo.io.Io.Reader, ?_w:stdgo.io.Io.Writer) {
        if (_r != null) this._r = _r;
        if (_w != null) this._w = _w;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_teeReader(_r, _w);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.io.Io.T_discard_static_extension) class T_discard {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_discard();
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.io.Io.T_nopCloser_static_extension) class T_nopCloser {
    @:embedded
    public var reader : stdgo.io.Io.Reader = (null : stdgo.io.Io.Reader);
    public function new(?reader:stdgo.io.Io.Reader) {
        if (reader != null) this.reader = reader;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function read(_p_:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return reader.read(_p_);
    public function __copy__() {
        return new T_nopCloser(reader);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.io.Io.T_nopCloserWriterTo_static_extension) class T_nopCloserWriterTo {
    @:embedded
    public var reader : stdgo.io.Io.Reader = (null : stdgo.io.Io.Reader);
    public function new(?reader:stdgo.io.Io.Reader) {
        if (reader != null) this.reader = reader;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function read(_p_:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return reader.read(_p_);
    public function __copy__() {
        return new T_nopCloserWriterTo(reader);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.io.Io.T_eofReader_static_extension) class T_eofReader {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_eofReader();
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.io.Io.T_multiReader_static_extension) class T_multiReader {
    public var _readers : stdgo.Slice<stdgo.io.Io.Reader> = (null : stdgo.Slice<stdgo.io.Io.Reader>);
    public function new(?_readers:stdgo.Slice<stdgo.io.Io.Reader>) {
        if (_readers != null) this._readers = _readers;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_multiReader(_readers);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.io.Io.T_multiWriter_static_extension) class T_multiWriter {
    public var _writers : stdgo.Slice<stdgo.io.Io.Writer> = (null : stdgo.Slice<stdgo.io.Io.Writer>);
    public function new(?_writers:stdgo.Slice<stdgo.io.Io.Writer>) {
        if (_writers != null) this._writers = _writers;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_multiWriter(_writers);
    }
}
/**
    // onceError is an object that will only store an error once.
    
    
**/
@:structInit @:private @:using(stdgo.io.Io.T_onceError_static_extension) class T_onceError {
    @:embedded
    public var mutex : stdgo.sync.Sync.Mutex = ({} : stdgo.sync.Sync.Mutex);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?mutex:stdgo.sync.Sync.Mutex, ?_err:stdgo.Error) {
        if (mutex != null) this.mutex = mutex;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function lock() mutex.lock();
    @:embedded
    public function tryLock():Bool return mutex.tryLock();
    @:embedded
    public function unlock() mutex.unlock();
    @:embedded
    public function _lockSlow() mutex._lockSlow();
    @:embedded
    public function _unlockSlow(_new:stdgo.StdGoTypes.GoInt32) mutex._unlockSlow(_new);
    public function __copy__() {
        return new T_onceError(mutex, _err);
    }
}
/**
    // A pipe is the shared pipe structure underlying PipeReader and PipeWriter.
    
    
**/
@:structInit @:private @:using(stdgo.io.Io.T_pipe_static_extension) class T_pipe {
    public var _wrMu : stdgo.sync.Sync.Mutex = ({} : stdgo.sync.Sync.Mutex);
    public var _wrCh : stdgo.Chan<stdgo.Slice<stdgo.StdGoTypes.GoUInt8>> = (null : stdgo.Chan<stdgo.Slice<stdgo.StdGoTypes.GoUInt8>>);
    public var _rdCh : stdgo.Chan<stdgo.StdGoTypes.GoInt> = (null : stdgo.Chan<stdgo.StdGoTypes.GoInt>);
    public var _once : stdgo.sync.Sync.Once = ({} : stdgo.sync.Sync.Once);
    public var _done : stdgo.Chan<T_discard> = (null : stdgo.Chan<T_discard>);
    public var _rerr : stdgo.io.Io.T_onceError = ({} : stdgo.io.Io.T_onceError);
    public var _werr : stdgo.io.Io.T_onceError = ({} : stdgo.io.Io.T_onceError);
    public function new(?_wrMu:stdgo.sync.Sync.Mutex, ?_wrCh:stdgo.Chan<stdgo.Slice<stdgo.StdGoTypes.GoUInt8>>, ?_rdCh:stdgo.Chan<stdgo.StdGoTypes.GoInt>, ?_once:stdgo.sync.Sync.Once, ?_done:stdgo.Chan<T_discard>, ?_rerr:stdgo.io.Io.T_onceError, ?_werr:stdgo.io.Io.T_onceError) {
        if (_wrMu != null) this._wrMu = _wrMu;
        if (_wrCh != null) this._wrCh = _wrCh;
        if (_rdCh != null) this._rdCh = _rdCh;
        if (_once != null) this._once = _once;
        if (_done != null) this._done = _done;
        if (_rerr != null) this._rerr = _rerr;
        if (_werr != null) this._werr = _werr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_pipe(_wrMu, _wrCh, _rdCh, _once, _done, _rerr, _werr);
    }
}
/**
    // A PipeReader is the read half of a pipe.
    
    
**/
@:structInit @:using(stdgo.io.Io.PipeReader_static_extension) class PipeReader {
    public var _p : stdgo.StdGoTypes.Ref<stdgo.io.Io.T_pipe> = (null : stdgo.StdGoTypes.Ref<stdgo.io.Io.T_pipe>);
    public function new(?_p:stdgo.StdGoTypes.Ref<stdgo.io.Io.T_pipe>) {
        if (_p != null) this._p = _p;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PipeReader(_p);
    }
}
/**
    // A PipeWriter is the write half of a pipe.
    
    
**/
@:structInit @:using(stdgo.io.Io.PipeWriter_static_extension) class PipeWriter {
    public var _p : stdgo.StdGoTypes.Ref<stdgo.io.Io.T_pipe> = (null : stdgo.StdGoTypes.Ref<stdgo.io.Io.T_pipe>);
    public function new(?_p:stdgo.StdGoTypes.Ref<stdgo.io.Io.T_pipe>) {
        if (_p != null) this._p = _p;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PipeWriter(_p);
    }
}
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io.Io.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo.io.Io.T__struct_0_static_extension) typedef T__struct_0 = {};
/**
    // WriteString writes the contents of the string s to w, which accepts a slice of bytes.
    // If w implements StringWriter, its WriteString method is invoked directly.
    // Otherwise, w.Write is called exactly once.
**/
function writeString(_w:Writer, _s:stdgo.GoString):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = try {
                { value : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_w) : StringWriter)) : StringWriter), ok : true };
            } catch(_) {
                { value : (null : stdgo.io.Io.StringWriter), ok : false };
            }, _sw = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return _sw.writeString(_s?.__copy__());
            };
        };
        return _w.write((_s : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
    }
/**
    // ReadAtLeast reads from r into buf until it has read at least min bytes.
    // It returns the number of bytes copied and an error if fewer bytes were read.
    // The error is EOF only if no bytes were read.
    // If an EOF happens after reading fewer than min bytes,
    // ReadAtLeast returns ErrUnexpectedEOF.
    // If min is greater than the length of buf, ReadAtLeast returns ErrShortBuffer.
    // On return, n >= min if and only if err == nil.
    // If r returns an error having read at least min bytes, the error is dropped.
**/
function readAtLeast(_r:Reader, _buf:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _min:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        if ((_buf.length) < _min) {
            return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : errShortBuffer };
        };
        while ((_n < _min) && (_err == null)) {
            var _nn:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            {
                var __tmp__ = _r.read((_buf.__slice__(_n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                _nn = __tmp__._0;
                _err = __tmp__._1;
            };
            _n = _n + (_nn);
        };
        if (_n >= _min) {
            _err = (null : stdgo.Error);
        } else if ((_n > (0 : stdgo.StdGoTypes.GoInt)) && (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(eof))) {
            _err = errUnexpectedEOF;
        };
        return { _0 : _n, _1 : _err };
    }
/**
    // ReadFull reads exactly len(buf) bytes from r into buf.
    // It returns the number of bytes copied and an error if fewer bytes were read.
    // The error is EOF only if no bytes were read.
    // If an EOF happens after reading some but not all the bytes,
    // ReadFull returns ErrUnexpectedEOF.
    // On return, n == len(buf) if and only if err == nil.
    // If r returns an error having read at least len(buf) bytes, the error is dropped.
**/
function readFull(_r:Reader, _buf:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        return readAtLeast(_r, _buf, (_buf.length));
    }
/**
    // CopyN copies n bytes (or until an error) from src to dst.
    // It returns the number of bytes copied and the earliest
    // error encountered while copying.
    // On return, written == n if and only if err == nil.
    //
    // If dst implements the ReaderFrom interface,
    // the copy is implemented using it.
**/
function copyN(_dst:Writer, _src:Reader, _n:stdgo.StdGoTypes.GoInt64):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } {
        var _written:stdgo.StdGoTypes.GoInt64 = (0 : stdgo.StdGoTypes.GoInt64), _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = copy(_dst, limitReader(_src, _n));
            _written = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_written == (_n)) {
            return { _0 : _n, _1 : (null : stdgo.Error) };
        };
        if ((_written < _n) && (_err == null)) {
            _err = eof;
        };
        return { _0 : _written, _1 : _err };
    }
/**
    // Copy copies from src to dst until either EOF is reached
    // on src or an error occurs. It returns the number of bytes
    // copied and the first error encountered while copying, if any.
    //
    // A successful Copy returns err == nil, not err == EOF.
    // Because Copy is defined to read from src until EOF, it does
    // not treat an EOF from Read as an error to be reported.
    //
    // If src implements the WriterTo interface,
    // the copy is implemented by calling src.WriteTo(dst).
    // Otherwise, if dst implements the ReaderFrom interface,
    // the copy is implemented by calling dst.ReadFrom(src).
**/
function copy(_dst:Writer, _src:Reader):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } {
        var _written:stdgo.StdGoTypes.GoInt64 = (0 : stdgo.StdGoTypes.GoInt64), _err:stdgo.Error = (null : stdgo.Error);
        return _copyBuffer(_dst, _src, (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
    }
/**
    // CopyBuffer is identical to Copy except that it stages through the
    // provided buffer (if one is required) rather than allocating a
    // temporary one. If buf is nil, one is allocated; otherwise if it has
    // zero length, CopyBuffer panics.
    //
    // If either src implements WriterTo or dst implements ReaderFrom,
    // buf will not be used to perform the copy.
**/
function copyBuffer(_dst:Writer, _src:Reader, _buf:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } {
        var _written:stdgo.StdGoTypes.GoInt64 = (0 : stdgo.StdGoTypes.GoInt64), _err:stdgo.Error = (null : stdgo.Error);
        if ((_buf != null) && (_buf.length == (0 : stdgo.StdGoTypes.GoInt))) {
            throw stdgo.Go.toInterface(("empty buffer in CopyBuffer" : stdgo.GoString));
        };
        return _copyBuffer(_dst, _src, _buf);
    }
/**
    // copyBuffer is the actual implementation of Copy and CopyBuffer.
    // if buf is nil, one is allocated.
**/
function _copyBuffer(_dst:Writer, _src:Reader, _buf:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } {
        var _written:stdgo.StdGoTypes.GoInt64 = (0 : stdgo.StdGoTypes.GoInt64), _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = try {
                { value : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_src) : WriterTo)) : WriterTo), ok : true };
            } catch(_) {
                { value : (null : stdgo.io.Io.WriterTo), ok : false };
            }, _wt = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return _wt.writeTo(_dst);
            };
        };
        {
            var __tmp__ = try {
                { value : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_dst) : ReaderFrom)) : ReaderFrom), ok : true };
            } catch(_) {
                { value : (null : stdgo.io.Io.ReaderFrom), ok : false };
            }, _rt = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return _rt.readFrom(_src);
            };
        };
        if (_buf == null) {
            var _size:stdgo.StdGoTypes.GoInt = (32768 : stdgo.StdGoTypes.GoInt);
            {
                var __tmp__ = try {
                    { value : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_src) : stdgo.StdGoTypes.Ref<LimitedReader>)) : stdgo.StdGoTypes.Ref<LimitedReader>), ok : true };
                } catch(_) {
                    { value : (null : stdgo.StdGoTypes.Ref<stdgo.io.Io.LimitedReader>), ok : false };
                }, _l = __tmp__.value, _ok = __tmp__.ok;
                if (_ok && ((_size : stdgo.StdGoTypes.GoInt64) > _l.n)) {
                    if (_l.n < (1i64 : stdgo.StdGoTypes.GoInt64)) {
                        _size = (1 : stdgo.StdGoTypes.GoInt);
                    } else {
                        _size = (_l.n : stdgo.StdGoTypes.GoInt);
                    };
                };
            };
            _buf = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_size : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        };
        while (true) {
            var __tmp__ = _src.read(_buf), _nr:stdgo.StdGoTypes.GoInt = __tmp__._0, _er:stdgo.Error = __tmp__._1;
            if (_nr > (0 : stdgo.StdGoTypes.GoInt)) {
                var __tmp__ = _dst.write((_buf.__slice__((0 : stdgo.StdGoTypes.GoInt), _nr) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)), _nw:stdgo.StdGoTypes.GoInt = __tmp__._0, _ew:stdgo.Error = __tmp__._1;
                if ((_nw < (0 : stdgo.StdGoTypes.GoInt)) || (_nr < _nw)) {
                    _nw = (0 : stdgo.StdGoTypes.GoInt);
                    if (_ew == null) {
                        _ew = _errInvalidWrite;
                    };
                };
                _written = _written + ((_nw : stdgo.StdGoTypes.GoInt64));
                if (_ew != null) {
                    _err = _ew;
                    break;
                };
                if (_nr != (_nw)) {
                    _err = errShortWrite;
                    break;
                };
            };
            if (_er != null) {
                if (stdgo.Go.toInterface(_er) != (stdgo.Go.toInterface(eof))) {
                    _err = _er;
                };
                break;
            };
        };
        return { _0 : _written, _1 : _err };
    }
/**
    // LimitReader returns a Reader that reads from r
    // but stops with EOF after n bytes.
    // The underlying implementation is a *LimitedReader.
**/
function limitReader(_r:Reader, _n:stdgo.StdGoTypes.GoInt64):Reader {
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.io.Io.LimitedReader(_r, _n) : stdgo.io.Io.LimitedReader)) : stdgo.StdGoTypes.Ref<stdgo.io.Io.LimitedReader>));
    }
/**
    // NewSectionReader returns a SectionReader that reads from r
    // starting at offset off and stops with EOF after n bytes.
**/
function newSectionReader(_r:ReaderAt, _off:stdgo.StdGoTypes.GoInt64, _n:stdgo.StdGoTypes.GoInt64):stdgo.StdGoTypes.Ref<SectionReader> {
        var _remaining:stdgo.StdGoTypes.GoInt64 = (0 : stdgo.StdGoTypes.GoInt64);
        {};
        if (_off <= ((9223372036854775807i64 : stdgo.StdGoTypes.GoInt64) - _n)) {
            _remaining = _n + _off;
        } else {
            _remaining = (9223372036854775807i64 : stdgo.StdGoTypes.GoInt64);
        };
        return (stdgo.Go.setRef((new stdgo.io.Io.SectionReader(_r, _off, _off, _remaining) : stdgo.io.Io.SectionReader)) : stdgo.StdGoTypes.Ref<stdgo.io.Io.SectionReader>);
    }
/**
    // NewOffsetWriter returns an OffsetWriter that writes to w
    // starting at offset off.
**/
function newOffsetWriter(_w:WriterAt, _off:stdgo.StdGoTypes.GoInt64):stdgo.StdGoTypes.Ref<OffsetWriter> {
        return (stdgo.Go.setRef((new stdgo.io.Io.OffsetWriter(_w, _off, _off) : stdgo.io.Io.OffsetWriter)) : stdgo.StdGoTypes.Ref<stdgo.io.Io.OffsetWriter>);
    }
/**
    // TeeReader returns a Reader that writes to w what it reads from r.
    // All reads from r performed through it are matched with
    // corresponding writes to w. There is no internal buffering -
    // the write must complete before the read completes.
    // Any error encountered while writing is reported as a read error.
**/
function teeReader(_r:Reader, _w:Writer):Reader {
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.io.Io.T_teeReader(_r, _w) : stdgo.io.Io.T_teeReader)) : stdgo.StdGoTypes.Ref<stdgo.io.Io.T_teeReader>));
    }
/**
    // NopCloser returns a ReadCloser with a no-op Close method wrapping
    // the provided Reader r.
    // If r implements WriterTo, the returned ReadCloser will implement WriterTo
    // by forwarding calls to r.
**/
function nopCloser(_r:Reader):ReadCloser {
        {
            var __tmp__ = try {
                { value : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r) : WriterTo)) : WriterTo), ok : true };
            } catch(_) {
                { value : (null : stdgo.io.Io.WriterTo), ok : false };
            }, __0 = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return stdgo.Go.asInterface((new stdgo.io.Io.T_nopCloserWriterTo(_r) : stdgo.io.Io.T_nopCloserWriterTo));
            };
        };
        return stdgo.Go.asInterface((new stdgo.io.Io.T_nopCloser(_r) : stdgo.io.Io.T_nopCloser));
    }
/**
    // ReadAll reads from r until an error or EOF and returns the data it read.
    // A successful call returns err == nil, not err == EOF. Because ReadAll is
    // defined to read from src until EOF, it does not treat an EOF from Read
    // as an error to be reported.
**/
function readAll(_r:Reader):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        var _b = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((0 : stdgo.StdGoTypes.GoInt).toBasic(), (512 : stdgo.StdGoTypes.GoInt)).__setNumber32__();
        while (true) {
            var __tmp__ = _r.read((_b.__slice__((_b.length), _b.capacity) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            _b = (_b.__slice__(0, (_b.length) + _n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
            if (_err != null) {
                if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(eof))) {
                    _err = (null : stdgo.Error);
                };
                return { _0 : _b, _1 : _err };
            };
            if ((_b.length) == (_b.capacity)) {
                _b = ((_b.__append__((0 : stdgo.StdGoTypes.GoUInt8))).__slice__(0, (_b.length)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
            };
        };
    }
/**
    // MultiReader returns a Reader that's the logical concatenation of
    // the provided input readers. They're read sequentially. Once all
    // inputs have returned EOF, Read will return EOF.  If any of the readers
    // return a non-nil, non-EOF error, Read will return that error.
**/
function multiReader(_readers:haxe.Rest<Reader>):Reader {
        var _readers = new stdgo.Slice<Reader>(_readers.length, 0, ..._readers);
        var _r = new stdgo.Slice<stdgo.io.Io.Reader>((_readers.length : stdgo.StdGoTypes.GoInt).toBasic(), 0);
        stdgo.Go.copySlice(_r, _readers);
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.io.Io.T_multiReader(_r) : stdgo.io.Io.T_multiReader)) : stdgo.StdGoTypes.Ref<stdgo.io.Io.T_multiReader>));
    }
/**
    // MultiWriter creates a writer that duplicates its writes to all the
    // provided writers, similar to the Unix tee(1) command.
    //
    // Each write is written to each listed writer, one at a time.
    // If a listed writer returns an error, that overall write operation
    // stops and returns the error; it does not continue down the list.
**/
function multiWriter(_writers:haxe.Rest<Writer>):Writer {
        var _writers = new stdgo.Slice<Writer>(_writers.length, 0, ..._writers);
        var _allWriters = new stdgo.Slice<stdgo.io.Io.Writer>((0 : stdgo.StdGoTypes.GoInt).toBasic(), (_writers.length));
        for (__0 => _w in _writers) {
            {
                var __tmp__ = try {
                    { value : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_w) : stdgo.StdGoTypes.Ref<T_multiWriter>)) : stdgo.StdGoTypes.Ref<T_multiWriter>), ok : true };
                } catch(_) {
                    { value : (null : stdgo.StdGoTypes.Ref<stdgo.io.Io.T_multiWriter>), ok : false };
                }, _mw = __tmp__.value, _ok = __tmp__.ok;
                if (_ok) {
                    _allWriters = (_allWriters.__append__(..._mw._writers.__toArray__()));
                } else {
                    _allWriters = (_allWriters.__append__(_w));
                };
            };
        };
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.io.Io.T_multiWriter(_allWriters) : stdgo.io.Io.T_multiWriter)) : stdgo.StdGoTypes.Ref<stdgo.io.Io.T_multiWriter>));
    }
/**
    // Pipe creates a synchronous in-memory pipe.
    // It can be used to connect code expecting an io.Reader
    // with code expecting an io.Writer.
    //
    // Reads and Writes on the pipe are matched one to one
    // except when multiple Reads are needed to consume a single Write.
    // That is, each Write to the PipeWriter blocks until it has satisfied
    // one or more Reads from the PipeReader that fully consume
    // the written data.
    // The data is copied directly from the Write to the corresponding
    // Read (or Reads); there is no internal buffering.
    //
    // It is safe to call Read and Write in parallel with each other or with Close.
    // Parallel calls to Read and parallel calls to Write are also safe:
    // the individual calls will be gated sequentially.
**/
function pipe():{ var _0 : stdgo.StdGoTypes.Ref<PipeReader>; var _1 : stdgo.StdGoTypes.Ref<PipeWriter>; } {
        var _p = (stdgo.Go.setRef(({ _wrCh : new stdgo.Chan<stdgo.Slice<stdgo.StdGoTypes.GoUInt8>>(0, () -> (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)), _rdCh : new stdgo.Chan<stdgo.StdGoTypes.GoInt>(0, () -> (0 : stdgo.StdGoTypes.GoInt)), _done : new stdgo.Chan<T_discard>(0, () -> ({} : T_discard)) } : stdgo.io.Io.T_pipe)) : stdgo.StdGoTypes.Ref<stdgo.io.Io.T_pipe>);
        return { _0 : (stdgo.Go.setRef((new stdgo.io.Io.PipeReader(_p) : stdgo.io.Io.PipeReader)) : stdgo.StdGoTypes.Ref<stdgo.io.Io.PipeReader>), _1 : (stdgo.Go.setRef((new stdgo.io.Io.PipeWriter(_p) : stdgo.io.Io.PipeWriter)) : stdgo.StdGoTypes.Ref<stdgo.io.Io.PipeWriter>) };
    }
class LimitedReader_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<LimitedReader>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io.Io.LimitedReader_asInterface) class LimitedReader_static_extension {
    @:keep
    static public function read( _l:stdgo.StdGoTypes.Ref<LimitedReader>, _p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        @:recv var _l:stdgo.StdGoTypes.Ref<LimitedReader> = _l;
        var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        if (_l.n <= (0i64 : stdgo.StdGoTypes.GoInt64)) {
            return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : eof };
        };
        if ((_p.length : stdgo.StdGoTypes.GoInt64) > _l.n) {
            _p = (_p.__slice__((0 : stdgo.StdGoTypes.GoInt), _l.n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        };
        {
            var __tmp__ = _l.r.read(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _l.n = _l.n - ((_n : stdgo.StdGoTypes.GoInt64));
        return { _0 : _n, _1 : _err };
    }
}
class SectionReader_asInterface {
    /**
        // Size returns the size of the section in bytes.
    **/
    @:keep
    public dynamic function size():stdgo.StdGoTypes.GoInt64 return __self__.value.size();
    @:keep
    public dynamic function readAt(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _off:stdgo.StdGoTypes.GoInt64):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.readAt(_p, _off);
    @:keep
    public dynamic function seek(_offset:stdgo.StdGoTypes.GoInt64, _whence:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } return __self__.value.seek(_offset, _whence);
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<SectionReader>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io.Io.SectionReader_asInterface) class SectionReader_static_extension {
    /**
        // Size returns the size of the section in bytes.
    **/
    @:keep
    static public function size( _s:stdgo.StdGoTypes.Ref<SectionReader>):stdgo.StdGoTypes.GoInt64 {
        @:recv var _s:stdgo.StdGoTypes.Ref<SectionReader> = _s;
        return _s._limit - _s._base;
    }
    @:keep
    static public function readAt( _s:stdgo.StdGoTypes.Ref<SectionReader>, _p:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _off:stdgo.StdGoTypes.GoInt64):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.StdGoTypes.Ref<SectionReader> = _s;
        var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        if ((_off < (0i64 : stdgo.StdGoTypes.GoInt64)) || (_off >= (_s._limit - _s._base))) {
            return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : eof };
        };
        _off = _off + (_s._base);
        {
            var _max:stdgo.StdGoTypes.GoInt64 = _s._limit - _off;
            if ((_p.length : stdgo.StdGoTypes.GoInt64) > _max) {
                _p = (_p.__slice__((0 : stdgo.StdGoTypes.GoInt), _max) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
                {
                    var __tmp__ = _s._r.readAt(_p, _off);
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err == null) {
                    _err = eof;
                };
                return { _0 : _n, _1 : _err };
            };
        };
        return _s._r.readAt(_p, _off);
    }
    @:keep
    static public function seek( _s:stdgo.StdGoTypes.Ref<SectionReader>, _offset:stdgo.StdGoTypes.GoInt64, _whence:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.StdGoTypes.Ref<SectionReader> = _s;
        {
            final __value__ = _whence;
            if (__value__ == ((0 : stdgo.StdGoTypes.GoInt))) {
                _offset = _offset + (_s._base);
            } else if (__value__ == ((1 : stdgo.StdGoTypes.GoInt))) {
                _offset = _offset + (_s._off);
            } else if (__value__ == ((2 : stdgo.StdGoTypes.GoInt))) {
                _offset = _offset + (_s._limit);
            } else {
                return { _0 : (0i64 : stdgo.StdGoTypes.GoInt64), _1 : _errWhence };
            };
        };
        if (_offset < _s._base) {
            return { _0 : (0i64 : stdgo.StdGoTypes.GoInt64), _1 : _errOffset };
        };
        _s._off = _offset;
        return { _0 : _offset - _s._base, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function read( _s:stdgo.StdGoTypes.Ref<SectionReader>, _p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.StdGoTypes.Ref<SectionReader> = _s;
        var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        if (_s._off >= _s._limit) {
            return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : eof };
        };
        {
            var _max:stdgo.StdGoTypes.GoInt64 = _s._limit - _s._off;
            if ((_p.length : stdgo.StdGoTypes.GoInt64) > _max) {
                _p = (_p.__slice__((0 : stdgo.StdGoTypes.GoInt), _max) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
            };
        };
        {
            var __tmp__ = _s._r.readAt(_p, _s._off);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _s._off = _s._off + ((_n : stdgo.StdGoTypes.GoInt64));
        return { _0 : _n, _1 : _err };
    }
}
class OffsetWriter_asInterface {
    @:keep
    public dynamic function seek(_offset:stdgo.StdGoTypes.GoInt64, _whence:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } return __self__.value.seek(_offset, _whence);
    @:keep
    public dynamic function writeAt(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _off:stdgo.StdGoTypes.GoInt64):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.writeAt(_p, _off);
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<OffsetWriter>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io.Io.OffsetWriter_asInterface) class OffsetWriter_static_extension {
    @:keep
    static public function seek( _o:stdgo.StdGoTypes.Ref<OffsetWriter>, _offset:stdgo.StdGoTypes.GoInt64, _whence:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _o:stdgo.StdGoTypes.Ref<OffsetWriter> = _o;
        {
            final __value__ = _whence;
            if (__value__ == ((0 : stdgo.StdGoTypes.GoInt))) {
                _offset = _offset + (_o._base);
            } else if (__value__ == ((1 : stdgo.StdGoTypes.GoInt))) {
                _offset = _offset + (_o._off);
            } else {
                return { _0 : (0i64 : stdgo.StdGoTypes.GoInt64), _1 : _errWhence };
            };
        };
        if (_offset < _o._base) {
            return { _0 : (0i64 : stdgo.StdGoTypes.GoInt64), _1 : _errOffset };
        };
        _o._off = _offset;
        return { _0 : _offset - _o._base, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function writeAt( _o:stdgo.StdGoTypes.Ref<OffsetWriter>, _p:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _off:stdgo.StdGoTypes.GoInt64):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        @:recv var _o:stdgo.StdGoTypes.Ref<OffsetWriter> = _o;
        var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        if (_off < (0i64 : stdgo.StdGoTypes.GoInt64)) {
            return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : _errOffset };
        };
        _off = _off + (_o._base);
        return _o._w.writeAt(_p, _off);
    }
    @:keep
    static public function write( _o:stdgo.StdGoTypes.Ref<OffsetWriter>, _p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        @:recv var _o:stdgo.StdGoTypes.Ref<OffsetWriter> = _o;
        var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = _o._w.writeAt(_p, _o._off);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _o._off = _o._off + ((_n : stdgo.StdGoTypes.GoInt64));
        return { _0 : _n, _1 : _err };
    }
}
class T_teeReader_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_teeReader>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io.Io.T_teeReader_asInterface) class T_teeReader_static_extension {
    @:keep
    static public function read( _t:stdgo.StdGoTypes.Ref<T_teeReader>, _p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.StdGoTypes.Ref<T_teeReader> = _t;
        var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = _t._r.read(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_n > (0 : stdgo.StdGoTypes.GoInt)) {
            {
                var __tmp__ = _t._w.write((_p.__slice__(0, _n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : _n, _1 : _err };
                };
            };
        };
        return { _0 : _n, _1 : _err };
    }
}
class T_discard_asInterface {
    @:keep
    public dynamic function readFrom(_r:Reader):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } return __self__.value.readFrom(_r);
    @:keep
    public dynamic function writeString(_s:stdgo.GoString):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.writeString(_s);
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_discard>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io.Io.T_discard_asInterface) class T_discard_static_extension {
    @:keep
    static public function readFrom( _:T_discard, _r:Reader):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _:T_discard = _?.__copy__();
        var _n:stdgo.StdGoTypes.GoInt64 = (0 : stdgo.StdGoTypes.GoInt64), _err:stdgo.Error = (null : stdgo.Error);
        var _bufp = (stdgo.Go.typeAssert((_blackHolePool.get() : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoByte>>)) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoByte>>);
        var _readSize:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        while (true) {
            {
                var __tmp__ = _r.read((_bufp : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                _readSize = __tmp__._0;
                _err = __tmp__._1;
            };
            _n = _n + ((_readSize : stdgo.StdGoTypes.GoInt64));
            if (_err != null) {
                _blackHolePool.put(stdgo.Go.toInterface(_bufp));
                if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(eof))) {
                    return { _0 : _n, _1 : (null : stdgo.Error) };
                };
                return { _0 : _n, _1 : _err };
            };
        };
    }
    @:keep
    static public function writeString( _:T_discard, _s:stdgo.GoString):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:T_discard = _?.__copy__();
        return { _0 : (_s.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function write( _:T_discard, _p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:T_discard = _?.__copy__();
        return { _0 : (_p.length), _1 : (null : stdgo.Error) };
    }
}
class T_nopCloser_asInterface {
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:embedded
    public dynamic function read(_p_:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p_);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_nopCloser>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io.Io.T_nopCloser_asInterface) class T_nopCloser_static_extension {
    @:keep
    static public function close( _:T_nopCloser):stdgo.Error {
        @:recv var _:T_nopCloser = _?.__copy__();
        return (null : stdgo.Error);
    }
    @:embedded
    public static function read( __self__:T_nopCloser, _p_:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.read(_p_);
}
class T_nopCloserWriterTo_asInterface {
    @:keep
    public dynamic function writeTo(_w:Writer):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } return __self__.value.writeTo(_w);
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:embedded
    public dynamic function read(_p_:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p_);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_nopCloserWriterTo>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io.Io.T_nopCloserWriterTo_asInterface) class T_nopCloserWriterTo_static_extension {
    @:keep
    static public function writeTo( _c:T_nopCloserWriterTo, _w:Writer):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _c:T_nopCloserWriterTo = _c?.__copy__();
        var _n:stdgo.StdGoTypes.GoInt64 = (0 : stdgo.StdGoTypes.GoInt64), _err:stdgo.Error = (null : stdgo.Error);
        return (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c.reader) : WriterTo)) : WriterTo).writeTo(_w);
    }
    @:keep
    static public function close( _:T_nopCloserWriterTo):stdgo.Error {
        @:recv var _:T_nopCloserWriterTo = _?.__copy__();
        return (null : stdgo.Error);
    }
    @:embedded
    public static function read( __self__:T_nopCloserWriterTo, _p_:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.read(_p_);
}
class T_eofReader_asInterface {
    @:keep
    public dynamic function read(_0:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_eofReader>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io.Io.T_eofReader_asInterface) class T_eofReader_static_extension {
    @:keep
    static public function read( _:T_eofReader, _0:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:T_eofReader = _?.__copy__();
        return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : eof };
    }
}
class T_multiReader_asInterface {
    @:keep
    public dynamic function _writeToWithBuffer(_w:Writer, _buf:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } return __self__.value._writeToWithBuffer(_w, _buf);
    @:keep
    public dynamic function writeTo(_w:Writer):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } return __self__.value.writeTo(_w);
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_multiReader>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io.Io.T_multiReader_asInterface) class T_multiReader_static_extension {
    @:keep
    static public function _writeToWithBuffer( _mr:stdgo.StdGoTypes.Ref<T_multiReader>, _w:Writer, _buf:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _mr:stdgo.StdGoTypes.Ref<T_multiReader> = _mr;
        var _sum:stdgo.StdGoTypes.GoInt64 = (0 : stdgo.StdGoTypes.GoInt64), _err:stdgo.Error = (null : stdgo.Error);
        for (_i => _r in _mr._readers) {
            var _n:stdgo.StdGoTypes.GoInt64 = (0 : stdgo.StdGoTypes.GoInt64);
            {
                var __tmp__ = try {
                    { value : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r) : stdgo.StdGoTypes.Ref<T_multiReader>)) : stdgo.StdGoTypes.Ref<T_multiReader>), ok : true };
                } catch(_) {
                    { value : (null : stdgo.StdGoTypes.Ref<stdgo.io.Io.T_multiReader>), ok : false };
                }, _subMr = __tmp__.value, _ok = __tmp__.ok;
                if (_ok) {
                    {
                        var __tmp__ = _subMr._writeToWithBuffer(_w, _buf);
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                    };
                } else {
                    {
                        var __tmp__ = _copyBuffer(_w, _r, _buf);
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                    };
                };
            };
            _sum = _sum + (_n);
            if (_err != null) {
                _mr._readers = (_mr._readers.__slice__(_i) : stdgo.Slice<stdgo.io.Io.Reader>);
                return { _0 : _sum, _1 : _err };
            };
            _mr._readers[(_i : stdgo.StdGoTypes.GoInt)] = (null : stdgo.io.Io.Reader);
        };
        _mr._readers = (null : stdgo.Slice<stdgo.io.Io.Reader>);
        return { _0 : _sum, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function writeTo( _mr:stdgo.StdGoTypes.Ref<T_multiReader>, _w:Writer):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _mr:stdgo.StdGoTypes.Ref<T_multiReader> = _mr;
        var _sum:stdgo.StdGoTypes.GoInt64 = (0 : stdgo.StdGoTypes.GoInt64), _err:stdgo.Error = (null : stdgo.Error);
        return _mr._writeToWithBuffer(_w, new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((32768 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__());
    }
    @:keep
    static public function read( _mr:stdgo.StdGoTypes.Ref<T_multiReader>, _p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        @:recv var _mr:stdgo.StdGoTypes.Ref<T_multiReader> = _mr;
        var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        while ((_mr._readers.length) > (0 : stdgo.StdGoTypes.GoInt)) {
            if ((_mr._readers.length) == ((1 : stdgo.StdGoTypes.GoInt))) {
                {
                    var __tmp__ = try {
                        { value : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_mr._readers[(0 : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<T_multiReader>)) : stdgo.StdGoTypes.Ref<T_multiReader>), ok : true };
                    } catch(_) {
                        { value : (null : stdgo.StdGoTypes.Ref<stdgo.io.Io.T_multiReader>), ok : false };
                    }, _r = __tmp__.value, _ok = __tmp__.ok;
                    if (_ok) {
                        _mr._readers = _r._readers;
                        continue;
                    };
                };
            };
            {
                var __tmp__ = _mr._readers[(0 : stdgo.StdGoTypes.GoInt)].read(_p);
                _n = __tmp__._0;
                _err = __tmp__._1;
            };
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(eof))) {
                _mr._readers[(0 : stdgo.StdGoTypes.GoInt)] = stdgo.Go.asInterface((new stdgo.io.Io.T_eofReader() : stdgo.io.Io.T_eofReader));
                _mr._readers = (_mr._readers.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.io.Io.Reader>);
            };
            if ((_n > (0 : stdgo.StdGoTypes.GoInt)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(eof))) {
                if ((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(eof)) && (_mr._readers.length > (0 : stdgo.StdGoTypes.GoInt))) {
                    _err = (null : stdgo.Error);
                };
                return { _0 : _n, _1 : _err };
            };
        };
        return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : eof };
    }
}
class T_multiWriter_asInterface {
    @:keep
    public dynamic function writeString(_s:stdgo.GoString):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.writeString(_s);
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_multiWriter>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io.Io.T_multiWriter_asInterface) class T_multiWriter_static_extension {
    @:keep
    static public function writeString( _t:stdgo.StdGoTypes.Ref<T_multiWriter>, _s:stdgo.GoString):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.StdGoTypes.Ref<T_multiWriter> = _t;
        var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        var _p:stdgo.Slice<stdgo.StdGoTypes.GoByte> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        for (__0 => _w in _t._writers) {
            {
                var __tmp__ = try {
                    { value : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_w) : StringWriter)) : StringWriter), ok : true };
                } catch(_) {
                    { value : (null : stdgo.io.Io.StringWriter), ok : false };
                }, _sw = __tmp__.value, _ok = __tmp__.ok;
                if (_ok) {
                    {
                        var __tmp__ = _sw.writeString(_s?.__copy__());
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                    };
                } else {
                    if (_p == null) {
                        _p = (_s : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
                    };
                    {
                        var __tmp__ = _w.write(_p);
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                    };
                };
            };
            if (_err != null) {
                return { _0 : _n, _1 : _err };
            };
            if (_n != ((_s.length))) {
                _err = errShortWrite;
                return { _0 : _n, _1 : _err };
            };
        };
        return { _0 : (_s.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function write( _t:stdgo.StdGoTypes.Ref<T_multiWriter>, _p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.StdGoTypes.Ref<T_multiWriter> = _t;
        var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        for (__0 => _w in _t._writers) {
            {
                var __tmp__ = _w.write(_p);
                _n = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _n, _1 : _err };
            };
            if (_n != ((_p.length))) {
                _err = errShortWrite;
                return { _0 : _n, _1 : _err };
            };
        };
        return { _0 : (_p.length), _1 : (null : stdgo.Error) };
    }
}
class T_onceError_asInterface {
    @:keep
    public dynamic function load():stdgo.Error return __self__.value.load();
    @:keep
    public dynamic function store(_err:stdgo.Error):Void __self__.value.store(_err);
    @:embedded
    public dynamic function _unlockSlow(_new:stdgo.StdGoTypes.GoInt32):Void __self__.value._unlockSlow(_new);
    @:embedded
    public dynamic function _lockSlow():Void __self__.value._lockSlow();
    @:embedded
    public dynamic function unlock():Void __self__.value.unlock();
    @:embedded
    public dynamic function tryLock():Bool return __self__.value.tryLock();
    @:embedded
    public dynamic function lock():Void __self__.value.lock();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_onceError>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io.Io.T_onceError_asInterface) class T_onceError_static_extension {
    @:keep
    static public function load( _a:stdgo.StdGoTypes.Ref<T_onceError>):stdgo.Error {
        @:recv var _a:stdgo.StdGoTypes.Ref<T_onceError> = _a;
        var __deferstack__:Array<Void -> Void> = [];
        _a.lock();
        try {
            __deferstack__.unshift(() -> _a.unlock());
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _a._err;
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return (null : stdgo.Error);
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return (null : stdgo.Error);
        };
    }
    @:keep
    static public function store( _a:stdgo.StdGoTypes.Ref<T_onceError>, _err:stdgo.Error):Void {
        @:recv var _a:stdgo.StdGoTypes.Ref<T_onceError> = _a;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _a.lock();
            __deferstack__.unshift(() -> _a.unlock());
            if (_a._err != null) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            _a._err = _err;
            for (defer in __deferstack__) {
                defer();
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
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
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
    @:embedded
    public static function _unlockSlow( __self__:T_onceError, _new:stdgo.StdGoTypes.GoInt32) __self__._unlockSlow(_new);
    @:embedded
    public static function _lockSlow( __self__:T_onceError) __self__._lockSlow();
    @:embedded
    public static function unlock( __self__:T_onceError) __self__.unlock();
    @:embedded
    public static function tryLock( __self__:T_onceError):Bool return __self__.tryLock();
    @:embedded
    public static function lock( __self__:T_onceError) __self__.lock();
}
class T_pipe_asInterface {
    /**
        // writeCloseError is considered internal to the pipe type.
    **/
    @:keep
    public dynamic function _writeCloseError():stdgo.Error return __self__.value._writeCloseError();
    /**
        // readCloseError is considered internal to the pipe type.
    **/
    @:keep
    public dynamic function _readCloseError():stdgo.Error return __self__.value._readCloseError();
    @:keep
    public dynamic function _closeWrite(_err:stdgo.Error):stdgo.Error return __self__.value._closeWrite(_err);
    @:keep
    public dynamic function _write(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value._write(_b);
    @:keep
    public dynamic function _closeRead(_err:stdgo.Error):stdgo.Error return __self__.value._closeRead(_err);
    @:keep
    public dynamic function _read(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value._read(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_pipe>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io.Io.T_pipe_asInterface) class T_pipe_static_extension {
    /**
        // writeCloseError is considered internal to the pipe type.
    **/
    @:keep
    static public function _writeCloseError( _p:stdgo.StdGoTypes.Ref<T_pipe>):stdgo.Error {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_pipe> = _p;
        var _werr:stdgo.Error = _p._werr.load();
        {
            var _rerr:stdgo.Error = _p._rerr.load();
            if ((_werr == null) && (_rerr != null)) {
                return _rerr;
            };
        };
        return errClosedPipe;
    }
    /**
        // readCloseError is considered internal to the pipe type.
    **/
    @:keep
    static public function _readCloseError( _p:stdgo.StdGoTypes.Ref<T_pipe>):stdgo.Error {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_pipe> = _p;
        var _rerr:stdgo.Error = _p._rerr.load();
        {
            var _werr:stdgo.Error = _p._werr.load();
            if ((_rerr == null) && (_werr != null)) {
                return _werr;
            };
        };
        return errClosedPipe;
    }
    @:keep
    static public function _closeWrite( _p:stdgo.StdGoTypes.Ref<T_pipe>, _err:stdgo.Error):stdgo.Error {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_pipe> = _p;
        if (_err == null) {
            _err = eof;
        };
        _p._werr.store(_err);
        _p._once.do_(function():Void {
            if (_p._done != null) _p._done.__close__();
        });
        return (null : stdgo.Error);
    }
    @:keep
    static public function _write( _p:stdgo.StdGoTypes.Ref<T_pipe>, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_pipe> = _p;
        var __deferstack__:Array<Void -> Void> = [];
        var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        stdgo.Go.select([_p._done.__get__() => {
            return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : _p._writeCloseError() };
        }, {
            _p._wrMu.lock();
            __deferstack__.unshift(() -> _p._wrMu.unlock());
        }]);
        try {
            {
                var _once:Bool = true;
                stdgo.Go.cfor(_once || (_b.length > (0 : stdgo.StdGoTypes.GoInt)), _once = false, {
                    stdgo.Go.select([_p._done.__get__() => {
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return { _0 : _n, _1 : _p._writeCloseError() };
                        };
                    }, _p._wrCh.__send__(_b) => {
                        var _nw:stdgo.StdGoTypes.GoInt = _p._rdCh.__get__();
                        _b = (_b.__slice__(_nw) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
                        _n = _n + (_nw);
                    }]);
                });
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return { _0 : _n, _1 : (null : stdgo.Error) };
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : _n, _1 : _err };
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return { _0 : _n, _1 : _err };
        };
    }
    @:keep
    static public function _closeRead( _p:stdgo.StdGoTypes.Ref<T_pipe>, _err:stdgo.Error):stdgo.Error {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_pipe> = _p;
        if (_err == null) {
            _err = errClosedPipe;
        };
        _p._rerr.store(_err);
        _p._once.do_(function():Void {
            if (_p._done != null) _p._done.__close__();
        });
        return (null : stdgo.Error);
    }
    @:keep
    static public function _read( _p:stdgo.StdGoTypes.Ref<T_pipe>, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_pipe> = _p;
        var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        stdgo.Go.select([_p._done.__get__() => {
            return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : _p._readCloseError() };
        }, {}]);
        {
            stdgo.Go.select([_p._done.__get__() => {
                return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : _p._readCloseError() };
            }, var _bw = _p._wrCh.__get__() => {
                var _nr:stdgo.StdGoTypes.GoInt = stdgo.Go.copySlice(_b, _bw);
                _p._rdCh.__send__(_nr);
                return { _0 : _nr, _1 : (null : stdgo.Error) };
            }]);
            return { _0 : _n, _1 : _err };
        };
    }
}
class PipeReader_asInterface {
    /**
        // CloseWithError closes the reader; subsequent writes
        // to the write half of the pipe will return the error err.
        //
        // CloseWithError never overwrites the previous error if it exists
        // and always returns nil.
    **/
    @:keep
    public dynamic function closeWithError(_err:stdgo.Error):stdgo.Error return __self__.value.closeWithError(_err);
    /**
        // Close closes the reader; subsequent writes to the
        // write half of the pipe will return the error ErrClosedPipe.
    **/
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    /**
        // Read implements the standard Read interface:
        // it reads data from the pipe, blocking until a writer
        // arrives or the write end is closed.
        // If the write end is closed with an error, that error is
        // returned as err; otherwise err is EOF.
    **/
    @:keep
    public dynamic function read(_data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_data);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<PipeReader>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io.Io.PipeReader_asInterface) class PipeReader_static_extension {
    /**
        // CloseWithError closes the reader; subsequent writes
        // to the write half of the pipe will return the error err.
        //
        // CloseWithError never overwrites the previous error if it exists
        // and always returns nil.
    **/
    @:keep
    static public function closeWithError( _r:stdgo.StdGoTypes.Ref<PipeReader>, _err:stdgo.Error):stdgo.Error {
        @:recv var _r:stdgo.StdGoTypes.Ref<PipeReader> = _r;
        return _r._p._closeRead(_err);
    }
    /**
        // Close closes the reader; subsequent writes to the
        // write half of the pipe will return the error ErrClosedPipe.
    **/
    @:keep
    static public function close( _r:stdgo.StdGoTypes.Ref<PipeReader>):stdgo.Error {
        @:recv var _r:stdgo.StdGoTypes.Ref<PipeReader> = _r;
        return _r.closeWithError((null : stdgo.Error));
    }
    /**
        // Read implements the standard Read interface:
        // it reads data from the pipe, blocking until a writer
        // arrives or the write end is closed.
        // If the write end is closed with an error, that error is
        // returned as err; otherwise err is EOF.
    **/
    @:keep
    static public function read( _r:stdgo.StdGoTypes.Ref<PipeReader>, _data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.StdGoTypes.Ref<PipeReader> = _r;
        var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        return _r._p._read(_data);
    }
}
class PipeWriter_asInterface {
    /**
        // CloseWithError closes the writer; subsequent reads from the
        // read half of the pipe will return no bytes and the error err,
        // or EOF if err is nil.
        //
        // CloseWithError never overwrites the previous error if it exists
        // and always returns nil.
    **/
    @:keep
    public dynamic function closeWithError(_err:stdgo.Error):stdgo.Error return __self__.value.closeWithError(_err);
    /**
        // Close closes the writer; subsequent reads from the
        // read half of the pipe will return no bytes and EOF.
    **/
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    /**
        // Write implements the standard Write interface:
        // it writes data to the pipe, blocking until one or more readers
        // have consumed all the data or the read end is closed.
        // If the read end is closed with an error, that err is
        // returned as err; otherwise err is ErrClosedPipe.
    **/
    @:keep
    public dynamic function write(_data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_data);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<PipeWriter>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.io.Io.PipeWriter_asInterface) class PipeWriter_static_extension {
    /**
        // CloseWithError closes the writer; subsequent reads from the
        // read half of the pipe will return no bytes and the error err,
        // or EOF if err is nil.
        //
        // CloseWithError never overwrites the previous error if it exists
        // and always returns nil.
    **/
    @:keep
    static public function closeWithError( _w:stdgo.StdGoTypes.Ref<PipeWriter>, _err:stdgo.Error):stdgo.Error {
        @:recv var _w:stdgo.StdGoTypes.Ref<PipeWriter> = _w;
        return _w._p._closeWrite(_err);
    }
    /**
        // Close closes the writer; subsequent reads from the
        // read half of the pipe will return no bytes and EOF.
    **/
    @:keep
    static public function close( _w:stdgo.StdGoTypes.Ref<PipeWriter>):stdgo.Error {
        @:recv var _w:stdgo.StdGoTypes.Ref<PipeWriter> = _w;
        return _w.closeWithError((null : stdgo.Error));
    }
    /**
        // Write implements the standard Write interface:
        // it writes data to the pipe, blocking until one or more readers
        // have consumed all the data or the read end is closed.
        // If the read end is closed with an error, that err is
        // returned as err; otherwise err is ErrClosedPipe.
    **/
    @:keep
    static public function write( _w:stdgo.StdGoTypes.Ref<PipeWriter>, _data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.StdGoTypes.Ref<PipeWriter> = _w;
        var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        return _w._p._write(_data);
    }
}
