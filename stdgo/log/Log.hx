package stdgo.log;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

@:structInit class Logger {
	public function writer():stdgo.io.Io.Writer {
		var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var recover_exception:Error = null;
		var deferstack:Array<Void->Void> = [];
		_l.value._mu.lock();
		try {
			deferstack.unshift(() -> _l.value._mu.unlock());
			{
				for (defer in deferstack) {
					defer();
				};
				return _l.value._out;
			};
			for (defer in deferstack) {
				defer();
			};
		} catch (e) {
			recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
			{
				for (defer in deferstack) {
					defer();
				};
				if (recover_exception != null)
					throw recover_exception;
				return ((null : stdgo.io.Io.Writer));
			};
		};
	}

	public function setPrefix(_prefix:GoString):Void {
		var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var recover_exception:Error = null;
		var deferstack:Array<Void->Void> = [];
		try {
			_l.value._mu.lock();
			deferstack.unshift(() -> _l.value._mu.unlock());
			_l.value._prefix = _prefix;
			for (defer in deferstack) {
				defer();
			};
		} catch (e) {
			recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
			{
				for (defer in deferstack) {
					defer();
				};
				if (recover_exception != null)
					throw recover_exception;
				return;
			};
		};
	}

	public function prefix():GoString {
		var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var recover_exception:Error = null;
		var deferstack:Array<Void->Void> = [];
		_l.value._mu.lock();
		try {
			deferstack.unshift(() -> _l.value._mu.unlock());
			{
				for (defer in deferstack) {
					defer();
				};
				return _l.value._prefix;
			};
			for (defer in deferstack) {
				defer();
			};
		} catch (e) {
			recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
			{
				for (defer in deferstack) {
					defer();
				};
				if (recover_exception != null)
					throw recover_exception;
				return (("" : GoString));
			};
		};
	}

	public function setFlags(_flag:GoInt):Void {
		var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var recover_exception:Error = null;
		var deferstack:Array<Void->Void> = [];
		try {
			_l.value._mu.lock();
			deferstack.unshift(() -> _l.value._mu.unlock());
			_l.value._flag = _flag;
			for (defer in deferstack) {
				defer();
			};
		} catch (e) {
			recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
			{
				for (defer in deferstack) {
					defer();
				};
				if (recover_exception != null)
					throw recover_exception;
				return;
			};
		};
	}

	public function flags():GoInt {
		var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var recover_exception:Error = null;
		var deferstack:Array<Void->Void> = [];
		_l.value._mu.lock();
		try {
			deferstack.unshift(() -> _l.value._mu.unlock());
			{
				for (defer in deferstack) {
					defer();
				};
				return _l.value._flag;
			};
			for (defer in deferstack) {
				defer();
			};
		} catch (e) {
			recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
			{
				for (defer in deferstack) {
					defer();
				};
				if (recover_exception != null)
					throw recover_exception;
				return ((0 : GoInt));
			};
		};
	}

	public function panicln(_v:haxe.Rest<AnyInterface>):Void {
		var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _v = new Slice<AnyInterface>(..._v);
		var _s:GoString = stdgo.fmt.Fmt.sprintln(..._v.toArray());
		_l.value.output(((2 : GoInt)), _s);
		throw _s;
	}

	public function panicf(_format:GoString, _v:haxe.Rest<AnyInterface>):Void {
		var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _v = new Slice<AnyInterface>(..._v);
		var _s:GoString = stdgo.fmt.Fmt.sprintf(_format, ..._v.toArray());
		_l.value.output(((2 : GoInt)), _s);
		throw _s;
	}

	public function panic(_v:haxe.Rest<AnyInterface>):Void {
		var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _v = new Slice<AnyInterface>(..._v);
		var _s:GoString = stdgo.fmt.Fmt.sprint(..._v.toArray());
		_l.value.output(((2 : GoInt)), _s);
		throw _s;
	}

	public function fatalln(_v:haxe.Rest<AnyInterface>):Void {
		var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _v = new Slice<AnyInterface>(..._v);
		_l.value.output(((2 : GoInt)), stdgo.fmt.Fmt.sprintln(..._v.toArray()));
		stdgo.os.Os.exit(((1 : GoInt)));
	}

	public function fatalf(_format:GoString, _v:haxe.Rest<AnyInterface>):Void {
		var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _v = new Slice<AnyInterface>(..._v);
		_l.value.output(((2 : GoInt)), stdgo.fmt.Fmt.sprintf(_format, ..._v.toArray()));
		stdgo.os.Os.exit(((1 : GoInt)));
	}

	public function fatal(_v:haxe.Rest<AnyInterface>):Void {
		var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _v = new Slice<AnyInterface>(..._v);
		_l.value.output(((2 : GoInt)), stdgo.fmt.Fmt.sprint(..._v.toArray()));
		stdgo.os.Os.exit(((1 : GoInt)));
	}

	public function println(_v:haxe.Rest<AnyInterface>):Void {
		var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _v = new Slice<AnyInterface>(..._v);
		_l.value.output(((2 : GoInt)), stdgo.fmt.Fmt.sprintln(..._v.toArray()));
	}

	public function print(_v:haxe.Rest<AnyInterface>):Void {
		var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _v = new Slice<AnyInterface>(..._v);
		_l.value.output(((2 : GoInt)), stdgo.fmt.Fmt.sprint(..._v.toArray()));
	}

	public function printf(_format:GoString, _v:haxe.Rest<AnyInterface>):Void {
		var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _v = new Slice<AnyInterface>(..._v);
		_l.value.output(((2 : GoInt)), stdgo.fmt.Fmt.sprintf(_format, ..._v.toArray()));
	}

	public function output(_calldepth:GoInt, _s:GoString):Error {
		var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var recover_exception:Error = null;
		var deferstack:Array<Void->Void> = [];
		var _now:stdgo.time.Time.Time = stdgo.time.Time.now().__copy__();
		try {
			var _file:GoString = (("" : GoString));
			var _line:GoInt = ((0 : GoInt));
			_l.value._mu.lock();
			deferstack.unshift(() -> _l.value._mu.unlock());
			if (_l.value._flag & (lshortfile | llongfile) != ((0 : GoInt))) {
				_l.value._mu.unlock();
				var _ok:Bool = false;
				{
					var __tmp__ = stdgo.runtime.Runtime.caller(_calldepth);
					_file = __tmp__._1;
					_line = __tmp__._2;
					_ok = __tmp__._3;
				};
				if (!_ok) {
					_file = "???";
					_line = ((0 : GoInt));
				};
				_l.value._mu.lock();
			};
			_l.value._buf = _l.value._buf.__slice__(0, ((0 : GoInt)));
			_l.value._formatHeader(Go.pointer(_l.value._buf), _now.__copy__(), _file, _line);
			_l.value._buf = _l.value._buf.__append__(..._s.toArray());
			if (_s.length == ((0 : GoInt)) || _s[_s.length - ((1 : GoInt))] != (("\n".code : GoRune))) {
				_l.value._buf = _l.value._buf.__append__((("\n".code : GoRune)));
			};
			var __tmp__ = _l.value._out.write(_l.value._buf),
				_:GoInt = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			{
				for (defer in deferstack) {
					defer();
				};
				return _err;
			};
			for (defer in deferstack) {
				defer();
			};
		} catch (e) {
			recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
			{
				for (defer in deferstack) {
					defer();
				};
				if (recover_exception != null)
					throw recover_exception;
				return ((null : stdgo.Error));
			};
		};
	}

	public function _formatHeader(_buf:Pointer<Slice<GoByte>>, _t:stdgo.time.Time.Time, _file:GoString, _line:GoInt):Void {
		var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_l.value._flag & lmsgprefix == ((0 : GoInt))) {
			_buf.value = _buf.value.__append__(..._l.value._prefix.toArray());
		};
		if (_l.value._flag & (ldate | ltime | lmicroseconds) != ((0 : GoInt))) {
			if (_l.value._flag & lutc != ((0 : GoInt))) {
				_t = _t.utc().__copy__();
			};
			if (_l.value._flag & ldate != ((0 : GoInt))) {
				var __tmp__ = _t.date(),
					_year:GoInt = __tmp__._0,
					_month:stdgo.time.Time.Month = __tmp__._1,
					_day:GoInt = __tmp__._2;
				_itoa(_buf, _year, ((4 : GoInt)));
				_buf.value = _buf.value.__append__((("/".code : GoRune)));
				_itoa(_buf, _month.__t__, ((2 : GoInt)));
				_buf.value = _buf.value.__append__((("/".code : GoRune)));
				_itoa(_buf, _day, ((2 : GoInt)));
				_buf.value = _buf.value.__append__(((" ".code : GoRune)));
			};
			if (_l.value._flag & (ltime | lmicroseconds) != ((0 : GoInt))) {
				var __tmp__ = _t.clock(),
					_hour:GoInt = __tmp__._0,
					_min:GoInt = __tmp__._1,
					_sec:GoInt = __tmp__._2;
				_itoa(_buf, _hour, ((2 : GoInt)));
				_buf.value = _buf.value.__append__(((":".code : GoRune)));
				_itoa(_buf, _min, ((2 : GoInt)));
				_buf.value = _buf.value.__append__(((":".code : GoRune)));
				_itoa(_buf, _sec, ((2 : GoInt)));
				if (_l.value._flag & lmicroseconds != ((0 : GoInt))) {
					_buf.value = _buf.value.__append__(((".".code : GoRune)));
					_itoa(_buf, _t.nanosecond() / ((1000 : GoInt)), ((6 : GoInt)));
				};
				_buf.value = _buf.value.__append__(((" ".code : GoRune)));
			};
		};
		if (_l.value._flag & (lshortfile | llongfile) != ((0 : GoInt))) {
			if (_l.value._flag & lshortfile != ((0 : GoInt))) {
				var _short:GoString = _file;
				{
					var _i:GoInt = _file.length - ((1 : GoInt));
					Go.cfor(_i > ((0 : GoInt)), _i--, {
						if (_file[_i] == (("/".code : GoRune))) {
							_short = _file.__slice__(_i + ((1 : GoInt)));
							break;
						};
					});
				};
				_file = _short;
			};
			_buf.value = _buf.value.__append__(..._file.toArray());
			_buf.value = _buf.value.__append__(((":".code : GoRune)));
			_itoa(_buf, _line, -((1 : GoUnTypedInt)));
			_buf.value = _buf.value.__append__(...((": " : GoString)).toArray());
		};
		if (_l.value._flag & lmsgprefix != ((0 : GoInt))) {
			_buf.value = _buf.value.__append__(..._l.value._prefix.toArray());
		};
	}

	public function setOutput(_w:stdgo.io.Io.Writer):Void {
		var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var recover_exception:Error = null;
		var deferstack:Array<Void->Void> = [];
		try {
			_l.value._mu.lock();
			deferstack.unshift(() -> _l.value._mu.unlock());
			_l.value._out = _w;
			for (defer in deferstack) {
				defer();
			};
		} catch (e) {
			recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
			{
				for (defer in deferstack) {
					defer();
				};
				if (recover_exception != null)
					throw recover_exception;
				return;
			};
		};
	}

	public var _mu:stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
	public var _prefix:GoString = (("" : GoString));
	public var _flag:GoInt = ((0 : GoInt));
	public var _out:stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
	public var _buf:Slice<GoUInt8> = new Slice<GoUInt8>().nil();

	public function new(?_mu:stdgo.sync.Sync.Mutex, ?_prefix:GoString, ?_flag:GoInt, ?_out:stdgo.io.Io.Writer, ?_buf:Slice<GoUInt8>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{'
			+ Go.string(_mu)
			+ " "
			+ Go.string(_prefix)
			+ " "
			+ Go.string(_flag)
			+ " "
			+ Go.string(_out)
			+ " "
			+ Go.string(_buf)
			+ "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Logger(_mu, _prefix, _flag, _out, _buf);
	}

	public function __set__(__tmp__) {
		this._mu = __tmp__._mu;
		this._prefix = __tmp__._prefix;
		this._flag = __tmp__._flag;
		this._out = __tmp__._out;
		this._buf = __tmp__._buf;
		return this;
	}
}

final ldate:GoUnTypedInt = (((1 : GoUnTypedInt)) << (0 : GoUnTypedInt));
final ltime = (((1 : GoUnTypedInt)) << (1 : GoUnTypedInt));
final lstdFlags:GoUnTypedInt = ldate | ltime;
var _std:Pointer<Logger> = new_(stdgo.os.Os.stderr.value, "", lstdFlags);
final lutc = (((1 : GoUnTypedInt)) << (5 : GoUnTypedInt));
final llongfile = (((1 : GoUnTypedInt)) << (3 : GoUnTypedInt));
final lmsgprefix = (((1 : GoUnTypedInt)) << (6 : GoUnTypedInt));
final lshortfile = (((1 : GoUnTypedInt)) << (4 : GoUnTypedInt));
final lmicroseconds = (((1 : GoUnTypedInt)) << (2 : GoUnTypedInt));

/**
	// New creates a new Logger. The out variable sets the
	// destination to which log data will be written.
	// The prefix appears at the beginning of each generated log line, or
	// after the log header if the Lmsgprefix flag is provided.
	// The flag argument defines the logging properties.
**/
function new_(_out:stdgo.io.Io.Writer, _prefix:GoString, _flag:GoInt):Pointer<Logger> {
	return Go.pointer((({
		_out: _out,
		_prefix: _prefix,
		_flag: _flag,
		_mu: new stdgo.sync.Sync.Mutex(),
		_buf: new Slice<GoUInt8>().nil()
	} : Logger)));
}

/**
	// Default returns the standard logger used by the package-level output functions.
**/
function default_():Pointer<Logger> {
	return _std;
}

/**
	// Cheap integer to fixed-width decimal ASCII. Give a negative width to avoid zero-padding.
**/
function _itoa(_buf:Pointer<Slice<GoByte>>, _i:GoInt, _wid:GoInt):Void {
	var _b:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...20) ((0 : GoUInt8))]);
	var _bp:GoInt = _b.length - ((1 : GoInt));
	while (_i >= ((10 : GoInt)) || _wid > ((1 : GoInt))) {
		_wid--;
		var _q:GoInt = _i / ((10 : GoInt));
		_b[_bp] = ((((("0".code : GoRune)) + _i - _q * ((10 : GoInt))) : GoByte));
		_bp--;
		_i = _q;
	};
	_b[_bp] = ((((("0".code : GoRune)) + _i) : GoByte));
	_buf.value = _buf.value.__append__(..._b.__slice__(_bp).toArray());
}

/**
	// SetOutput sets the output destination for the standard logger.
**/
function setOutput(_w:stdgo.io.Io.Writer):Void {
	var recover_exception:Error = null;
	var deferstack:Array<Void->Void> = [];
	try {
		_std.value._mu.lock();
		deferstack.unshift(() -> _std.value._mu.unlock());
		_std.value._out = _w;
		for (defer in deferstack) {
			defer();
		};
	} catch (e) {
		recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
		{
			for (defer in deferstack) {
				defer();
			};
			if (recover_exception != null)
				throw recover_exception;
			return;
		};
	};
}

/**
	// Flags returns the output flags for the standard logger.
	// The flag bits are Ldate, Ltime, and so on.
**/
function flags():GoInt {
	return _std.value.flags();
}

/**
	// SetFlags sets the output flags for the standard logger.
	// The flag bits are Ldate, Ltime, and so on.
**/
function setFlags(_flag:GoInt):Void {
	_std.value.setFlags(_flag);
}

/**
	// Prefix returns the output prefix for the standard logger.
**/
function prefix():GoString {
	return _std.value.prefix();
}

/**
	// SetPrefix sets the output prefix for the standard logger.
**/
function setPrefix(_prefix:GoString):Void {
	_std.value.setPrefix(_prefix);
}

/**
	// Writer returns the output destination for the standard logger.
**/
function writer():stdgo.io.Io.Writer {
	return _std.value.writer();
}

/**
	// Print calls Output to print to the standard logger.
	// Arguments are handled in the manner of fmt.Print.
**/
function print(_v:haxe.Rest<AnyInterface>):Void {
	var _v = new Slice<AnyInterface>(..._v);
	_std.value.output(((2 : GoInt)), stdgo.fmt.Fmt.sprint(..._v.toArray()));
}

/**
	// Printf calls Output to print to the standard logger.
	// Arguments are handled in the manner of fmt.Printf.
**/
function printf(_format:GoString, _v:haxe.Rest<AnyInterface>):Void {
	var _v = new Slice<AnyInterface>(..._v);
	_std.value.output(((2 : GoInt)), stdgo.fmt.Fmt.sprintf(_format, ..._v.toArray()));
}

/**
	// Println calls Output to print to the standard logger.
	// Arguments are handled in the manner of fmt.Println.
**/
function println(_v:haxe.Rest<AnyInterface>):Void {
	var _v = new Slice<AnyInterface>(..._v);
	_std.value.output(((2 : GoInt)), stdgo.fmt.Fmt.sprintln(..._v.toArray()));
}

/**
	// Fatal is equivalent to Print() followed by a call to os.Exit(1).
**/
function fatal(_v:haxe.Rest<AnyInterface>):Void {
	var _v = new Slice<AnyInterface>(..._v);
	_std.value.output(((2 : GoInt)), stdgo.fmt.Fmt.sprint(..._v.toArray()));
	stdgo.os.Os.exit(((1 : GoInt)));
}

/**
	// Fatalf is equivalent to Printf() followed by a call to os.Exit(1).
**/
function fatalf(_format:GoString, _v:haxe.Rest<AnyInterface>):Void {
	var _v = new Slice<AnyInterface>(..._v);
	_std.value.output(((2 : GoInt)), stdgo.fmt.Fmt.sprintf(_format, ..._v.toArray()));
	stdgo.os.Os.exit(((1 : GoInt)));
}

/**
	// Fatalln is equivalent to Println() followed by a call to os.Exit(1).
**/
function fatalln(_v:haxe.Rest<AnyInterface>):Void {
	var _v = new Slice<AnyInterface>(..._v);
	_std.value.output(((2 : GoInt)), stdgo.fmt.Fmt.sprintln(..._v.toArray()));
	stdgo.os.Os.exit(((1 : GoInt)));
}

/**
	// Panic is equivalent to Print() followed by a call to panic().
**/
function panic(_v:haxe.Rest<AnyInterface>):Void {
	var _v = new Slice<AnyInterface>(..._v);
	var _s:GoString = stdgo.fmt.Fmt.sprint(..._v.toArray());
	_std.value.output(((2 : GoInt)), _s);
	throw _s;
}

/**
	// Panicf is equivalent to Printf() followed by a call to panic().
**/
function panicf(_format:GoString, _v:haxe.Rest<AnyInterface>):Void {
	var _v = new Slice<AnyInterface>(..._v);
	var _s:GoString = stdgo.fmt.Fmt.sprintf(_format, ..._v.toArray());
	_std.value.output(((2 : GoInt)), _s);
	throw _s;
}

/**
	// Panicln is equivalent to Println() followed by a call to panic().
**/
function panicln(_v:haxe.Rest<AnyInterface>):Void {
	var _v = new Slice<AnyInterface>(..._v);
	var _s:GoString = stdgo.fmt.Fmt.sprintln(..._v.toArray());
	_std.value.output(((2 : GoInt)), _s);
	throw _s;
}

/**
	// Output writes the output for a logging event. The string s contains
	// the text to print after the prefix specified by the flags of the
	// Logger. A newline is appended if the last character of s is not
	// already a newline. Calldepth is the count of the number of
	// frames to skip when computing the file name and line number
	// if Llongfile or Lshortfile is set; a value of 1 will print the details
	// for the caller of Output.
**/
function output(_calldepth:GoInt, _s:GoString):Error {
	return _std.value.output(_calldepth + ((1 : GoInt)), _s);
}

class Logger_extension_fields {
	public function setOutput(__tmp__, _w:stdgo.io.Io.Writer):Void
		__tmp__.setOutput(_w);

	public function _formatHeader(__tmp__, _buf:Pointer<Slice<GoByte>>, _t:stdgo.time.Time.Time, _file:GoString, _line:GoInt):Void
		__tmp__._formatHeader(_buf, _t, _file, _line);

	public function output(__tmp__, _calldepth:GoInt, _s:GoString):Error
		return __tmp__.output(_calldepth, _s);

	public function printf(__tmp__, _format:GoString, _v:haxe.Rest<AnyInterface>):Void
		__tmp__.printf(_format, _v);

	public function print(__tmp__, _v:haxe.Rest<AnyInterface>):Void
		__tmp__.print(_v);

	public function println(__tmp__, _v:haxe.Rest<AnyInterface>):Void
		__tmp__.println(_v);

	public function fatal(__tmp__, _v:haxe.Rest<AnyInterface>):Void
		__tmp__.fatal(_v);

	public function fatalf(__tmp__, _format:GoString, _v:haxe.Rest<AnyInterface>):Void
		__tmp__.fatalf(_format, _v);

	public function fatalln(__tmp__, _v:haxe.Rest<AnyInterface>):Void
		__tmp__.fatalln(_v);

	public function panic(__tmp__, _v:haxe.Rest<AnyInterface>):Void
		__tmp__.panic(_v);

	public function panicf(__tmp__, _format:GoString, _v:haxe.Rest<AnyInterface>):Void
		__tmp__.panicf(_format, _v);

	public function panicln(__tmp__, _v:haxe.Rest<AnyInterface>):Void
		__tmp__.panicln(_v);

	public function flags(__tmp__):GoInt
		return __tmp__.flags();

	public function setFlags(__tmp__, _flag:GoInt):Void
		__tmp__.setFlags(_flag);

	public function prefix(__tmp__):GoString
		return __tmp__.prefix();

	public function setPrefix(__tmp__, _prefix:GoString):Void
		__tmp__.setPrefix(_prefix);

	public function writer(__tmp__):stdgo.io.Io.Writer
		return __tmp__.writer();
}
