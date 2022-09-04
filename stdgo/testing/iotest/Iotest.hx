package stdgo.testing.iotest;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

/**
	// ErrTimeout is a fake timeout error.
**/
var errTimeout:stdgo.Error = (null : stdgo.Error);

var _truncateWriterTests:Slice<T__struct_0> = (null : Slice<T__struct_0>);

/**
	// Package iotest implements Readers and Writers useful mainly for testing.
**/
private var __go2hxdoc__package:Bool;

@:structInit @:using(stdgo.testing.iotest.Iotest.T_writeLogger_static_extension) private class T_writeLogger {
	public var _prefix:GoString = "";
	public var _w:stdgo.io.Io.Writer = (null : stdgo.io.Io.Writer);

	public function new(?_prefix:GoString, ?_w:stdgo.io.Io.Writer) {
		if (_prefix != null)
			this._prefix = _prefix;
		if (_w != null)
			this._w = _w;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_writeLogger(_prefix, _w);
	}
}

@:structInit @:using(stdgo.testing.iotest.Iotest.T_readLogger_static_extension) private class T_readLogger {
	public var _prefix:GoString = "";
	public var _r:stdgo.io.Io.Reader = (null : stdgo.io.Io.Reader);

	public function new(?_prefix:GoString, ?_r:stdgo.io.Io.Reader) {
		if (_prefix != null)
			this._prefix = _prefix;
		if (_r != null)
			this._r = _r;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_readLogger(_prefix, _r);
	}
}

@:structInit @:using(stdgo.testing.iotest.Iotest.T_errWriter_static_extension) private class T_errWriter {
	public var _err:stdgo.Error = (null : stdgo.Error);

	public function new(?_err:stdgo.Error) {
		if (_err != null)
			this._err = _err;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_errWriter(_err);
	}
}

@:structInit @:using(stdgo.testing.iotest.Iotest.T_oneByteReader_static_extension) private class T_oneByteReader {
	public var _r:stdgo.io.Io.Reader = (null : stdgo.io.Io.Reader);

	public function new(?_r:stdgo.io.Io.Reader) {
		if (_r != null)
			this._r = _r;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_oneByteReader(_r);
	}
}

@:structInit @:using(stdgo.testing.iotest.Iotest.T_halfReader_static_extension) private class T_halfReader {
	public var _r:stdgo.io.Io.Reader = (null : stdgo.io.Io.Reader);

	public function new(?_r:stdgo.io.Io.Reader) {
		if (_r != null)
			this._r = _r;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_halfReader(_r);
	}
}

@:structInit @:using(stdgo.testing.iotest.Iotest.T_dataErrReader_static_extension) private class T_dataErrReader {
	public var _r:stdgo.io.Io.Reader = (null : stdgo.io.Io.Reader);
	public var _unread:Slice<GoUInt8> = (null : Slice<GoUInt8>);
	public var _data:Slice<GoUInt8> = (null : Slice<GoUInt8>);

	public function new(?_r:stdgo.io.Io.Reader, ?_unread:Slice<GoUInt8>, ?_data:Slice<GoUInt8>) {
		if (_r != null)
			this._r = _r;
		if (_unread != null)
			this._unread = _unread;
		if (_data != null)
			this._data = _data;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_dataErrReader(_r, _unread, _data);
	}
}

@:structInit @:using(stdgo.testing.iotest.Iotest.T_timeoutReader_static_extension) private class T_timeoutReader {
	public var _r:stdgo.io.Io.Reader = (null : stdgo.io.Io.Reader);
	public var _count:GoInt = 0;

	public function new(?_r:stdgo.io.Io.Reader, ?_count:GoInt) {
		if (_r != null)
			this._r = _r;
		if (_count != null)
			this._count = _count;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_timeoutReader(_r, _count);
	}
}

@:structInit @:using(stdgo.testing.iotest.Iotest.T_errReader_static_extension) private class T_errReader {
	public var _err:stdgo.Error = (null : stdgo.Error);

	public function new(?_err:stdgo.Error) {
		if (_err != null)
			this._err = _err;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_errReader(_err);
	}
}

@:structInit @:using(stdgo.testing.iotest.Iotest.T_smallByteReader_static_extension) private class T_smallByteReader {
	public var _r:stdgo.io.Io.Reader = (null : stdgo.io.Io.Reader);
	public var _off:GoInt = 0;
	public var _n:GoInt = 0;

	public function new(?_r:stdgo.io.Io.Reader, ?_off:GoInt, ?_n:GoInt) {
		if (_r != null)
			this._r = _r;
		if (_off != null)
			this._off = _off;
		if (_n != null)
			this._n = _n;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_smallByteReader(_r, _off, _n);
	}
}

@:structInit @:using(stdgo.testing.iotest.Iotest.T_truncateWriter_static_extension) private class T_truncateWriter {
	public var _w:stdgo.io.Io.Writer = (null : stdgo.io.Io.Writer);
	public var _n:GoInt64 = 0;

	public function new(?_w:stdgo.io.Io.Writer, ?_n:GoInt64) {
		if (_w != null)
			this._w = _w;
		if (_n != null)
			this._n = _n;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_truncateWriter(_w, _n);
	}
}

@:local typedef T__struct_0 = {
	public var _in:GoString;
	public var _want:GoString;
	public var _trunc:GoInt64;
	public var _n:GoInt;
};

/**
	// NewWriteLogger returns a writer that behaves like w except
	// that it logs (using log.Printf) each write to standard error,
	// printing the prefix and the hexadecimal data written.
**/
function newWriteLogger(_prefix:GoString, _w:stdgo.io.Io.Writer):stdgo.io.Io.Writer
	throw "testing.iotest.newWriteLogger is not yet implemented";

/**
	// NewReadLogger returns a reader that behaves like r except
	// that it logs (using log.Printf) each read to standard error,
	// printing the prefix and the hexadecimal data read.
**/
function newReadLogger(_prefix:GoString, _r:stdgo.io.Io.Reader):stdgo.io.Io.Reader
	throw "testing.iotest.newReadLogger is not yet implemented";

function testWriteLogger(_t:stdgo.testing.Testing.T):Void
	throw "testing.iotest.testWriteLogger is not yet implemented";

function testWriteLogger_errorOnWrite(_t:stdgo.testing.Testing.T):Void
	throw "testing.iotest.testWriteLogger_errorOnWrite is not yet implemented";

function testReadLogger(_t:stdgo.testing.Testing.T):Void
	throw "testing.iotest.testReadLogger is not yet implemented";

function testReadLogger_errorOnRead(_t:stdgo.testing.Testing.T):Void
	throw "testing.iotest.testReadLogger_errorOnRead is not yet implemented";

/**
	// OneByteReader returns a Reader that implements
	// each non-empty Read by reading one byte from r.
**/
function oneByteReader(_r:stdgo.io.Io.Reader):stdgo.io.Io.Reader
	throw "testing.iotest.oneByteReader is not yet implemented";

/**
	// HalfReader returns a Reader that implements Read
	// by reading half as many requested bytes from r.
**/
function halfReader(_r:stdgo.io.Io.Reader):stdgo.io.Io.Reader
	throw "testing.iotest.halfReader is not yet implemented";

/**
	// DataErrReader changes the way errors are handled by a Reader. Normally, a
	// Reader returns an error (typically EOF) from the first Read call after the
	// last piece of data is read. DataErrReader wraps a Reader and changes its
	// behavior so the final error is returned along with the final data, instead
	// of in the first call after the final data.
**/
function dataErrReader(_r:stdgo.io.Io.Reader):stdgo.io.Io.Reader
	throw "testing.iotest.dataErrReader is not yet implemented";

/**
	// TimeoutReader returns ErrTimeout on the second read
	// with no data. Subsequent calls to read succeed.
**/
function timeoutReader(_r:stdgo.io.Io.Reader):stdgo.io.Io.Reader
	throw "testing.iotest.timeoutReader is not yet implemented";

/**
	// ErrReader returns an io.Reader that returns 0, err from all Read calls.
**/
function errReader(_err:Error):stdgo.io.Io.Reader
	throw "testing.iotest.errReader is not yet implemented";

/**
	// TestReader tests that reading from r returns the expected file content.
	// It does reads of different sizes, until EOF.
	// If r implements io.ReaderAt or io.Seeker, TestReader also checks
	// that those operations behave as they should.
	//
	// If TestReader finds any misbehaviors, it returns an error reporting them.
	// The error text may span multiple lines.
**/
function testReader(_r:stdgo.io.Io.Reader, _content:Slice<GoByte>):Error
	throw "testing.iotest.testReader is not yet implemented";

function testOneByteReader_nonEmptyReader(_t:stdgo.testing.Testing.T):Void
	throw "testing.iotest.testOneByteReader_nonEmptyReader is not yet implemented";

function testOneByteReader_emptyReader(_t:stdgo.testing.Testing.T):Void
	throw "testing.iotest.testOneByteReader_emptyReader is not yet implemented";

function testHalfReader_nonEmptyReader(_t:stdgo.testing.Testing.T):Void
	throw "testing.iotest.testHalfReader_nonEmptyReader is not yet implemented";

function testHalfReader_emptyReader(_t:stdgo.testing.Testing.T):Void
	throw "testing.iotest.testHalfReader_emptyReader is not yet implemented";

function testTimeOutReader_nonEmptyReader(_t:stdgo.testing.Testing.T):Void
	throw "testing.iotest.testTimeOutReader_nonEmptyReader is not yet implemented";

function testTimeOutReader_emptyReader(_t:stdgo.testing.Testing.T):Void
	throw "testing.iotest.testTimeOutReader_emptyReader is not yet implemented";

function testDataErrReader_nonEmptyReader(_t:stdgo.testing.Testing.T):Void
	throw "testing.iotest.testDataErrReader_nonEmptyReader is not yet implemented";

function testDataErrReader_emptyReader(_t:stdgo.testing.Testing.T):Void
	throw "testing.iotest.testDataErrReader_emptyReader is not yet implemented";

function testErrReader(_t:stdgo.testing.Testing.T):Void
	throw "testing.iotest.testErrReader is not yet implemented";

function testStringsReader(_t:stdgo.testing.Testing.T):Void
	throw "testing.iotest.testStringsReader is not yet implemented";

/**
	// TruncateWriter returns a Writer that writes to w
	// but stops silently after n bytes.
**/
function truncateWriter(_w:stdgo.io.Io.Writer, _n:GoInt64):stdgo.io.Io.Writer
	throw "testing.iotest.truncateWriter is not yet implemented";

function testTruncateWriter(_t:stdgo.testing.Testing.T):Void
	throw "testing.iotest.testTruncateWriter is not yet implemented";

@:keep private class T_writeLogger_static_extension {
	@:keep
	static public function write(_l:T_writeLogger, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		throw "testing.iotest.write is not yet implemented";
}

class T_writeLogger_asInterface {
	@:keep
	public var write:Slice<GoByte> -> {
		var _0:GoInt;
		var _1:Error;
	} = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:T_writeLogger;
}

@:keep private class T_readLogger_static_extension {
	@:keep
	static public function read(_l:T_readLogger, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		throw "testing.iotest.read is not yet implemented";
}

class T_readLogger_asInterface {
	@:keep
	public var read:Slice<GoByte> -> {
		var _0:GoInt;
		var _1:Error;
	} = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:T_readLogger;
}

@:keep private class T_errWriter_static_extension {
	@:keep
	static public function write(_w:T_errWriter, _0:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		throw "testing.iotest.write is not yet implemented";
}

class T_errWriter_asInterface {
	@:keep
	public var write:Slice<GoByte> -> {
		var _0:GoInt;
		var _1:Error;
	} = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:T_errWriter;
}

@:keep private class T_oneByteReader_static_extension {
	@:keep
	static public function read(_r:T_oneByteReader, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		throw "testing.iotest.read is not yet implemented";
}

class T_oneByteReader_asInterface {
	@:keep
	public var read:Slice<GoByte> -> {
		var _0:GoInt;
		var _1:Error;
	} = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:T_oneByteReader;
}

@:keep private class T_halfReader_static_extension {
	@:keep
	static public function read(_r:T_halfReader, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		throw "testing.iotest.read is not yet implemented";
}

class T_halfReader_asInterface {
	@:keep
	public var read:Slice<GoByte> -> {
		var _0:GoInt;
		var _1:Error;
	} = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:T_halfReader;
}

@:keep private class T_dataErrReader_static_extension {
	@:keep
	static public function read(_r:T_dataErrReader, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		throw "testing.iotest.read is not yet implemented";
}

class T_dataErrReader_asInterface {
	@:keep
	public var read:Slice<GoByte> -> {
		var _0:GoInt;
		var _1:Error;
	} = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:T_dataErrReader;
}

@:keep private class T_timeoutReader_static_extension {
	@:keep
	static public function read(_r:T_timeoutReader, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		throw "testing.iotest.read is not yet implemented";
}

class T_timeoutReader_asInterface {
	@:keep
	public var read:Slice<GoByte> -> {
		var _0:GoInt;
		var _1:Error;
	} = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:T_timeoutReader;
}

@:keep private class T_errReader_static_extension {
	@:keep
	static public function read(_r:T_errReader, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		throw "testing.iotest.read is not yet implemented";
}

class T_errReader_asInterface {
	@:keep
	public var read:Slice<GoByte> -> {
		var _0:GoInt;
		var _1:Error;
	} = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:T_errReader;
}

@:keep private class T_smallByteReader_static_extension {
	@:keep
	static public function read(_r:T_smallByteReader, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		throw "testing.iotest.read is not yet implemented";
}

class T_smallByteReader_asInterface {
	@:keep
	public var read:Slice<GoByte> -> {
		var _0:GoInt;
		var _1:Error;
	} = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:T_smallByteReader;
}

@:keep private class T_truncateWriter_static_extension {
	@:keep
	static public function write(_t:T_truncateWriter, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		throw "testing.iotest.write is not yet implemented";
}

class T_truncateWriter_asInterface {
	@:keep
	public var write:Slice<GoByte> -> {
		var _0:GoInt;
		var _1:Error;
	} = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:T_truncateWriter;
}
