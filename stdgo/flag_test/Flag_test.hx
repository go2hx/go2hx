package stdgo.flag_test;

import stdgo.flag.Flag;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

var _species:Pointer<GoString> = stdgo.flag.Flag.string((Go.str("species") : GoString), (Go.str("gopher") : GoString),
	(Go.str("the species we are studying") : GoString));

var _u:Ref<stdgo.net.url.Url.URL> = (new stdgo.net.url.Url.URL() : stdgo.net.url.Url.URL);
var _gopherType:GoString = ("" : GoString);
var _intervalFlag:T_interval = new stdgo.flag_test.Flag_test.T_interval(0, 0);
final _defaultOutput:GoString = ("  -A\tfor bootstrapping, allow \'any\' type\n  -Alongflagname\n    \tdisable bounds checking\n  -C\ta boolean defaulting to true (default true)\n  -D path\n    \tset relative path for local imports\n  -E string\n    \tissue 23543 (default \"0\")\n  -F number\n    \ta non-zero number (default 2.7)\n  -G float\n    \ta float that defaults to zero\n  -M string\n    \ta multiline\n    \thelp\n    \tstring\n  -N int\n    \ta non-zero int (default 27)\n  -O\ta flag\n    \tmultiline help string (default true)\n  -V list\n    \ta list of strings (default [a b])\n  -Z int\n    \tan int that defaults to zero\n  -ZP0 value\n    \ta flag whose String method panics when it is zero\n  -ZP1 value\n    \ta flag whose String method panics when it is zero\n  -maxT timeout\n    \tset timeout for dial\n\npanic calling String method on zero flag_test.zeroPanicker for flag ZP0: panic!\npanic calling String method on zero flag_test.zeroPanicker for flag ZP1: panic!\n" : GoString);

@:structInit @:using(stdgo.flag_test.Flag_test.URLValue_static_extension) class URLValue {
	public var url:Ref<stdgo.net.url.Url.URL> = (null : stdgo.net.url.Url.URL);

	public function new(?url:Ref<stdgo.net.url.Url.URL>) {
		if (url != null)
			this.url = url;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new URLValue(url);
	}
}

@:structInit @:using(stdgo.flag_test.Flag_test.T_boolFlagVar_static_extension) private class T_boolFlagVar {
	public var _count:GoInt = 0;

	public function new(?_count:GoInt) {
		if (_count != null)
			this._count = _count;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_boolFlagVar(_count);
	}
}

@:structInit @:using(stdgo.flag_test.Flag_test.T_zeroPanicker_static_extension) private class T_zeroPanicker {
	public var _dontPanic:Bool = false;
	public var _v:GoString = "";

	public function new(?_dontPanic:Bool, ?_v:GoString) {
		if (_dontPanic != null)
			this._dontPanic = _dontPanic;
		if (_v != null)
			this._v = _v;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_zeroPanicker(_dontPanic, _v);
	}
}

@:local typedef T__struct_0 = {
	public var _flag:GoString;
	public var _flagHandle:GoString;
	public var _expectExit:GoInt;
};

@:local typedef T__struct_1 = {
	public var _flag:GoString;
	public var _errorMsg:GoString;
};

@:local typedef T__struct_2 = {
	public var _flagSetName:GoString;
	public var _errorMsg:GoString;
};

@:named @:using(stdgo.flag_test.Flag_test.T_interval_static_extension) typedef T_interval = Slice<stdgo.time.Time.Duration>;
@:named @:using(stdgo.flag_test.Flag_test.T_flagVar_static_extension) typedef T_flagVar = Slice<GoString>;

function exampleFunc():Void {
	var _fs = stdgo.flag.Flag.newFlagSet((Go.str("ExampleFunc") : GoString), (0 : ErrorHandling));
	_fs.setOutput({
		final __self__ = new stdgo.os.Os.File_wrapper(stdgo.os.Os.stdout);
		__self__.chdir = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.chdir() #else null #end;
		__self__.chmod = #if !macro function(_mode:stdgo.io.fs.Fs.FileMode):stdgo.Error return stdgo.os.Os.stdout.chmod(_mode) #else null #end;
		__self__.chown = #if !macro function(__0:GoInt, __1:GoInt):stdgo.Error return stdgo.os.Os.stdout.chown(__0, __1) #else null #end;
		__self__.close = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.close() #else null #end;
		__self__.fd = #if !macro function():GoUIntptr return stdgo.os.Os.stdout.fd() #else null #end;
		__self__.name = #if !macro function():GoString return stdgo.os.Os.stdout.name() #else null #end;
		__self__.read = #if !macro function(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout.read(_p) #else null #end;
		__self__.readAt = #if !macro function(_b:Slice<GoUInt8>, _off:GoInt64):{var _0:GoInt; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout.readAt(_b, _off) #else null #end;
		__self__.readDir = #if !macro function(_i:GoInt):{var _0:Slice<stdgo.io.fs.Fs.DirEntry>; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout.readDir(_i) #else null #end;
		__self__.readFrom = #if !macro function(_r:stdgo.io.Io.Reader):{var _0:GoInt64; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout.readFrom(_r) #else null #end;
		__self__.readdir = #if !macro function(_i:GoInt):{var _0:Slice<stdgo.io.fs.Fs.FileInfo>; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout.readdir(_i) #else null #end;
		__self__.readdirnames = #if !macro function(_i:GoInt):{var _0:Slice<GoString>; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout.readdirnames(_i) #else null #end;
		__self__.seek = #if !macro function(_i:GoInt64, _base:GoInt):{var _0:GoInt64; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout.seek(_i, _base) #else null #end;
		__self__.setDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setDeadline(__0) #else null #end;
		__self__.setReadDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setReadDeadline(__0) #else null #end;
		__self__.setWriteDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setWriteDeadline(__0) #else null #end;
		__self__.stat = #if !macro function():{var _0:stdgo.io.fs.Fs.FileInfo; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout.stat() #else null #end;
		__self__.sync = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.sync() #else null #end;
		__self__.syscallConn = #if !macro function():{var _0:stdgo.syscall.Syscall.RawConn; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout.syscallConn() #else null #end;
		__self__.truncate = #if !macro function(__0:GoInt64):stdgo.Error return stdgo.os.Os.stdout.truncate(__0) #else null #end;
		__self__.write = #if !macro function(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout.write(_p) #else null #end;
		__self__.writeAt = #if !macro function(_b:Slice<GoUInt8>, _off:GoInt64):{var _0:GoInt; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout.writeAt(_b, _off) #else null #end;
		__self__.writeString = #if !macro function(__0:GoString):{var _0:GoInt; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout.writeString(__0) #else null #end;
		__self__._checkValid = #if !macro function(__0:GoString):stdgo.Error return stdgo.os.Os.stdout._checkValid(__0) #else null #end;
		__self__._chmod = #if !macro function(_mode:stdgo.io.fs.Fs.FileMode):stdgo.Error return stdgo.os.Os.stdout._chmod(_mode) #else null #end;
		__self__._close = #if !macro function():stdgo.Error return stdgo.os.Os.stdout._close() #else null #end;
		__self__._pread = #if !macro function(_b:Slice<GoUInt8>, _off:GoInt64):{var _0:GoInt; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout._pread(_b, _off) #else null #end;
		__self__._pwrite = #if !macro function(_b:Slice<GoUInt8>, _off:GoInt64):{var _0:GoInt; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout._pwrite(_b, _off) #else null #end;
		__self__._read = #if !macro function(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout._read(_p) #else null #end;
		__self__._readFrom = #if !macro function(_r:stdgo.io.Io.Reader):{var _0:GoInt64; var _1:Bool; var _2:stdgo.Error;}
			return stdgo.os.Os.stdout._readFrom(_r) #else null #end;
		__self__._readdir = #if !macro function(_n:GoInt, _mode:stdgo.os.Os.T_readdirMode):{
			var _0:Slice<GoString>;
			var _1:Slice<stdgo.io.fs.Fs.DirEntry>;
			var _2:Slice<stdgo.io.fs.Fs.FileInfo>;
			var _3:stdgo.Error;
		}
			return stdgo.os.Os.stdout._readdir(_n, _mode) #else null #end;
		__self__._seek = #if !macro function(_i:GoInt64, _base:GoInt):{var _0:GoInt64; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout._seek(_i, _base) #else null #end;
		__self__._setDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setDeadline(__0) #else null #end;
		__self__._setReadDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setReadDeadline(__0) #else null #end;
		__self__._setWriteDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setWriteDeadline(__0) #else null #end;
		__self__._wrapErr = #if !macro function(_op:GoString, _err:stdgo.Error):stdgo.Error return stdgo.os.Os.stdout._wrapErr(_op, _err) #else null #end;
		__self__._write = #if !macro function(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout._write(_p) #else null #end;
		__self__;
	});
	var _ip:stdgo.net.Net.IP = new stdgo.net.Net.IP(0, 0);
	_fs.func((Go.str("ip") : GoString), (Go.str("`IP address` to parse") : GoString), function(_s:GoString):Error {
		_ip = stdgo.net.Net.parseIP(_s);
		if (_ip == null) {
			return stdgo.errors.Errors.new_((Go.str("could not parse IP") : GoString));
		};
		return (null : stdgo.Error);
	});
	_fs.parse((new Slice<GoString>(0, 0, (Go.str("-ip") : GoString), (Go.str("127.0.0.1") : GoString)) : Slice<GoString>));
	stdgo.fmt.Fmt.printf((Go.str("{ip: %v, loopback: %t}\n\n") : GoString), Go.toInterface({
		final __self__ = new stdgo.net.Net.IP_wrapper(_ip);
		__self__.defaultMask = #if !macro function():stdgo.net.Net.IPMask return _ip.defaultMask() #else null #end;
		__self__.equal = #if !macro function(_x:stdgo.net.Net.IP):Bool return _ip.equal(_x) #else null #end;
		__self__.isGlobalUnicast = #if !macro function():Bool return _ip.isGlobalUnicast() #else null #end;
		__self__.isInterfaceLocalMulticast = #if !macro function():Bool return _ip.isInterfaceLocalMulticast() #else null #end;
		__self__.isLinkLocalMulticast = #if !macro function():Bool return _ip.isLinkLocalMulticast() #else null #end;
		__self__.isLinkLocalUnicast = #if !macro function():Bool return _ip.isLinkLocalUnicast() #else null #end;
		__self__.isLoopback = #if !macro function():Bool return _ip.isLoopback() #else null #end;
		__self__.isMulticast = #if !macro function():Bool return _ip.isMulticast() #else null #end;
		__self__.isPrivate = #if !macro function():Bool return _ip.isPrivate() #else null #end;
		__self__.isUnspecified = #if !macro function():Bool return _ip.isUnspecified() #else null #end;
		__self__.marshalText = #if !macro function():{var _0:Slice<GoUInt8>; var _1:stdgo.Error;}
			return _ip.marshalText() #else null #end;
		__self__.mask = #if !macro function(__0:stdgo.net.Net.IPMask):stdgo.net.Net.IP return _ip.mask(__0) #else null #end;
		__self__.string = #if !macro function():GoString return _ip.string() #else null #end;
		__self__.to16 = #if !macro function():stdgo.net.Net.IP return _ip.to16() #else null #end;
		__self__.to4 = #if !macro function():stdgo.net.Net.IP return _ip.to4() #else null #end;
		__self__.unmarshalText = #if !macro function(_p:Slice<GoUInt8>):stdgo.Error return _ip.unmarshalText(_p) #else null #end;
		__self__._matchAddrFamily = #if !macro function(_x:stdgo.net.Net.IP):Bool return _ip._matchAddrFamily(_x) #else null #end;
		__self__;
	}), Go.toInterface(_ip.isLoopback()));
	_fs.parse((new Slice<GoString>(0, 0, (Go.str("-ip") : GoString), (Go.str("256.0.0.1") : GoString)) : Slice<GoString>));
	stdgo.fmt.Fmt.printf((Go.str("{ip: %v, loopback: %t}\n\n") : GoString), Go.toInterface({
		final __self__ = new stdgo.net.Net.IP_wrapper(_ip);
		__self__.defaultMask = #if !macro function():stdgo.net.Net.IPMask return _ip.defaultMask() #else null #end;
		__self__.equal = #if !macro function(_x:stdgo.net.Net.IP):Bool return _ip.equal(_x) #else null #end;
		__self__.isGlobalUnicast = #if !macro function():Bool return _ip.isGlobalUnicast() #else null #end;
		__self__.isInterfaceLocalMulticast = #if !macro function():Bool return _ip.isInterfaceLocalMulticast() #else null #end;
		__self__.isLinkLocalMulticast = #if !macro function():Bool return _ip.isLinkLocalMulticast() #else null #end;
		__self__.isLinkLocalUnicast = #if !macro function():Bool return _ip.isLinkLocalUnicast() #else null #end;
		__self__.isLoopback = #if !macro function():Bool return _ip.isLoopback() #else null #end;
		__self__.isMulticast = #if !macro function():Bool return _ip.isMulticast() #else null #end;
		__self__.isPrivate = #if !macro function():Bool return _ip.isPrivate() #else null #end;
		__self__.isUnspecified = #if !macro function():Bool return _ip.isUnspecified() #else null #end;
		__self__.marshalText = #if !macro function():{var _0:Slice<GoUInt8>; var _1:stdgo.Error;}
			return _ip.marshalText() #else null #end;
		__self__.mask = #if !macro function(__0:stdgo.net.Net.IPMask):stdgo.net.Net.IP return _ip.mask(__0) #else null #end;
		__self__.string = #if !macro function():GoString return _ip.string() #else null #end;
		__self__.to16 = #if !macro function():stdgo.net.Net.IP return _ip.to16() #else null #end;
		__self__.to4 = #if !macro function():stdgo.net.Net.IP return _ip.to4() #else null #end;
		__self__.unmarshalText = #if !macro function(_p:Slice<GoUInt8>):stdgo.Error return _ip.unmarshalText(_p) #else null #end;
		__self__._matchAddrFamily = #if !macro function(_x:stdgo.net.Net.IP):Bool return _ip._matchAddrFamily(_x) #else null #end;
		__self__;
	}), Go.toInterface(_ip.isLoopback()));
}

function example():Void {}

function exampleTextVar():Void {
	var _fs = stdgo.flag.Flag.newFlagSet((Go.str("ExampleTextVar") : GoString), (0 : ErrorHandling));
	_fs.setOutput({
		final __self__ = new stdgo.os.Os.File_wrapper(stdgo.os.Os.stdout);
		__self__.chdir = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.chdir() #else null #end;
		__self__.chmod = #if !macro function(_mode:stdgo.io.fs.Fs.FileMode):stdgo.Error return stdgo.os.Os.stdout.chmod(_mode) #else null #end;
		__self__.chown = #if !macro function(__0:GoInt, __1:GoInt):stdgo.Error return stdgo.os.Os.stdout.chown(__0, __1) #else null #end;
		__self__.close = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.close() #else null #end;
		__self__.fd = #if !macro function():GoUIntptr return stdgo.os.Os.stdout.fd() #else null #end;
		__self__.name = #if !macro function():GoString return stdgo.os.Os.stdout.name() #else null #end;
		__self__.read = #if !macro function(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout.read(_p) #else null #end;
		__self__.readAt = #if !macro function(_b:Slice<GoUInt8>, _off:GoInt64):{var _0:GoInt; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout.readAt(_b, _off) #else null #end;
		__self__.readDir = #if !macro function(_i:GoInt):{var _0:Slice<stdgo.io.fs.Fs.DirEntry>; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout.readDir(_i) #else null #end;
		__self__.readFrom = #if !macro function(_r:stdgo.io.Io.Reader):{var _0:GoInt64; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout.readFrom(_r) #else null #end;
		__self__.readdir = #if !macro function(_i:GoInt):{var _0:Slice<stdgo.io.fs.Fs.FileInfo>; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout.readdir(_i) #else null #end;
		__self__.readdirnames = #if !macro function(_i:GoInt):{var _0:Slice<GoString>; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout.readdirnames(_i) #else null #end;
		__self__.seek = #if !macro function(_i:GoInt64, _base:GoInt):{var _0:GoInt64; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout.seek(_i, _base) #else null #end;
		__self__.setDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setDeadline(__0) #else null #end;
		__self__.setReadDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setReadDeadline(__0) #else null #end;
		__self__.setWriteDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setWriteDeadline(__0) #else null #end;
		__self__.stat = #if !macro function():{var _0:stdgo.io.fs.Fs.FileInfo; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout.stat() #else null #end;
		__self__.sync = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.sync() #else null #end;
		__self__.syscallConn = #if !macro function():{var _0:stdgo.syscall.Syscall.RawConn; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout.syscallConn() #else null #end;
		__self__.truncate = #if !macro function(__0:GoInt64):stdgo.Error return stdgo.os.Os.stdout.truncate(__0) #else null #end;
		__self__.write = #if !macro function(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout.write(_p) #else null #end;
		__self__.writeAt = #if !macro function(_b:Slice<GoUInt8>, _off:GoInt64):{var _0:GoInt; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout.writeAt(_b, _off) #else null #end;
		__self__.writeString = #if !macro function(__0:GoString):{var _0:GoInt; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout.writeString(__0) #else null #end;
		__self__._checkValid = #if !macro function(__0:GoString):stdgo.Error return stdgo.os.Os.stdout._checkValid(__0) #else null #end;
		__self__._chmod = #if !macro function(_mode:stdgo.io.fs.Fs.FileMode):stdgo.Error return stdgo.os.Os.stdout._chmod(_mode) #else null #end;
		__self__._close = #if !macro function():stdgo.Error return stdgo.os.Os.stdout._close() #else null #end;
		__self__._pread = #if !macro function(_b:Slice<GoUInt8>, _off:GoInt64):{var _0:GoInt; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout._pread(_b, _off) #else null #end;
		__self__._pwrite = #if !macro function(_b:Slice<GoUInt8>, _off:GoInt64):{var _0:GoInt; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout._pwrite(_b, _off) #else null #end;
		__self__._read = #if !macro function(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout._read(_p) #else null #end;
		__self__._readFrom = #if !macro function(_r:stdgo.io.Io.Reader):{var _0:GoInt64; var _1:Bool; var _2:stdgo.Error;}
			return stdgo.os.Os.stdout._readFrom(_r) #else null #end;
		__self__._readdir = #if !macro function(_n:GoInt, _mode:stdgo.os.Os.T_readdirMode):{
			var _0:Slice<GoString>;
			var _1:Slice<stdgo.io.fs.Fs.DirEntry>;
			var _2:Slice<stdgo.io.fs.Fs.FileInfo>;
			var _3:stdgo.Error;
		}
			return stdgo.os.Os.stdout._readdir(_n, _mode) #else null #end;
		__self__._seek = #if !macro function(_i:GoInt64, _base:GoInt):{var _0:GoInt64; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout._seek(_i, _base) #else null #end;
		__self__._setDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setDeadline(__0) #else null #end;
		__self__._setReadDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setReadDeadline(__0) #else null #end;
		__self__._setWriteDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setWriteDeadline(__0) #else null #end;
		__self__._wrapErr = #if !macro function(_op:GoString, _err:stdgo.Error):stdgo.Error return stdgo.os.Os.stdout._wrapErr(_op, _err) #else null #end;
		__self__._write = #if !macro function(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout._write(_p) #else null #end;
		__self__;
	});
	var _ip:stdgo.net.Net.IP = new stdgo.net.Net.IP(0, 0);
	_fs.textVar({
		final __self__ = new stdgo.net.Net.IP_wrapper(_ip);
		__self__.defaultMask = #if !macro function():stdgo.net.Net.IPMask return _ip.defaultMask() #else null #end;
		__self__.equal = #if !macro function(_x:stdgo.net.Net.IP):Bool return _ip.equal(_x) #else null #end;
		__self__.isGlobalUnicast = #if !macro function():Bool return _ip.isGlobalUnicast() #else null #end;
		__self__.isInterfaceLocalMulticast = #if !macro function():Bool return _ip.isInterfaceLocalMulticast() #else null #end;
		__self__.isLinkLocalMulticast = #if !macro function():Bool return _ip.isLinkLocalMulticast() #else null #end;
		__self__.isLinkLocalUnicast = #if !macro function():Bool return _ip.isLinkLocalUnicast() #else null #end;
		__self__.isLoopback = #if !macro function():Bool return _ip.isLoopback() #else null #end;
		__self__.isMulticast = #if !macro function():Bool return _ip.isMulticast() #else null #end;
		__self__.isPrivate = #if !macro function():Bool return _ip.isPrivate() #else null #end;
		__self__.isUnspecified = #if !macro function():Bool return _ip.isUnspecified() #else null #end;
		__self__.marshalText = #if !macro function():{var _0:Slice<GoUInt8>; var _1:stdgo.Error;}
			return _ip.marshalText() #else null #end;
		__self__.mask = #if !macro function(__0:stdgo.net.Net.IPMask):stdgo.net.Net.IP return _ip.mask(__0) #else null #end;
		__self__.string = #if !macro function():GoString return _ip.string() #else null #end;
		__self__.to16 = #if !macro function():stdgo.net.Net.IP return _ip.to16() #else null #end;
		__self__.to4 = #if !macro function():stdgo.net.Net.IP return _ip.to4() #else null #end;
		__self__.unmarshalText = #if !macro function(_p:Slice<GoUInt8>):stdgo.Error return _ip.unmarshalText(_p) #else null #end;
		__self__._matchAddrFamily = #if !macro function(_x:stdgo.net.Net.IP):Bool return _ip._matchAddrFamily(_x) #else null #end;
		__self__;
	}, (Go.str("ip") : GoString), {
		final __self__ = new stdgo.net.Net.IP_wrapper(stdgo.net.Net.ipv4((192 : GoUInt8), (168 : GoUInt8), (0 : GoUInt8), (100 : GoUInt8)));
		__self__.defaultMask = #if !macro function():stdgo.net.Net.IPMask return stdgo.net.Net.ipv4((192 : GoUInt8), (168 : GoUInt8), (0 : GoUInt8),
			(100 : GoUInt8))
			.defaultMask() #else null #end;
		__self__.equal = #if !macro function(_x:stdgo.net.Net.IP):Bool return stdgo.net.Net.ipv4((192 : GoUInt8), (168 : GoUInt8), (0 : GoUInt8),
			(100 : GoUInt8))
			.equal(_x) #else null #end;
		__self__.isGlobalUnicast = #if !macro function():Bool return stdgo.net.Net.ipv4((192 : GoUInt8), (168 : GoUInt8), (0 : GoUInt8), (100 : GoUInt8))
			.isGlobalUnicast() #else null #end;
		__self__.isInterfaceLocalMulticast = #if !macro function():Bool return stdgo.net.Net.ipv4((192 : GoUInt8), (168 : GoUInt8), (0 : GoUInt8),
			(100 : GoUInt8))
			.isInterfaceLocalMulticast() #else null #end;
		__self__.isLinkLocalMulticast = #if !macro function():Bool return stdgo.net.Net.ipv4((192 : GoUInt8), (168 : GoUInt8), (0 : GoUInt8), (100 : GoUInt8))
			.isLinkLocalMulticast() #else null #end;
		__self__.isLinkLocalUnicast = #if !macro function():Bool return stdgo.net.Net.ipv4((192 : GoUInt8), (168 : GoUInt8), (0 : GoUInt8), (100 : GoUInt8))
			.isLinkLocalUnicast() #else null #end;
		__self__.isLoopback = #if !macro function():Bool return stdgo.net.Net.ipv4((192 : GoUInt8), (168 : GoUInt8), (0 : GoUInt8), (100 : GoUInt8))
			.isLoopback() #else null #end;
		__self__.isMulticast = #if !macro function():Bool return stdgo.net.Net.ipv4((192 : GoUInt8), (168 : GoUInt8), (0 : GoUInt8), (100 : GoUInt8))
			.isMulticast() #else null #end;
		__self__.isPrivate = #if !macro function():Bool return stdgo.net.Net.ipv4((192 : GoUInt8), (168 : GoUInt8), (0 : GoUInt8), (100 : GoUInt8))
			.isPrivate() #else null #end;
		__self__.isUnspecified = #if !macro function():Bool return stdgo.net.Net.ipv4((192 : GoUInt8), (168 : GoUInt8), (0 : GoUInt8), (100 : GoUInt8))
			.isUnspecified() #else null #end;
		__self__.marshalText = #if !macro function():{var _0:Slice<GoUInt8>; var _1:stdgo.Error;}
			return stdgo.net.Net.ipv4((192 : GoUInt8), (168 : GoUInt8), (0 : GoUInt8), (100 : GoUInt8)).marshalText() #else null #end;
		__self__.mask = #if !macro function(__0:stdgo.net.Net.IPMask):stdgo.net.Net.IP return stdgo.net.Net.ipv4((192 : GoUInt8), (168 : GoUInt8),
			(0 : GoUInt8), (100 : GoUInt8))
			.mask(__0) #else null #end;
		__self__.string = #if !macro function():GoString return stdgo.net.Net.ipv4((192 : GoUInt8), (168 : GoUInt8), (0 : GoUInt8), (100 : GoUInt8))
			.string() #else null #end;
		__self__.to16 = #if !macro function():stdgo.net.Net.IP return stdgo.net.Net.ipv4((192 : GoUInt8), (168 : GoUInt8), (0 : GoUInt8), (100 : GoUInt8))
			.to16() #else null #end;
		__self__.to4 = #if !macro function():stdgo.net.Net.IP return stdgo.net.Net.ipv4((192 : GoUInt8), (168 : GoUInt8), (0 : GoUInt8), (100 : GoUInt8))
			.to4() #else null #end;
		__self__.unmarshalText = #if !macro function(_p:Slice<GoUInt8>):stdgo.Error return stdgo.net.Net.ipv4((192 : GoUInt8), (168 : GoUInt8), (0 : GoUInt8),
			(100 : GoUInt8))
			.unmarshalText(_p) #else null #end;
		__self__._matchAddrFamily = #if !macro function(_x:stdgo.net.Net.IP):Bool return stdgo.net.Net.ipv4((192 : GoUInt8), (168 : GoUInt8), (0 : GoUInt8),
			(100 : GoUInt8))
			._matchAddrFamily(_x) #else null #end;
		__self__;
	}, (Go.str("`IP address` to parse") : GoString));
	_fs.parse((new Slice<GoString>(0, 0, (Go.str("-ip") : GoString), (Go.str("127.0.0.1") : GoString)) : Slice<GoString>));
	stdgo.fmt.Fmt.printf((Go.str("{ip: %v}\n\n") : GoString), Go.toInterface({
		final __self__ = new stdgo.net.Net.IP_wrapper(_ip);
		__self__.defaultMask = #if !macro function():stdgo.net.Net.IPMask return _ip.defaultMask() #else null #end;
		__self__.equal = #if !macro function(_x:stdgo.net.Net.IP):Bool return _ip.equal(_x) #else null #end;
		__self__.isGlobalUnicast = #if !macro function():Bool return _ip.isGlobalUnicast() #else null #end;
		__self__.isInterfaceLocalMulticast = #if !macro function():Bool return _ip.isInterfaceLocalMulticast() #else null #end;
		__self__.isLinkLocalMulticast = #if !macro function():Bool return _ip.isLinkLocalMulticast() #else null #end;
		__self__.isLinkLocalUnicast = #if !macro function():Bool return _ip.isLinkLocalUnicast() #else null #end;
		__self__.isLoopback = #if !macro function():Bool return _ip.isLoopback() #else null #end;
		__self__.isMulticast = #if !macro function():Bool return _ip.isMulticast() #else null #end;
		__self__.isPrivate = #if !macro function():Bool return _ip.isPrivate() #else null #end;
		__self__.isUnspecified = #if !macro function():Bool return _ip.isUnspecified() #else null #end;
		__self__.marshalText = #if !macro function():{var _0:Slice<GoUInt8>; var _1:stdgo.Error;}
			return _ip.marshalText() #else null #end;
		__self__.mask = #if !macro function(__0:stdgo.net.Net.IPMask):stdgo.net.Net.IP return _ip.mask(__0) #else null #end;
		__self__.string = #if !macro function():GoString return _ip.string() #else null #end;
		__self__.to16 = #if !macro function():stdgo.net.Net.IP return _ip.to16() #else null #end;
		__self__.to4 = #if !macro function():stdgo.net.Net.IP return _ip.to4() #else null #end;
		__self__.unmarshalText = #if !macro function(_p:Slice<GoUInt8>):stdgo.Error return _ip.unmarshalText(_p) #else null #end;
		__self__._matchAddrFamily = #if !macro function(_x:stdgo.net.Net.IP):Bool return _ip._matchAddrFamily(_x) #else null #end;
		__self__;
	}));
	_ip = null;
	_fs.parse((new Slice<GoString>(0, 0, (Go.str("-ip") : GoString), (Go.str("256.0.0.1") : GoString)) : Slice<GoString>));
	stdgo.fmt.Fmt.printf((Go.str("{ip: %v}\n\n") : GoString), Go.toInterface({
		final __self__ = new stdgo.net.Net.IP_wrapper(_ip);
		__self__.defaultMask = #if !macro function():stdgo.net.Net.IPMask return _ip.defaultMask() #else null #end;
		__self__.equal = #if !macro function(_x:stdgo.net.Net.IP):Bool return _ip.equal(_x) #else null #end;
		__self__.isGlobalUnicast = #if !macro function():Bool return _ip.isGlobalUnicast() #else null #end;
		__self__.isInterfaceLocalMulticast = #if !macro function():Bool return _ip.isInterfaceLocalMulticast() #else null #end;
		__self__.isLinkLocalMulticast = #if !macro function():Bool return _ip.isLinkLocalMulticast() #else null #end;
		__self__.isLinkLocalUnicast = #if !macro function():Bool return _ip.isLinkLocalUnicast() #else null #end;
		__self__.isLoopback = #if !macro function():Bool return _ip.isLoopback() #else null #end;
		__self__.isMulticast = #if !macro function():Bool return _ip.isMulticast() #else null #end;
		__self__.isPrivate = #if !macro function():Bool return _ip.isPrivate() #else null #end;
		__self__.isUnspecified = #if !macro function():Bool return _ip.isUnspecified() #else null #end;
		__self__.marshalText = #if !macro function():{var _0:Slice<GoUInt8>; var _1:stdgo.Error;}
			return _ip.marshalText() #else null #end;
		__self__.mask = #if !macro function(__0:stdgo.net.Net.IPMask):stdgo.net.Net.IP return _ip.mask(__0) #else null #end;
		__self__.string = #if !macro function():GoString return _ip.string() #else null #end;
		__self__.to16 = #if !macro function():stdgo.net.Net.IP return _ip.to16() #else null #end;
		__self__.to4 = #if !macro function():stdgo.net.Net.IP return _ip.to4() #else null #end;
		__self__.unmarshalText = #if !macro function(_p:Slice<GoUInt8>):stdgo.Error return _ip.unmarshalText(_p) #else null #end;
		__self__._matchAddrFamily = #if !macro function(_x:stdgo.net.Net.IP):Bool return _ip._matchAddrFamily(_x) #else null #end;
		__self__;
	}));
}

function exampleValue():Void {
	var _fs = stdgo.flag.Flag.newFlagSet((Go.str("ExampleValue") : GoString), (1 : ErrorHandling));
	_fs.var_({
		final __self__ = new stdgo.flag_test.Flag_test.URLValue_wrapper((new stdgo.flag_test.Flag_test.URLValue(_u) : stdgo.flag_test.Flag_test.URLValue));
		__self__.set = #if !macro function(__0:GoString):stdgo.Error return (new stdgo.flag_test.Flag_test.URLValue(_u) : stdgo.flag_test.Flag_test.URLValue)
			.set(__0) #else null #end;
		__self__.string = #if !macro function():GoString return (new stdgo.flag_test.Flag_test.URLValue(_u) : stdgo.flag_test.Flag_test.URLValue)
			.string() #else null #end;
		__self__;
	}, (Go.str("url") : GoString), (Go.str("URL to parse") : GoString));
	_fs.parse((new Slice<GoString>(0, 0, (Go.str("-url") : GoString), (Go.str("https://golang.org/pkg/flag/") : GoString)) : Slice<GoString>));
	stdgo.fmt.Fmt.printf(("{scheme: %q, host: %q, path: %q}" : GoString), Go.toInterface(_u.scheme), Go.toInterface(_u.host), Go.toInterface(_u.path));
}

function _boolString(_s:GoString):GoString {
	if (_s == (Go.str("0") : GoString)) {
		return (Go.str("false") : GoString);
	};
	return (Go.str("true") : GoString);
}

function testEverything(_t:stdgo.testing.Testing.T):Void {
	resetForTesting(null);
	bool((Go.str("test_bool") : GoString), false, (Go.str("bool value") : GoString));
	int((Go.str("test_int") : GoString), (0 : GoInt), (Go.str("int value") : GoString));
	int64((Go.str("test_int64") : GoString), (0 : GoInt64), (Go.str("int64 value") : GoString));
	uint((Go.str("test_uint") : GoString), (0 : GoUInt), (Go.str("uint value") : GoString));
	uint64((Go.str("test_uint64") : GoString), (0 : GoUInt64), (Go.str("uint64 value") : GoString));
	string((Go.str("test_string") : GoString), (Go.str("0") : GoString), (Go.str("string value") : GoString));
	float64((Go.str("test_float64") : GoString), (0 : GoFloat64), (Go.str("float64 value") : GoString));
	duration((Go.str("test_duration") : GoString), (0 : stdgo.time.Time.Duration), (Go.str("time.Duration value") : GoString));
	func((Go.str("test_func") : GoString), (Go.str("func value") : GoString), function(_0:GoString):Error {
		return (null : stdgo.Error);
	});
	var _m = (new GoObjectMap<GoString,
		Ref<Flag>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
		stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("Flag", [], stdgo.reflect.Reflect.GoType.structType([
			{
				name: "name",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.basic(string_kind)
			},
			{
				name: "usage",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.basic(string_kind)
			},
			{
				name: "value",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.named("Value", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))
			},
			{
				name: "defValue",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.basic(string_kind)
			}
		])))))) : GoMap<GoString, Ref<Flag>>);
	var _desired:GoString = (Go.str("0") : GoString);
	var _visitor = function(_f:Flag):Void {
		if ((_f.name.length > (5 : GoInt)) && ((_f.name.__slice__((0 : GoInt), (5 : GoInt)) : GoString) == (Go.str("test_") : GoString))) {
			_m[_f.name] = _f;
			var _ok:Bool = false;
			if ((_f.value.string() : GoString) == _desired) {
				_ok = true;
			} else if ((_f.name == (Go.str("test_bool") : GoString)) && ((_f.value.string() : GoString) == _boolString(_desired))) {
				_ok = true;
			} else if ((_f.name == (Go.str("test_duration") : GoString))
				&& ((_f.value.string() : GoString) == (_desired + (Go.str("s") : GoString)))) {
				_ok = true;
			} else if ((_f.name == (Go.str("test_func") : GoString)) && ((_f.value.string() : GoString) == (Go.str() : GoString))) {
				_ok = true;
			};
			if (!_ok) {
				_t.error(Go.toInterface((Go.str("Visit: bad value") : GoString)), Go.toInterface((_f.value.string() : GoString)),
					Go.toInterface((Go.str("for") : GoString)), Go.toInterface(_f.name));
			};
		};
	};
	visitAll(_visitor);
	if ((_m.length) != (9 : GoInt)) {
		_t.error(Go.toInterface((Go.str("VisitAll misses some flags") : GoString)));
		for (_k => _v in _m) {
			_t.log(Go.toInterface(_k), Go.toInterface(_v));
		};
	};
	_m = (new GoObjectMap<GoString,
		Ref<Flag>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
		stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("Flag", [], stdgo.reflect.Reflect.GoType.structType([
			{
				name: "name",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.basic(string_kind)
			},
			{
				name: "usage",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.basic(string_kind)
			},
			{
				name: "value",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.named("Value", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))
			},
			{
				name: "defValue",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.basic(string_kind)
			}
		])))))) : GoMap<GoString, Ref<Flag>>);
	visit(_visitor);
	if ((_m.length) != (0 : GoInt)) {
		_t.errorf((Go.str("Visit sees unset flags") : GoString));
		for (_k => _v in _m) {
			_t.log(Go.toInterface(_k), Go.toInterface(_v));
		};
	};
	set((Go.str("test_bool") : GoString), (Go.str("true") : GoString));
	set((Go.str("test_int") : GoString), (Go.str("1") : GoString));
	set((Go.str("test_int64") : GoString), (Go.str("1") : GoString));
	set((Go.str("test_uint") : GoString), (Go.str("1") : GoString));
	set((Go.str("test_uint64") : GoString), (Go.str("1") : GoString));
	set((Go.str("test_string") : GoString), (Go.str("1") : GoString));
	set((Go.str("test_float64") : GoString), (Go.str("1") : GoString));
	set((Go.str("test_duration") : GoString), (Go.str("1s") : GoString));
	set((Go.str("test_func") : GoString), (Go.str("1") : GoString));
	_desired = (Go.str("1") : GoString);
	visit(_visitor);
	if ((_m.length) != (9 : GoInt)) {
		_t.error(Go.toInterface((Go.str("Visit fails after set") : GoString)));
		for (_k => _v in _m) {
			_t.log(Go.toInterface(_k), Go.toInterface(_v));
		};
	};
	var _flagNames:Slice<GoString> = (null : Slice<GoString>);
	visit(function(_f:Flag):Void {
		_flagNames = (_flagNames.__append__(_f.name));
	});
	if (!stdgo.sort.Sort.stringsAreSorted(_flagNames)) {
		_t.errorf((Go.str("flag names not sorted: %v") : GoString), Go.toInterface(_flagNames));
	};
}

function testGet(_t:stdgo.testing.Testing.T):Void {
	resetForTesting(null);
	bool((Go.str("test_bool") : GoString), true, (Go.str("bool value") : GoString));
	int((Go.str("test_int") : GoString), (1 : GoInt), (Go.str("int value") : GoString));
	int64((Go.str("test_int64") : GoString), (2 : GoInt64), (Go.str("int64 value") : GoString));
	uint((Go.str("test_uint") : GoString), (3 : GoUInt), (Go.str("uint value") : GoString));
	uint64((Go.str("test_uint64") : GoString), (4 : GoUInt64), (Go.str("uint64 value") : GoString));
	string((Go.str("test_string") : GoString), (Go.str("5") : GoString), (Go.str("string value") : GoString));
	float64((Go.str("test_float64") : GoString), (6 : GoFloat64), (Go.str("float64 value") : GoString));
	duration((Go.str("test_duration") : GoString), (7 : stdgo.time.Time.Duration), (Go.str("time.Duration value") : GoString));
	var _visitor = function(_f:Flag):Void {
		if ((_f.name.length > (5 : GoInt)) && ((_f.name.__slice__((0 : GoInt), (5 : GoInt)) : GoString) == (Go.str("test_") : GoString))) {
			var __tmp__ = try {
				{value: ((_f.value.__underlying__().value : Dynamic) : Getter), ok: true};
			} catch (_) {
				{value: (null : Getter), ok: false};
			}, _g = __tmp__.value, _ok = __tmp__.ok;
			if (!_ok) {
				_t.errorf((Go.str("Visit: value does not satisfy Getter: %T") : GoString), Go.toInterface(_f.value));
				return;
			};
			if (_f.name == (Go.str("test_bool") : GoString)) {
				_ok = _g.get(Go.pointer(_g)) == true;
			} else if (_f.name == (Go.str("test_int") : GoString)) {
				_ok = _g.get(Go.pointer(_g)) == (1 : GoInt);
			} else if (_f.name == (Go.str("test_int64") : GoString)) {
				_ok = _g.get(Go.pointer(_g)) == (2 : GoInt64);
			} else if (_f.name == (Go.str("test_uint") : GoString)) {
				_ok = _g.get(Go.pointer(_g)) == (3 : GoUInt);
			} else if (_f.name == (Go.str("test_uint64") : GoString)) {
				_ok = _g.get(Go.pointer(_g)) == (4 : GoUInt64);
			} else if (_f.name == (Go.str("test_string") : GoString)) {
				_ok = _g.get(Go.pointer(_g)) == (Go.str("5") : GoString);
			} else if (_f.name == (Go.str("test_float64") : GoString)) {
				_ok = _g.get(Go.pointer(_g)) == (6 : GoFloat64);
			} else if (_f.name == (Go.str("test_duration") : GoString)) {
				_ok = _g.get(Go.pointer(_g)) == (7 : stdgo.time.Time.Duration);
			};
			if (!_ok) {
				_t.errorf((Go.str("Visit: bad value %T(%v) for %s") : GoString), Go.toInterface(_g.get(Go.pointer(_g))),
					Go.toInterface(_g.get(Go.pointer(_g))), Go.toInterface(_f.name));
			};
		};
	};
	visitAll(_visitor);
}

function testUsage(_t:stdgo.testing.Testing.T):Void {
	var _called:Bool = false;
	resetForTesting(function():Void {
		_called = true;
	});
	if (commandLine.parse((new Slice<GoString>(0, 0, (Go.str("-x") : GoString)) : Slice<GoString>)) == null) {
		_t.error(Go.toInterface((Go.str("parse did not fail for unknown flag") : GoString)));
	};
	if (!_called) {
		_t.error(Go.toInterface((Go.str("did not call Usage for unknown flag") : GoString)));
	};
}

function _testParse(_f:FlagSet, _t:stdgo.testing.Testing.T):Void {
	if (_f.parsed()) {
		_t.error(Go.toInterface((Go.str("f.Parse() = true before Parse") : GoString)));
	};
	var _boolFlag = _f.bool((Go.str("bool") : GoString), false, (Go.str("bool value") : GoString));
	var _bool2Flag = _f.bool((Go.str("bool2") : GoString), false, (Go.str("bool2 value") : GoString));
	var _intFlag = _f.int((Go.str("int") : GoString), (0 : GoInt), (Go.str("int value") : GoString));
	var _int64Flag = _f.int64((Go.str("int64") : GoString), (0 : GoInt64), (Go.str("int64 value") : GoString));
	var _uintFlag = _f.uint((Go.str("uint") : GoString), (0 : GoUInt), (Go.str("uint value") : GoString));
	var _uint64Flag = _f.uint64((Go.str("uint64") : GoString), (0 : GoUInt64), (Go.str("uint64 value") : GoString));
	var _stringFlag = _f.string((Go.str("string") : GoString), (Go.str("0") : GoString), (Go.str("string value") : GoString));
	var _float64Flag = _f.float64((Go.str("float64") : GoString), (0 : GoFloat64), (Go.str("float64 value") : GoString));
	var _durationFlag = _f.duration((Go.str("duration") : GoString), ("5000000000" : stdgo.time.Time.Duration), (Go.str("time.Duration value") : GoString));
	var _extra:GoString = (Go.str("one-extra-argument") : GoString);
	var _args = (new Slice<GoString>(0, 0, (Go.str("-bool") : GoString), (Go.str("-bool2=true") : GoString), (Go.str("--int") : GoString),
		(Go.str("22") : GoString), (Go.str("--int64") : GoString), (Go.str("0x23") : GoString), (Go.str("-uint") : GoString), (Go.str("24") : GoString),
		(Go.str("--uint64") : GoString), (Go.str("25") : GoString), (Go.str("-string") : GoString), (Go.str("hello") : GoString),
		(Go.str("-float64") : GoString), (Go.str("2718e28") : GoString), (Go.str("-duration") : GoString), (Go.str("2m") : GoString),
		_extra) : Slice<GoString>);
	{
		var _err:stdgo.Error = _f.parse(_args);
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
	};
	if (!_f.parsed()) {
		_t.error(Go.toInterface((Go.str("f.Parse() = false after Parse") : GoString)));
	};
	if (_boolFlag.value != true) {
		_t.error(Go.toInterface((Go.str("bool flag should be true, is ") : GoString)), Go.toInterface(_boolFlag.value));
	};
	if (_bool2Flag.value != true) {
		_t.error(Go.toInterface((Go.str("bool2 flag should be true, is ") : GoString)), Go.toInterface(_bool2Flag.value));
	};
	if (_intFlag.value != (22 : GoInt)) {
		_t.error(Go.toInterface((Go.str("int flag should be 22, is ") : GoString)), Go.toInterface(_intFlag.value));
	};
	if (_int64Flag.value != (35 : GoInt64)) {
		_t.error(Go.toInterface((Go.str("int64 flag should be 0x23, is ") : GoString)), Go.toInterface(_int64Flag.value));
	};
	if (_uintFlag.value != (24 : GoUInt)) {
		_t.error(Go.toInterface((Go.str("uint flag should be 24, is ") : GoString)), Go.toInterface(_uintFlag.value));
	};
	if (_uint64Flag.value != (25 : GoUInt64)) {
		_t.error(Go.toInterface((Go.str("uint64 flag should be 25, is ") : GoString)), Go.toInterface(_uint64Flag.value));
	};
	if (_stringFlag.value != (Go.str("hello") : GoString)) {
		_t.error(Go.toInterface((Go.str("string flag should be `hello`, is ") : GoString)), Go.toInterface(_stringFlag.value));
	};
	if (_float64Flag.value != (2.718e+31 : GoFloat64)) {
		_t.error(Go.toInterface((Go.str("float64 flag should be 2718e28, is ") : GoString)), Go.toInterface(_float64Flag.value));
	};
	if (_durationFlag.value != ("120000000000" : stdgo.time.Time.Duration)) {
		_t.error(Go.toInterface((Go.str("duration flag should be 2m, is ") : GoString)), Go.toInterface({
			final __self__ = new stdgo.time.Time.Duration_wrapper(_durationFlag.value);
			__self__.abs = #if !macro function():stdgo.time.Time.Duration return _durationFlag.value.abs() #else null #end;
			__self__.hours = #if !macro function():GoFloat64 return _durationFlag.value.hours() #else null #end;
			__self__.microseconds = #if !macro function():GoInt64 return _durationFlag.value.microseconds() #else null #end;
			__self__.milliseconds = #if !macro function():GoInt64 return _durationFlag.value.milliseconds() #else null #end;
			__self__.minutes = #if !macro function():GoFloat64 return _durationFlag.value.minutes() #else null #end;
			__self__.nanoseconds = #if !macro function():GoInt64 return _durationFlag.value.nanoseconds() #else null #end;
			__self__.round = #if !macro function(__0:stdgo.time.Time.Duration):stdgo.time.Time.Duration return _durationFlag.value.round(__0) #else null #end;
			__self__.seconds = #if !macro function():GoFloat64 return _durationFlag.value.seconds() #else null #end;
			__self__.string = #if !macro function():GoString return _durationFlag.value.string() #else null #end;
			__self__.truncate = #if !macro function(__0:stdgo.time.Time.Duration):stdgo.time.Time.Duration return
				_durationFlag.value.truncate(__0) #else null #end;
			__self__;
		}));
	};
	if ((_f.args().length) != (1 : GoInt)) {
		_t.error(Go.toInterface((Go.str("expected one argument, got") : GoString)), Go.toInterface((_f.args().length)));
	} else if (_f.args()[(0 : GoInt)] != _extra) {
		_t.errorf((Go.str("expected argument %q got %q") : GoString), Go.toInterface(_extra), Go.toInterface(_f.args()[(0 : GoInt)]));
	};
}

function testParse(_t:stdgo.testing.Testing.T):Void {
	resetForTesting(function():Void {
		_t.error(Go.toInterface((Go.str("bad parse") : GoString)));
	});
	_testParse(commandLine, _t);
}

function testFlagSetParse(_t:stdgo.testing.Testing.T):Void {
	_testParse(newFlagSet((Go.str("test") : GoString), (0 : ErrorHandling)), _t);
}

function testUserDefined(_t:stdgo.testing.Testing.T):Void {
	var _flags:FlagSet = ({} : FlagSet);
	_flags.init((Go.str("test") : GoString), (0 : ErrorHandling));
	_flags.setOutput(stdgo.io.Io.discard);
	var _v:T_flagVar = new stdgo.flag_test.Flag_test.T_flagVar(0, 0);
	_flags.var_({
		final __self__ = new stdgo.flag_test.Flag_test.T_flagVar_wrapper(_v);
		__self__.set = #if !macro function(__0:GoString):stdgo.Error return _v.set(__0) #else null #end;
		__self__.string = #if !macro function():GoString return _v.string() #else null #end;
		__self__;
	}, (Go.str("v") : GoString), (Go.str("usage") : GoString));
	{
		var _err:stdgo.Error = _flags.parse((new Slice<GoString>(0, 0, (Go.str("-v") : GoString), (Go.str("1") : GoString), (Go.str("-v") : GoString),
			(Go.str("2") : GoString), (Go.str("-v=3") : GoString)) : Slice<GoString>));
		if (_err != null) {
			_t.error(Go.toInterface(_err));
		};
	};
	if ((_v.length) != (3 : GoInt)) {
		_t.fatal(Go.toInterface((Go.str("expected 3 args; got ") : GoString)), Go.toInterface((_v.length)));
	};
	var _expect:GoString = (Go.str("[1 2 3]") : GoString);
	if ((_v.string() : GoString) != _expect) {
		_t.errorf((Go.str("expected value %q got %q") : GoString), Go.toInterface(_expect), Go.toInterface((_v.string() : GoString)));
	};
}

function testUserDefinedFunc(_t:stdgo.testing.Testing.T):Void {
	var _flags = newFlagSet((Go.str("test") : GoString), (0 : ErrorHandling));
	_flags.setOutput(stdgo.io.Io.discard);
	var _ss:Slice<GoString> = (null : Slice<GoString>);
	_flags.func((Go.str("v") : GoString), (Go.str("usage") : GoString), function(_s:GoString):Error {
		_ss = (_ss.__append__(_s));
		return (null : stdgo.Error);
	});
	{
		var _err:stdgo.Error = _flags.parse((new Slice<GoString>(0, 0, (Go.str("-v") : GoString), (Go.str("1") : GoString), (Go.str("-v") : GoString),
			(Go.str("2") : GoString), (Go.str("-v=3") : GoString)) : Slice<GoString>));
		if (_err != null) {
			_t.error(Go.toInterface(_err));
		};
	};
	if ((_ss.length) != (3 : GoInt)) {
		_t.fatal(Go.toInterface((Go.str("expected 3 args; got ") : GoString)), Go.toInterface((_ss.length)));
	};
	var _expect:GoString = (Go.str("[1 2 3]") : GoString);
	{
		var _got:GoString = stdgo.fmt.Fmt.sprint(_ss);
		if (_got != _expect) {
			_t.errorf((Go.str("expected value %q got %q") : GoString), Go.toInterface(_expect), Go.toInterface(_got));
		};
	};
	var _buf:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
	_flags.setOutput({
		final __self__ = new stdgo.strings.Strings.Builder_wrapper(_buf);
		__self__.cap = #if !macro function():GoInt return _buf.cap() #else null #end;
		__self__.grow = #if !macro function(_i:GoInt):Void _buf.grow(_i) #else null #end;
		__self__.len = #if !macro function():GoInt return _buf.len() #else null #end;
		__self__.reset = #if !macro function():Void _buf.reset() #else null #end;
		__self__.string = #if !macro function():GoString return _buf.string() #else null #end;
		__self__.write = #if !macro function(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:stdgo.Error;}
			return _buf.write(_p) #else null #end;
		__self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _buf.writeByte(_c) #else null #end;
		__self__.writeRune = #if !macro function(__0:GoInt32):{var _0:GoInt; var _1:stdgo.Error;}
			return _buf.writeRune(__0) #else null #end;
		__self__.writeString = #if !macro function(__0:GoString):{var _0:GoInt; var _1:stdgo.Error;}
			return _buf.writeString(__0) #else null #end;
		__self__._copyCheck = #if !macro function():Void _buf._copyCheck() #else null #end;
		__self__._grow = #if !macro function(_i:GoInt):Void _buf._grow(_i) #else null #end;
		__self__;
	});
	_flags.parse((new Slice<GoString>(0, 0, (Go.str("-h") : GoString)) : Slice<GoString>));
	{
		var _usage:GoString = (_buf.string() : GoString);
		if (!stdgo.strings.Strings.contains(_usage, (Go.str("usage") : GoString))) {
			_t.errorf((Go.str("usage string not included: %q") : GoString), Go.toInterface(_usage));
		};
	};
	_flags = newFlagSet((Go.str("test") : GoString), (0 : ErrorHandling));
	_flags.setOutput(stdgo.io.Io.discard);
	_flags.func((Go.str("v") : GoString), (Go.str("usage") : GoString), function(_s:GoString):Error {
		return stdgo.fmt.Fmt.errorf((Go.str("test error") : GoString));
	});
	{
		var _err:stdgo.Error = _flags.parse((null : Slice<GoString>));
		if (_err != null) {
			_t.error(Go.toInterface(_err));
		};
	};
	{
		var _err:stdgo.Error = _flags.parse((new Slice<GoString>(0, 0, (Go.str("-v") : GoString), (Go.str("1") : GoString)) : Slice<GoString>));
		if (_err == null) {
			_t.error(Go.toInterface((Go.str("expected error; got none") : GoString)));
		} else {
			var _errMsg:GoString = _err.error();
			if (!stdgo.strings.Strings.contains(_errMsg, (Go.str("test error") : GoString))) {
				_t.errorf(("error should contain \"test error\"; got %q" : GoString), Go.toInterface(_errMsg));
			};
		};
	};
}

function testUserDefinedForCommandLine(_t:stdgo.testing.Testing.T):Void {
	var _help:GoString = (Go.str("HELP") : GoString);
	var _result:GoString = ("" : GoString);
	resetForTesting(function():Void {
		_result = (Go.str("HELP") : GoString);
	});
	usage();
	if (_result != (Go.str("HELP") : GoString)) {
		_t.fatalf((Go.str("got %q; expected %q") : GoString), Go.toInterface(_result), Go.toInterface((Go.str("HELP") : GoString)));
	};
}

function testUserDefinedBool(_t:stdgo.testing.Testing.T):Void {
	var _flags:FlagSet = ({} : FlagSet);
	_flags.init((Go.str("test") : GoString), (0 : ErrorHandling));
	_flags.setOutput(stdgo.io.Io.discard);
	var _b:T_boolFlagVar = ({} : stdgo.flag_test.Flag_test.T_boolFlagVar);
	var _err:Error = (null : stdgo.Error);
	_flags.var_({
		final __self__ = new stdgo.flag_test.Flag_test.T_boolFlagVar_wrapper(_b);
		__self__.isBoolFlag = #if !macro function():Bool return _b.isBoolFlag() #else null #end;
		__self__.set = #if !macro function(__0:GoString):stdgo.Error return _b.set(__0) #else null #end;
		__self__.string = #if !macro function():GoString return _b.string() #else null #end;
		__self__;
	}, (Go.str("b") : GoString), (Go.str("usage") : GoString));
	{
		_err = _flags.parse((new Slice<GoString>(0, 0, (Go.str("-b") : GoString), (Go.str("-b") : GoString), (Go.str("-b") : GoString),
			(Go.str("-b=true") : GoString), (Go.str("-b=false") : GoString), (Go.str("-b") : GoString), (Go.str("barg") : GoString),
			(Go.str("-b") : GoString)) : Slice<GoString>));
		if (_err != null) {
			if (_b._count < (4:GoInt)) {
				_t.error(Go.toInterface(_err));
			};
		};
	};
	if (_b._count != (4 : GoInt)) {
		_t.errorf((Go.str("want: %d; got: %d") : GoString), Go.toInterface((4 : GoInt)), Go.toInterface(_b._count));
	};
	if (_err == null) {
		_t.error(Go.toInterface((Go.str("expected error; got none") : GoString)));
	};
}

function testSetOutput(_t:stdgo.testing.Testing.T):Void {
	var _flags:FlagSet = ({} : FlagSet);
	var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
	_flags.setOutput({
		final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_buf);
		__self__.bytes = #if !macro function():Slice<GoUInt8> return _buf.bytes() #else null #end;
		__self__.cap = #if !macro function():GoInt return _buf.cap() #else null #end;
		__self__.grow = #if !macro function(_i:GoInt):Void _buf.grow(_i) #else null #end;
		__self__.len = #if !macro function():GoInt return _buf.len() #else null #end;
		__self__.next = #if !macro function(_i:GoInt):Slice<GoUInt8> return _buf.next(_i) #else null #end;
		__self__.read = #if !macro function(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:stdgo.Error;}
			return _buf.read(_p) #else null #end;
		__self__.readByte = #if !macro function():{var _0:GoUInt8; var _1:stdgo.Error;}
			return _buf.readByte() #else null #end;
		__self__.readBytes = #if !macro function(_c:GoUInt8):{var _0:Slice<GoUInt8>; var _1:stdgo.Error;}
			return _buf.readBytes(_c) #else null #end;
		__self__.readFrom = #if !macro function(_r:stdgo.io.Io.Reader):{var _0:GoInt64; var _1:stdgo.Error;}
			return _buf.readFrom(_r) #else null #end;
		__self__.readRune = #if !macro function():{var _0:GoInt32; var _1:GoInt; var _2:stdgo.Error;}
			return _buf.readRune() #else null #end;
		__self__.readString = #if !macro function(_c:GoUInt8):{var _0:GoString; var _1:stdgo.Error;}
			return _buf.readString(_c) #else null #end;
		__self__.reset = #if !macro function():Void _buf.reset() #else null #end;
		__self__.string = #if !macro function():GoString return _buf.string() #else null #end;
		__self__.truncate = #if !macro function(_i:GoInt):Void _buf.truncate(_i) #else null #end;
		__self__.unreadByte = #if !macro function():stdgo.Error return _buf.unreadByte() #else null #end;
		__self__.unreadRune = #if !macro function():stdgo.Error return _buf.unreadRune() #else null #end;
		__self__.write = #if !macro function(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:stdgo.Error;}
			return _buf.write(_p) #else null #end;
		__self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _buf.writeByte(_c) #else null #end;
		__self__.writeRune = #if !macro function(__0:GoInt32):{var _0:GoInt; var _1:stdgo.Error;}
			return _buf.writeRune(__0) #else null #end;
		__self__.writeString = #if !macro function(__0:GoString):{var _0:GoInt; var _1:stdgo.Error;}
			return _buf.writeString(__0) #else null #end;
		__self__.writeTo = #if !macro function(__0:stdgo.io.Io.Writer):{var _0:GoInt64; var _1:stdgo.Error;}
			return _buf.writeTo(__0) #else null #end;
		__self__._empty = #if !macro function():Bool return _buf._empty() #else null #end;
		__self__._grow = #if !macro function(_i:GoInt):GoInt return _buf._grow(_i) #else null #end;
		__self__._readSlice = #if !macro function(_c:GoUInt8):{var _0:Slice<GoUInt8>; var _1:stdgo.Error;}
			return _buf._readSlice(_c) #else null #end;
		__self__._tryGrowByReslice = #if !macro function(_i:GoInt):{var _0:GoInt; var _1:Bool;}
			return _buf._tryGrowByReslice(_i) #else null #end;
		__self__;
	});
	_flags.init((Go.str("test") : GoString), (0 : ErrorHandling));
	_flags.parse((new Slice<GoString>(0, 0, (Go.str("-unknown") : GoString)) : Slice<GoString>));
	{
		var _out:GoString = (_buf.string() : GoString);
		if (!stdgo.strings.Strings.contains(_out, (Go.str("-unknown") : GoString))) {
			_t.logf((Go.str("expected output mentioning unknown; got %q") : GoString), Go.toInterface(_out));
		};
	};
}

/**
	// This tests that one can reset the flags. This still works but not well, and is
	// superseded by FlagSet.
**/
function testChangingArgs(_t:stdgo.testing.Testing.T):Void {
	var __recover_exception__:AnyInterface = null;
	var __deferstack__:Array<Void->Void> = [];
	try {
		resetForTesting(function():Void {
			_t.fatal(Go.toInterface((Go.str("bad parse") : GoString)));
		});
		var _oldArgs = stdgo.os.Os.args;
		__deferstack__.unshift(() -> {
			var a = function():Void {
				stdgo.os.Os.args = _oldArgs;
			};
			a();
		});
		stdgo.os.Os.args = (new Slice<GoString>(0, 0, (Go.str("cmd") : GoString), (Go.str("-before") : GoString), (Go.str("subcmd") : GoString),
			(Go.str("-after") : GoString), (Go.str("args") : GoString)) : Slice<GoString>);
		var _before = bool((Go.str("before") : GoString), false, (Go.str() : GoString));
		{
			var _err:stdgo.Error = commandLine.parse((stdgo.os.Os.args.__slice__((1 : GoInt)) : Slice<GoString>));
			if (_err != null) {
				_t.fatal(Go.toInterface(_err));
			};
		};
		var _cmd:GoString = arg((0 : GoInt));
		stdgo.os.Os.args = args();
		var _after = bool((Go.str("after") : GoString), false, (Go.str() : GoString));
		parse();
		var _args = args();
		if ((((!_before.value || (_cmd != (Go.str("subcmd") : GoString))) || !_after.value) || (_args.length != (1 : GoInt)))
			|| (_args[(0 : GoInt)] != (Go.str("args") : GoString))) {
			_t.fatalf((Go.str("expected true subcmd true [args] got %v %v %v %v") : GoString), Go.toInterface(_before.value), Go.toInterface(_cmd),
				Go.toInterface(_after.value), Go.toInterface(_args));
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (__recover_exception__ != null)
				throw __recover_exception__;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		__recover_exception__ = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (__recover_exception__ != null)
			throw __recover_exception__;
		return;
	};
}

/**
	// Test that -help invokes the usage message and returns ErrHelp.
**/
function testHelp(_t:stdgo.testing.Testing.T):Void {
	var _helpCalled:Bool = false;
	var _fs = newFlagSet((Go.str("help test") : GoString), (0 : ErrorHandling));
	_fs.usage = function():Void {
		_helpCalled = true;
	};
	var _flag:Bool = false;
	_fs.boolVar(Go.pointer(_flag), (Go.str("flag") : GoString), false, (Go.str("regular flag") : GoString));
	var _err:stdgo.Error = _fs.parse((new Slice<GoString>(0, 0, (Go.str("-flag=true") : GoString)) : Slice<GoString>));
	if (_err != null) {
		_t.fatal(Go.toInterface((Go.str("expected no error; got ") : GoString)), Go.toInterface(_err));
	};
	if (!_flag) {
		_t.error(Go.toInterface((Go.str("flag was not set by -flag") : GoString)));
	};
	if (_helpCalled) {
		_t.error(Go.toInterface((Go.str("help called for regular flag") : GoString)));
		_helpCalled = false;
	};
	_err = _fs.parse((new Slice<GoString>(0, 0, (Go.str("-help") : GoString)) : Slice<GoString>));
	if (_err == null) {
		_t.fatal(Go.toInterface((Go.str("error expected") : GoString)));
	};
	if (_err != errHelp) {
		_t.fatal(Go.toInterface((Go.str("expected ErrHelp; got ") : GoString)), Go.toInterface(_err));
	};
	if (!_helpCalled) {
		_t.fatal(Go.toInterface((Go.str("help was not called") : GoString)));
	};
	var _help:Bool = false;
	_fs.boolVar(Go.pointer(_help), (Go.str("help") : GoString), false, (Go.str("help flag") : GoString));
	_helpCalled = false;
	_err = _fs.parse((new Slice<GoString>(0, 0, (Go.str("-help") : GoString)) : Slice<GoString>));
	if (_err != null) {
		_t.fatal(Go.toInterface((Go.str("expected no error for defined -help; got ") : GoString)), Go.toInterface(_err));
	};
	if (_helpCalled) {
		_t.fatal(Go.toInterface((Go.str("help was called; should not have been for defined help flag") : GoString)));
	};
}

function testPrintDefaults(_t:stdgo.testing.Testing.T):Void {
	var _fs = newFlagSet((Go.str("print defaults test") : GoString), (0 : ErrorHandling));
	var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
	_fs.setOutput({
		final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_buf);
		__self__.bytes = #if !macro function():Slice<GoUInt8> return _buf.bytes() #else null #end;
		__self__.cap = #if !macro function():GoInt return _buf.cap() #else null #end;
		__self__.grow = #if !macro function(_i:GoInt):Void _buf.grow(_i) #else null #end;
		__self__.len = #if !macro function():GoInt return _buf.len() #else null #end;
		__self__.next = #if !macro function(_i:GoInt):Slice<GoUInt8> return _buf.next(_i) #else null #end;
		__self__.read = #if !macro function(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:stdgo.Error;}
			return _buf.read(_p) #else null #end;
		__self__.readByte = #if !macro function():{var _0:GoUInt8; var _1:stdgo.Error;}
			return _buf.readByte() #else null #end;
		__self__.readBytes = #if !macro function(_c:GoUInt8):{var _0:Slice<GoUInt8>; var _1:stdgo.Error;}
			return _buf.readBytes(_c) #else null #end;
		__self__.readFrom = #if !macro function(_r:stdgo.io.Io.Reader):{var _0:GoInt64; var _1:stdgo.Error;}
			return _buf.readFrom(_r) #else null #end;
		__self__.readRune = #if !macro function():{var _0:GoInt32; var _1:GoInt; var _2:stdgo.Error;}
			return _buf.readRune() #else null #end;
		__self__.readString = #if !macro function(_c:GoUInt8):{var _0:GoString; var _1:stdgo.Error;}
			return _buf.readString(_c) #else null #end;
		__self__.reset = #if !macro function():Void _buf.reset() #else null #end;
		__self__.string = #if !macro function():GoString return _buf.string() #else null #end;
		__self__.truncate = #if !macro function(_i:GoInt):Void _buf.truncate(_i) #else null #end;
		__self__.unreadByte = #if !macro function():stdgo.Error return _buf.unreadByte() #else null #end;
		__self__.unreadRune = #if !macro function():stdgo.Error return _buf.unreadRune() #else null #end;
		__self__.write = #if !macro function(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:stdgo.Error;}
			return _buf.write(_p) #else null #end;
		__self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _buf.writeByte(_c) #else null #end;
		__self__.writeRune = #if !macro function(__0:GoInt32):{var _0:GoInt; var _1:stdgo.Error;}
			return _buf.writeRune(__0) #else null #end;
		__self__.writeString = #if !macro function(__0:GoString):{var _0:GoInt; var _1:stdgo.Error;}
			return _buf.writeString(__0) #else null #end;
		__self__.writeTo = #if !macro function(__0:stdgo.io.Io.Writer):{var _0:GoInt64; var _1:stdgo.Error;}
			return _buf.writeTo(__0) #else null #end;
		__self__._empty = #if !macro function():Bool return _buf._empty() #else null #end;
		__self__._grow = #if !macro function(_i:GoInt):GoInt return _buf._grow(_i) #else null #end;
		__self__._readSlice = #if !macro function(_c:GoUInt8):{var _0:Slice<GoUInt8>; var _1:stdgo.Error;}
			return _buf._readSlice(_c) #else null #end;
		__self__._tryGrowByReslice = #if !macro function(_i:GoInt):{var _0:GoInt; var _1:Bool;}
			return _buf._tryGrowByReslice(_i) #else null #end;
		__self__;
	});
	_fs.bool((Go.str("A") : GoString), false, (Go.str("for bootstrapping, allow \'any\' type") : GoString));
	_fs.bool((Go.str("Alongflagname") : GoString), false, (Go.str("disable bounds checking") : GoString));
	_fs.bool((Go.str("C") : GoString), true, (Go.str("a boolean defaulting to true") : GoString));
	_fs.string((Go.str("D") : GoString), (Go.str() : GoString), (Go.str("set relative `path` for local imports") : GoString));
	_fs.string((Go.str("E") : GoString), (Go.str("0") : GoString), (Go.str("issue 23543") : GoString));
	_fs.float64((Go.str("F") : GoString), (2.7 : GoFloat64), (Go.str("a non-zero `number`") : GoString));
	_fs.float64((Go.str("G") : GoString), (0 : GoFloat64), (Go.str("a float that defaults to zero") : GoString));
	_fs.string((Go.str("M") : GoString), (Go.str() : GoString), (Go.str("a multiline\nhelp\nstring") : GoString));
	_fs.int((Go.str("N") : GoString), (27 : GoInt), (Go.str("a non-zero int") : GoString));
	_fs.bool((Go.str("O") : GoString), true, (Go.str("a flag\nmultiline help string") : GoString));
	_fs.var_({
		final __self__ = new stdgo.flag_test.Flag_test.T_flagVar_wrapper((new stdgo.flag_test.Flag_test.T_flagVar(0, 0, (Go.str("a") : GoString),
			(Go.str("b") : GoString)) : stdgo.flag_test.Flag_test.T_flagVar));
		__self__.set = #if !macro function(__0:GoString):stdgo.Error return (new stdgo.flag_test.Flag_test.T_flagVar(0, 0, (Go.str("a") : GoString),
			(Go.str("b") : GoString)) : stdgo.flag_test.Flag_test.T_flagVar).set(__0) #else null #end;
		__self__.string = #if !macro function():GoString return (new stdgo.flag_test.Flag_test.T_flagVar(0, 0, (Go.str("a") : GoString),
			(Go.str("b") : GoString)) : stdgo.flag_test.Flag_test.T_flagVar).string() #else null #end;
		__self__;
	}, (Go.str("V") : GoString), (Go.str("a `list` of strings") : GoString));
	_fs.int((Go.str("Z") : GoString), (0 : GoInt), (Go.str("an int that defaults to zero") : GoString));
	_fs.var_({
		final __self__ = new stdgo.flag_test.Flag_test.T_zeroPanicker_wrapper((new stdgo.flag_test.Flag_test.T_zeroPanicker(true,
			(Go.str() : GoString)) : stdgo.flag_test.Flag_test.T_zeroPanicker));
		__self__.set = #if !macro function(__0:GoString):stdgo.Error return (new stdgo.flag_test.Flag_test.T_zeroPanicker(true,
			(Go.str() : GoString)) : stdgo.flag_test.Flag_test.T_zeroPanicker).set(__0) #else null #end;
		__self__.string = #if !macro function():GoString return (new stdgo.flag_test.Flag_test.T_zeroPanicker(true,
			(Go.str() : GoString)) : stdgo.flag_test.Flag_test.T_zeroPanicker).string() #else null #end;
		__self__;
	}, (Go.str("ZP0") : GoString),
		(Go.str("a flag whose String method panics when it is zero") : GoString));
	_fs.var_({
		final __self__ = new stdgo.flag_test.Flag_test.T_zeroPanicker_wrapper((new stdgo.flag_test.Flag_test.T_zeroPanicker(true,
			(Go.str("something") : GoString)) : stdgo.flag_test.Flag_test.T_zeroPanicker));
		__self__.set = #if !macro function(__0:GoString):stdgo.Error return (new stdgo.flag_test.Flag_test.T_zeroPanicker(true,
			(Go.str("something") : GoString)) : stdgo.flag_test.Flag_test.T_zeroPanicker).set(__0) #else null #end;
		__self__.string = #if !macro function():GoString return (new stdgo.flag_test.Flag_test.T_zeroPanicker(true,
			(Go.str("something") : GoString)) : stdgo.flag_test.Flag_test.T_zeroPanicker).string() #else null #end;
		__self__;
	}, (Go.str("ZP1") : GoString),
		(Go.str("a flag whose String method panics when it is zero") : GoString));
	_fs.duration((Go.str("maxT") : GoString), (0 : stdgo.time.Time.Duration), (Go.str("set `timeout` for dial") : GoString));
	_fs.printDefaults();
	var _got:GoString = (_buf.string() : GoString);
	if (_got != (Go.str("  -A\tfor bootstrapping, allow \'any\' type\n  -Alongflagname\n    \tdisable bounds checking\n  -C\ta boolean defaulting to true (default true)\n  -D path\n    \tset relative path for local imports\n  -E string\n    \tissue 23543 (default \"0\")\n  -F number\n    \ta non-zero number (default 2.7)\n  -G float\n    \ta float that defaults to zero\n  -M string\n    \ta multiline\n    \thelp\n    \tstring\n  -N int\n    \ta non-zero int (default 27)\n  -O\ta flag\n    \tmultiline help string (default true)\n  -V list\n    \ta list of strings (default [a b])\n  -Z int\n    \tan int that defaults to zero\n  -ZP0 value\n    \ta flag whose String method panics when it is zero\n  -ZP1 value\n    \ta flag whose String method panics when it is zero\n  -maxT timeout\n    \tset timeout for dial\n\npanic calling String method on zero flag_test.zeroPanicker for flag ZP0: panic!\npanic calling String method on zero flag_test.zeroPanicker for flag ZP1: panic!\n") : GoString)) {
		_t.errorf((Go.str("got:\n%q\nwant:\n%q") : GoString), Go.toInterface(_got),
			Go.toInterface((Go.str("  -A\tfor bootstrapping, allow \'any\' type\n  -Alongflagname\n    \tdisable bounds checking\n  -C\ta boolean defaulting to true (default true)\n  -D path\n    \tset relative path for local imports\n  -E string\n    \tissue 23543 (default \"0\")\n  -F number\n    \ta non-zero number (default 2.7)\n  -G float\n    \ta float that defaults to zero\n  -M string\n    \ta multiline\n    \thelp\n    \tstring\n  -N int\n    \ta non-zero int (default 27)\n  -O\ta flag\n    \tmultiline help string (default true)\n  -V list\n    \ta list of strings (default [a b])\n  -Z int\n    \tan int that defaults to zero\n  -ZP0 value\n    \ta flag whose String method panics when it is zero\n  -ZP1 value\n    \ta flag whose String method panics when it is zero\n  -maxT timeout\n    \tset timeout for dial\n\npanic calling String method on zero flag_test.zeroPanicker for flag ZP0: panic!\npanic calling String method on zero flag_test.zeroPanicker for flag ZP1: panic!\n") : GoString)));
	};
}

/**
	// Issue 19230: validate range of Int and Uint flag values.
**/
function testIntFlagOverflow(_t:stdgo.testing.Testing.T):Void {
	if (false) {
		return;
	};
	resetForTesting(null);
	int((Go.str("i") : GoString), (0 : GoInt), (Go.str() : GoString));
	uint((Go.str("u") : GoString), (0 : GoUInt), (Go.str() : GoString));
	{
		var _err:stdgo.Error = set((Go.str("i") : GoString), (Go.str("2147483648") : GoString));
		if (_err == null) {
			_t.error(Go.toInterface((Go.str("unexpected success setting Int") : GoString)));
		};
	};
	{
		var _err:stdgo.Error = set((Go.str("u") : GoString), (Go.str("4294967296") : GoString));
		if (_err == null) {
			_t.error(Go.toInterface((Go.str("unexpected success setting Uint") : GoString)));
		};
	};
}

/**
	// Issue 20998: Usage should respect CommandLine.output.
**/
function testUsageOutput(_t:stdgo.testing.Testing.T):Void {
	var __recover_exception__:AnyInterface = null;
	var __deferstack__:Array<Void->Void> = [];
	try {
		resetForTesting(defaultUsage);
		var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
		commandLine.setOutput({
			final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_buf);
			__self__.bytes = #if !macro function():Slice<GoUInt8> return _buf.bytes() #else null #end;
			__self__.cap = #if !macro function():GoInt return _buf.cap() #else null #end;
			__self__.grow = #if !macro function(_i:GoInt):Void _buf.grow(_i) #else null #end;
			__self__.len = #if !macro function():GoInt return _buf.len() #else null #end;
			__self__.next = #if !macro function(_i:GoInt):Slice<GoUInt8> return _buf.next(_i) #else null #end;
			__self__.read = #if !macro function(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:stdgo.Error;}
				return _buf.read(_p) #else null #end;
			__self__.readByte = #if !macro function():{var _0:GoUInt8; var _1:stdgo.Error;}
				return _buf.readByte() #else null #end;
			__self__.readBytes = #if !macro function(_c:GoUInt8):{var _0:Slice<GoUInt8>; var _1:stdgo.Error;}
				return _buf.readBytes(_c) #else null #end;
			__self__.readFrom = #if !macro function(_r:stdgo.io.Io.Reader):{var _0:GoInt64; var _1:stdgo.Error;}
				return _buf.readFrom(_r) #else null #end;
			__self__.readRune = #if !macro function():{var _0:GoInt32; var _1:GoInt; var _2:stdgo.Error;}
				return _buf.readRune() #else null #end;
			__self__.readString = #if !macro function(_c:GoUInt8):{var _0:GoString; var _1:stdgo.Error;}
				return _buf.readString(_c) #else null #end;
			__self__.reset = #if !macro function():Void _buf.reset() #else null #end;
			__self__.string = #if !macro function():GoString return _buf.string() #else null #end;
			__self__.truncate = #if !macro function(_i:GoInt):Void _buf.truncate(_i) #else null #end;
			__self__.unreadByte = #if !macro function():stdgo.Error return _buf.unreadByte() #else null #end;
			__self__.unreadRune = #if !macro function():stdgo.Error return _buf.unreadRune() #else null #end;
			__self__.write = #if !macro function(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:stdgo.Error;}
				return _buf.write(_p) #else null #end;
			__self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _buf.writeByte(_c) #else null #end;
			__self__.writeRune = #if !macro function(__0:GoInt32):{var _0:GoInt; var _1:stdgo.Error;}
				return _buf.writeRune(__0) #else null #end;
			__self__.writeString = #if !macro function(__0:GoString):{var _0:GoInt; var _1:stdgo.Error;}
				return _buf.writeString(__0) #else null #end;
			__self__.writeTo = #if !macro function(__0:stdgo.io.Io.Writer):{var _0:GoInt64; var _1:stdgo.Error;}
				return _buf.writeTo(__0) #else null #end;
			__self__._empty = #if !macro function():Bool return _buf._empty() #else null #end;
			__self__._grow = #if !macro function(_i:GoInt):GoInt return _buf._grow(_i) #else null #end;
			__self__._readSlice = #if !macro function(_c:GoUInt8):{var _0:Slice<GoUInt8>; var _1:stdgo.Error;}
				return _buf._readSlice(_c) #else null #end;
			__self__._tryGrowByReslice = #if !macro function(_i:GoInt):{var _0:GoInt; var _1:Bool;}
				return _buf._tryGrowByReslice(_i) #else null #end;
			__self__;
		});
		{
			var _a0 = stdgo.os.Os.args;
			__deferstack__.unshift(() -> {
				var a = function(_old:Slice<GoString>):Void {
					stdgo.os.Os.args = _old;
				};
				a(_a0);
			});
		};
		stdgo.os.Os.args = (new Slice<GoString>(0, 0, (Go.str("app") : GoString), (Go.str("-i=1") : GoString),
			(Go.str("-unknown") : GoString)) : Slice<GoString>);
		parse();
		var _want:GoString = (Go.str("flag provided but not defined: -i\nUsage of app:\n") : GoString);
		{
			var _got:GoString = (_buf.string() : GoString);
			if (_got != (Go.str("flag provided but not defined: -i\nUsage of app:\n") : GoString)) {
				_t.errorf((Go.str("output = %q; want %q") : GoString), Go.toInterface(_got),
					Go.toInterface((Go.str("flag provided but not defined: -i\nUsage of app:\n") : GoString)));
			};
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (__recover_exception__ != null)
				throw __recover_exception__;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		__recover_exception__ = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (__recover_exception__ != null)
			throw __recover_exception__;
		return;
	};
}

function testGetters(_t:stdgo.testing.Testing.T):Void {
	var _expectedName:GoString = (Go.str("flag set") : GoString);
	var _expectedErrorHandling:ErrorHandling = (0 : ErrorHandling);
	var _expectedOutput:stdgo.io.Io.Writer = {
		final __self__ = new stdgo.os.Os.File_wrapper(stdgo.os.Os.stderr);
		__self__.chdir = #if !macro function():stdgo.Error return stdgo.os.Os.stderr.chdir() #else null #end;
		__self__.chmod = #if !macro function(_mode:stdgo.io.fs.Fs.FileMode):stdgo.Error return stdgo.os.Os.stderr.chmod(_mode) #else null #end;
		__self__.chown = #if !macro function(__0:GoInt, __1:GoInt):stdgo.Error return stdgo.os.Os.stderr.chown(__0, __1) #else null #end;
		__self__.close = #if !macro function():stdgo.Error return stdgo.os.Os.stderr.close() #else null #end;
		__self__.fd = #if !macro function():GoUIntptr return stdgo.os.Os.stderr.fd() #else null #end;
		__self__.name = #if !macro function():GoString return stdgo.os.Os.stderr.name() #else null #end;
		__self__.read = #if !macro function(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:stdgo.Error;}
			return stdgo.os.Os.stderr.read(_p) #else null #end;
		__self__.readAt = #if !macro function(_b:Slice<GoUInt8>, _off:GoInt64):{var _0:GoInt; var _1:stdgo.Error;}
			return stdgo.os.Os.stderr.readAt(_b, _off) #else null #end;
		__self__.readDir = #if !macro function(_i:GoInt):{var _0:Slice<stdgo.io.fs.Fs.DirEntry>; var _1:stdgo.Error;}
			return stdgo.os.Os.stderr.readDir(_i) #else null #end;
		__self__.readFrom = #if !macro function(_r:stdgo.io.Io.Reader):{var _0:GoInt64; var _1:stdgo.Error;}
			return stdgo.os.Os.stderr.readFrom(_r) #else null #end;
		__self__.readdir = #if !macro function(_i:GoInt):{var _0:Slice<stdgo.io.fs.Fs.FileInfo>; var _1:stdgo.Error;}
			return stdgo.os.Os.stderr.readdir(_i) #else null #end;
		__self__.readdirnames = #if !macro function(_i:GoInt):{var _0:Slice<GoString>; var _1:stdgo.Error;}
			return stdgo.os.Os.stderr.readdirnames(_i) #else null #end;
		__self__.seek = #if !macro function(_i:GoInt64, _base:GoInt):{var _0:GoInt64; var _1:stdgo.Error;}
			return stdgo.os.Os.stderr.seek(_i, _base) #else null #end;
		__self__.setDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stderr.setDeadline(__0) #else null #end;
		__self__.setReadDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stderr.setReadDeadline(__0) #else null #end;
		__self__.setWriteDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stderr.setWriteDeadline(__0) #else null #end;
		__self__.stat = #if !macro function():{var _0:stdgo.io.fs.Fs.FileInfo; var _1:stdgo.Error;}
			return stdgo.os.Os.stderr.stat() #else null #end;
		__self__.sync = #if !macro function():stdgo.Error return stdgo.os.Os.stderr.sync() #else null #end;
		__self__.syscallConn = #if !macro function():{var _0:stdgo.syscall.Syscall.RawConn; var _1:stdgo.Error;}
			return stdgo.os.Os.stderr.syscallConn() #else null #end;
		__self__.truncate = #if !macro function(__0:GoInt64):stdgo.Error return stdgo.os.Os.stderr.truncate(__0) #else null #end;
		__self__.write = #if !macro function(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:stdgo.Error;}
			return stdgo.os.Os.stderr.write(_p) #else null #end;
		__self__.writeAt = #if !macro function(_b:Slice<GoUInt8>, _off:GoInt64):{var _0:GoInt; var _1:stdgo.Error;}
			return stdgo.os.Os.stderr.writeAt(_b, _off) #else null #end;
		__self__.writeString = #if !macro function(__0:GoString):{var _0:GoInt; var _1:stdgo.Error;}
			return stdgo.os.Os.stderr.writeString(__0) #else null #end;
		__self__._checkValid = #if !macro function(__0:GoString):stdgo.Error return stdgo.os.Os.stderr._checkValid(__0) #else null #end;
		__self__._chmod = #if !macro function(_mode:stdgo.io.fs.Fs.FileMode):stdgo.Error return stdgo.os.Os.stderr._chmod(_mode) #else null #end;
		__self__._close = #if !macro function():stdgo.Error return stdgo.os.Os.stderr._close() #else null #end;
		__self__._pread = #if !macro function(_b:Slice<GoUInt8>, _off:GoInt64):{var _0:GoInt; var _1:stdgo.Error;}
			return stdgo.os.Os.stderr._pread(_b, _off) #else null #end;
		__self__._pwrite = #if !macro function(_b:Slice<GoUInt8>, _off:GoInt64):{var _0:GoInt; var _1:stdgo.Error;}
			return stdgo.os.Os.stderr._pwrite(_b, _off) #else null #end;
		__self__._read = #if !macro function(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:stdgo.Error;}
			return stdgo.os.Os.stderr._read(_p) #else null #end;
		__self__._readFrom = #if !macro function(_r:stdgo.io.Io.Reader):{var _0:GoInt64; var _1:Bool; var _2:stdgo.Error;}
			return stdgo.os.Os.stderr._readFrom(_r) #else null #end;
		__self__._readdir = #if !macro function(_n:GoInt, _mode:stdgo.os.Os.T_readdirMode):{
			var _0:Slice<GoString>;
			var _1:Slice<stdgo.io.fs.Fs.DirEntry>;
			var _2:Slice<stdgo.io.fs.Fs.FileInfo>;
			var _3:stdgo.Error;
		}
			return stdgo.os.Os.stderr._readdir(_n, _mode) #else null #end;
		__self__._seek = #if !macro function(_i:GoInt64, _base:GoInt):{var _0:GoInt64; var _1:stdgo.Error;}
			return stdgo.os.Os.stderr._seek(_i, _base) #else null #end;
		__self__._setDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stderr._setDeadline(__0) #else null #end;
		__self__._setReadDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stderr._setReadDeadline(__0) #else null #end;
		__self__._setWriteDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stderr._setWriteDeadline(__0) #else null #end;
		__self__._wrapErr = #if !macro function(_op:GoString, _err:stdgo.Error):stdgo.Error return stdgo.os.Os.stderr._wrapErr(_op, _err) #else null #end;
		__self__._write = #if !macro function(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:stdgo.Error;}
			return stdgo.os.Os.stderr._write(_p) #else null #end;
		__self__;
	};
	var _fs = newFlagSet(_expectedName, _expectedErrorHandling);
	if (_fs.name() != _expectedName) {
		_t.errorf((Go.str("unexpected name: got %s, expected %s") : GoString), Go.toInterface(_fs.name()), Go.toInterface(_expectedName));
	};
	if (_fs.errorHandling() != _expectedErrorHandling) {
		_t.errorf((Go.str("unexpected ErrorHandling: got %d, expected %d") : GoString), Go.toInterface(_fs.errorHandling()),
			Go.toInterface(_expectedErrorHandling));
	};
	if (_fs.output() != _expectedOutput) {
		_t.errorf((Go.str("unexpected output: got %#v, expected %#v") : GoString), Go.toInterface(_fs.output()), Go.toInterface(_expectedOutput));
	};
	_expectedName = (Go.str("gopher") : GoString);
	_expectedErrorHandling = (1 : ErrorHandling);
	_expectedOutput = {
		final __self__ = new stdgo.os.Os.File_wrapper(stdgo.os.Os.stdout);
		__self__.chdir = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.chdir() #else null #end;
		__self__.chmod = #if !macro function(_mode:stdgo.io.fs.Fs.FileMode):stdgo.Error return stdgo.os.Os.stdout.chmod(_mode) #else null #end;
		__self__.chown = #if !macro function(__0:GoInt, __1:GoInt):stdgo.Error return stdgo.os.Os.stdout.chown(__0, __1) #else null #end;
		__self__.close = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.close() #else null #end;
		__self__.fd = #if !macro function():GoUIntptr return stdgo.os.Os.stdout.fd() #else null #end;
		__self__.name = #if !macro function():GoString return stdgo.os.Os.stdout.name() #else null #end;
		__self__.read = #if !macro function(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout.read(_p) #else null #end;
		__self__.readAt = #if !macro function(_b:Slice<GoUInt8>, _off:GoInt64):{var _0:GoInt; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout.readAt(_b, _off) #else null #end;
		__self__.readDir = #if !macro function(_i:GoInt):{var _0:Slice<stdgo.io.fs.Fs.DirEntry>; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout.readDir(_i) #else null #end;
		__self__.readFrom = #if !macro function(_r:stdgo.io.Io.Reader):{var _0:GoInt64; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout.readFrom(_r) #else null #end;
		__self__.readdir = #if !macro function(_i:GoInt):{var _0:Slice<stdgo.io.fs.Fs.FileInfo>; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout.readdir(_i) #else null #end;
		__self__.readdirnames = #if !macro function(_i:GoInt):{var _0:Slice<GoString>; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout.readdirnames(_i) #else null #end;
		__self__.seek = #if !macro function(_i:GoInt64, _base:GoInt):{var _0:GoInt64; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout.seek(_i, _base) #else null #end;
		__self__.setDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setDeadline(__0) #else null #end;
		__self__.setReadDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setReadDeadline(__0) #else null #end;
		__self__.setWriteDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout.setWriteDeadline(__0) #else null #end;
		__self__.stat = #if !macro function():{var _0:stdgo.io.fs.Fs.FileInfo; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout.stat() #else null #end;
		__self__.sync = #if !macro function():stdgo.Error return stdgo.os.Os.stdout.sync() #else null #end;
		__self__.syscallConn = #if !macro function():{var _0:stdgo.syscall.Syscall.RawConn; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout.syscallConn() #else null #end;
		__self__.truncate = #if !macro function(__0:GoInt64):stdgo.Error return stdgo.os.Os.stdout.truncate(__0) #else null #end;
		__self__.write = #if !macro function(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout.write(_p) #else null #end;
		__self__.writeAt = #if !macro function(_b:Slice<GoUInt8>, _off:GoInt64):{var _0:GoInt; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout.writeAt(_b, _off) #else null #end;
		__self__.writeString = #if !macro function(__0:GoString):{var _0:GoInt; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout.writeString(__0) #else null #end;
		__self__._checkValid = #if !macro function(__0:GoString):stdgo.Error return stdgo.os.Os.stdout._checkValid(__0) #else null #end;
		__self__._chmod = #if !macro function(_mode:stdgo.io.fs.Fs.FileMode):stdgo.Error return stdgo.os.Os.stdout._chmod(_mode) #else null #end;
		__self__._close = #if !macro function():stdgo.Error return stdgo.os.Os.stdout._close() #else null #end;
		__self__._pread = #if !macro function(_b:Slice<GoUInt8>, _off:GoInt64):{var _0:GoInt; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout._pread(_b, _off) #else null #end;
		__self__._pwrite = #if !macro function(_b:Slice<GoUInt8>, _off:GoInt64):{var _0:GoInt; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout._pwrite(_b, _off) #else null #end;
		__self__._read = #if !macro function(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout._read(_p) #else null #end;
		__self__._readFrom = #if !macro function(_r:stdgo.io.Io.Reader):{var _0:GoInt64; var _1:Bool; var _2:stdgo.Error;}
			return stdgo.os.Os.stdout._readFrom(_r) #else null #end;
		__self__._readdir = #if !macro function(_n:GoInt, _mode:stdgo.os.Os.T_readdirMode):{
			var _0:Slice<GoString>;
			var _1:Slice<stdgo.io.fs.Fs.DirEntry>;
			var _2:Slice<stdgo.io.fs.Fs.FileInfo>;
			var _3:stdgo.Error;
		}
			return stdgo.os.Os.stdout._readdir(_n, _mode) #else null #end;
		__self__._seek = #if !macro function(_i:GoInt64, _base:GoInt):{var _0:GoInt64; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout._seek(_i, _base) #else null #end;
		__self__._setDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setDeadline(__0) #else null #end;
		__self__._setReadDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setReadDeadline(__0) #else null #end;
		__self__._setWriteDeadline = #if !macro function(__0:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stdout._setWriteDeadline(__0) #else null #end;
		__self__._wrapErr = #if !macro function(_op:GoString, _err:stdgo.Error):stdgo.Error return stdgo.os.Os.stdout._wrapErr(_op, _err) #else null #end;
		__self__._write = #if !macro function(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:stdgo.Error;}
			return stdgo.os.Os.stdout._write(_p) #else null #end;
		__self__;
	};
	_fs.init(_expectedName, _expectedErrorHandling);
	_fs.setOutput(_expectedOutput);
	if (_fs.name() != _expectedName) {
		_t.errorf((Go.str("unexpected name: got %s, expected %s") : GoString), Go.toInterface(_fs.name()), Go.toInterface(_expectedName));
	};
	if (_fs.errorHandling() != _expectedErrorHandling) {
		_t.errorf((Go.str("unexpected ErrorHandling: got %d, expected %d") : GoString), Go.toInterface(_fs.errorHandling()),
			Go.toInterface(_expectedErrorHandling));
	};
	if (_fs.output() != _expectedOutput) {
		_t.errorf((Go.str("unexpected output: got %v, expected %v") : GoString), Go.toInterface(_fs.output()), Go.toInterface(_expectedOutput));
	};
}

function testParseError(_t:stdgo.testing.Testing.T):Void {
	for (_0 => _typ in (new Slice<GoString>(0, 0, (Go.str("bool") : GoString), (Go.str("int") : GoString), (Go.str("int64") : GoString),
		(Go.str("uint") : GoString), (Go.str("uint64") : GoString), (Go.str("float64") : GoString), (Go.str("duration") : GoString)) : Slice<GoString>)) {
		var _fs = newFlagSet((Go.str("parse error test") : GoString), (0 : ErrorHandling));
		_fs.setOutput(stdgo.io.Io.discard);
		_fs.bool((Go.str("bool") : GoString), false, (Go.str() : GoString));
		_fs.int((Go.str("int") : GoString), (0 : GoInt), (Go.str() : GoString));
		_fs.int64((Go.str("int64") : GoString), (0 : GoInt64), (Go.str() : GoString));
		_fs.uint((Go.str("uint") : GoString), (0 : GoUInt), (Go.str() : GoString));
		_fs.uint64((Go.str("uint64") : GoString), (0 : GoUInt64), (Go.str() : GoString));
		_fs.float64((Go.str("float64") : GoString), (0 : GoFloat64), (Go.str() : GoString));
		_fs.duration((Go.str("duration") : GoString), (0 : stdgo.time.Time.Duration), (Go.str() : GoString));
		var _args = (new Slice<GoString>(0, 0, ((Go.str("-") : GoString) + _typ) + (Go.str("=x") : GoString)) : Slice<GoString>);
		var _err:stdgo.Error = _fs.parse(_args);
		if (_err == null) {
			_t.errorf((Go.str("Parse(%q)=%v; expected parse error") : GoString), Go.toInterface(_args), Go.toInterface(_err));
			continue;
		};
		if (!stdgo.strings.Strings.contains(_err.error(), (Go.str("invalid") : GoString))
			|| !stdgo.strings.Strings.contains(_err.error(), (Go.str("parse error") : GoString))) {
			_t.errorf((Go.str("Parse(%q)=%v; expected parse error") : GoString), Go.toInterface(_args), Go.toInterface(_err));
		};
	};
}

function testRangeError(_t:stdgo.testing.Testing.T):Void {
	var _bad = (new Slice<GoString>(0, 0, (Go.str("-int=123456789012345678901") : GoString), (Go.str("-int64=123456789012345678901") : GoString),
		(Go.str("-uint=123456789012345678901") : GoString), (Go.str("-uint64=123456789012345678901") : GoString),
		(Go.str("-float64=1e1000") : GoString)) : Slice<GoString>);
	for (_0 => _arg in _bad) {
		var _fs = newFlagSet((Go.str("parse error test") : GoString), (0 : ErrorHandling));
		_fs.setOutput(stdgo.io.Io.discard);
		_fs.int((Go.str("int") : GoString), (0 : GoInt), (Go.str() : GoString));
		_fs.int64((Go.str("int64") : GoString), (0 : GoInt64), (Go.str() : GoString));
		_fs.uint((Go.str("uint") : GoString), (0 : GoUInt), (Go.str() : GoString));
		_fs.uint64((Go.str("uint64") : GoString), (0 : GoUInt64), (Go.str() : GoString));
		_fs.float64((Go.str("float64") : GoString), (0 : GoFloat64), (Go.str() : GoString));
		var _err:stdgo.Error = _fs.parse((new Slice<GoString>(0, 0, _arg) : Slice<GoString>));
		if (_err == null) {
			_t.errorf((Go.str("Parse(%q)=%v; expected range error") : GoString), Go.toInterface(_arg), Go.toInterface(_err));
			continue;
		};
		if (!stdgo.strings.Strings.contains(_err.error(), (Go.str("invalid") : GoString))
			|| !stdgo.strings.Strings.contains(_err.error(), (Go.str("value out of range") : GoString))) {
			_t.errorf((Go.str("Parse(%q)=%v; expected range error") : GoString), Go.toInterface(_arg), Go.toInterface(_err));
		};
	};
}

function testExitCode(_t:stdgo.testing.Testing.T):Void {
	stdgo.internal.testenv.Testenv.mustHaveExec({
		final __self__ = new stdgo.testing.Testing.T_wrapper(_t);
		__self__.cleanup = #if !macro function(_usage:() -> Void):Void _t.cleanup(_usage) #else null #end;
		__self__.deadline = #if !macro function():{var _0:stdgo.time.Time.Time; var _1:Bool;}
			return _t.deadline() #else null #end;
		__self__.error = #if !macro function(_a:Slice<AnyInterface>):Void _t.error(_a) #else null #end;
		__self__.errorf = #if !macro function(_format:GoString, _a:Slice<AnyInterface>):Void _t.errorf(_format, _a) #else null #end;
		__self__.fail = #if !macro function():Void _t.fail() #else null #end;
		__self__.failNow = #if !macro function():Void _t.failNow() #else null #end;
		__self__.failed = #if !macro function():Bool return _t.failed() #else null #end;
		__self__.fatal = #if !macro function(_a:Slice<AnyInterface>):Void _t.fatal(_a) #else null #end;
		__self__.fatalf = #if !macro function(_format:GoString, _a:Slice<AnyInterface>):Void _t.fatalf(_format, _a) #else null #end;
		__self__.helper = #if !macro function():Void _t.helper() #else null #end;
		__self__.log = #if !macro function(_a:Slice<AnyInterface>):Void _t.log(_a) #else null #end;
		__self__.logf = #if !macro function(_format:GoString, _a:Slice<AnyInterface>):Void _t.logf(_format, _a) #else null #end;
		__self__.name = #if !macro function():GoString return _t.name() #else null #end;
		__self__.parallel = #if !macro function():Void _t.parallel() #else null #end;
		__self__.run = #if !macro function(_name:GoString, _f:Ref<stdgo.testing.Testing.T>->Void):Bool return _t.run(_name, _f) #else null #end;
		__self__.setenv = #if !macro function(_name:GoString, _value:GoString):Void _t.setenv(_name, _value) #else null #end;
		__self__.skip = #if !macro function(_a:Slice<AnyInterface>):Void _t.skip(_a) #else null #end;
		__self__.skipNow = #if !macro function():Void _t.skipNow() #else null #end;
		__self__.skipf = #if !macro function(_format:GoString, _a:Slice<AnyInterface>):Void _t.skipf(_format, _a) #else null #end;
		__self__.skipped = #if !macro function():Bool return _t.skipped() #else null #end;
		__self__.tempDir = #if !macro function():GoString return _t.tempDir() #else null #end;
		__self__._checkFuzzFn = #if !macro function(__0:GoString):Void _t._checkFuzzFn(__0) #else null #end;
		__self__._decorate = #if !macro function(_s:GoString, _bitSize:GoInt):GoString return _t._decorate(_s, _bitSize) #else null #end;
		__self__._flushToParent = #if !macro function(_testName:GoString, _format:GoString,
				_args:Slice<AnyInterface>):Void _t._flushToParent(_testName, _format, _args) #else null #end;
		__self__._frameSkip = #if !macro function(_i:GoInt):stdgo.runtime.Runtime.Frame return _t._frameSkip(_i) #else null #end;
		__self__._log = #if !macro function(__0:GoString):Void _t._log(__0) #else null #end;
		__self__._logDepth = #if !macro function(_s:GoString, _bitSize:GoInt):Void _t._logDepth(_s, _bitSize) #else null #end;
		__self__._private = #if !macro function():Void _t._private() #else null #end;
		__self__._report = #if !macro function():Void _t._report() #else null #end;
		__self__._runCleanup = #if !macro function(_ph:stdgo.testing.Testing.T_panicHandling):AnyInterface return _t._runCleanup(_ph) #else null #end;
		__self__._setRan = #if !macro function():Void _t._setRan() #else null #end;
		__self__;
	});
	var _magic:GoInt = (123 : GoInt);
	if (stdgo.os.Os.getenv((Go.str("GO_CHILD_FLAG") : GoString)) != (Go.str() : GoString)) {
		var _fs = newFlagSet((Go.str("test") : GoString), (1 : ErrorHandling));
		if (stdgo.os.Os.getenv((Go.str("GO_CHILD_FLAG_HANDLE") : GoString)) != (Go.str() : GoString)) {
			var _b:Bool = false;
			_fs.boolVar(Go.pointer(_b), stdgo.os.Os.getenv((Go.str("GO_CHILD_FLAG_HANDLE") : GoString)), false, (Go.str() : GoString));
		};
		_fs.parse((new Slice<GoString>(0, 0, stdgo.os.Os.getenv((Go.str("GO_CHILD_FLAG") : GoString))) : Slice<GoString>));
		Sys.exit(_magic);
	};
	var _tests = (new Slice<T__struct_0>(0, 0, ({_flag: ("" : GoString), _flagHandle: ("" : GoString), _expectExit: (0 : GoInt)} : T__struct_0),
		({_flag: ("" : GoString), _flagHandle: ("" : GoString), _expectExit: (0 : GoInt)} : T__struct_0),
		({_flag: ("" : GoString), _flagHandle: ("" : GoString), _expectExit: (0 : GoInt)} : T__struct_0),
		({_flag: ("" : GoString), _flagHandle: ("" : GoString), _expectExit: (0 : GoInt)} : T__struct_0),
		({_flag: ("" : GoString), _flagHandle: ("" : GoString), _expectExit: (0 : GoInt)} : T__struct_0)) : Slice<T__struct_0>);
	for (_0 => _test in _tests) {
		var _cmd = stdgo.os.exec.Exec.command(stdgo.os.Os.args[(0 : GoInt)], (Go.str("-test.run=TestExitCode") : GoString));
		_cmd.env = (stdgo.os.Os.environ()
			.__append__((Go.str("GO_CHILD_FLAG=") : GoString) + _test._flag, (Go.str("GO_CHILD_FLAG_HANDLE=") : GoString) + _test._flagHandle));
		_cmd.run();
		var _got:GoInt = _cmd.processState.exitCode();
		if (false && (_test._expectExit != (0 : GoInt))) {
			_test._expectExit = (1 : GoInt);
		};
		if (_got != _test._expectExit) {
			_t.errorf((Go.str("unexpected exit code for test case %+v \n: got %d, expect %d") : GoString), Go.toInterface(_test), Go.toInterface(_got),
				Go.toInterface(_test._expectExit));
		};
	};
}

function _mustPanic(_t:stdgo.testing.Testing.T, _testName:GoString, _expected:GoString, _f:() -> Void):Void {
	var __recover_exception__:AnyInterface = null;
	var __deferstack__:Array<Void->Void> = [];
	try {
		_t.helper();
		__deferstack__.unshift(() -> {
			var a = function():Void {
				var __recover_exception__:AnyInterface = null;
				if (({
					final r = __recover_exception__;
					__recover_exception__ = null;
					r;
				}) == null) {
					var _msg:AnyInterface = ({
						final r = __recover_exception__;
						__recover_exception__ = null;
						r;
					}) == null ? null : ({
						final r = __recover_exception__;
						__recover_exception__ = null;
						r;
					}).__underlying__();
					_t.errorf((Go.str("%s\n: expected panic(%q), but did not panic") : GoString), Go.toInterface(_testName), Go.toInterface(_expected));
				} else if (Go.assertable(({
					final r = __recover_exception__;
					__recover_exception__ = null;
					r;
				} : GoString))) {
					var _msg:GoString = ({
						final r = __recover_exception__;
						__recover_exception__ = null;
						r;
					}) == null ? null : ({
						final r = __recover_exception__;
						__recover_exception__ = null;
						r;
					}).__underlying__() == null ? null : ({
						final r = __recover_exception__;
						__recover_exception__ = null;
						r;
					}) == null ? null : ({
						final r = __recover_exception__;
						__recover_exception__ = null;
						r;
					}).__underlying__().value;
					if (_msg != _expected) {
						_t.errorf((Go.str("%s\n: expected panic(%q), but got panic(%q)") : GoString), Go.toInterface(_testName), Go.toInterface(_expected),
							Go.toInterface(_msg));
					};
				} else {
					var _msg:AnyInterface = ({
						final r = __recover_exception__;
						__recover_exception__ = null;
						r;
					}) == null ? null : ({
						final r = __recover_exception__;
						__recover_exception__ = null;
						r;
					}).__underlying__();
					_t.errorf((Go.str("%s\n: expected panic(%q), but got panic(%T%v)") : GoString), Go.toInterface(_testName), Go.toInterface(_expected),
						Go.toInterface(_msg), Go.toInterface(_msg));
				};
			};
			a();
		});
		_f();
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (__recover_exception__ != null)
				throw __recover_exception__;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		__recover_exception__ = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (__recover_exception__ != null)
			throw __recover_exception__;
		return;
	};
}

function testInvalidFlags(_t:stdgo.testing.Testing.T):Void {
	var _tests = (new Slice<T__struct_1>(0, 0, ({_flag: ("" : GoString), _errorMsg: ("" : GoString)} : T__struct_1),
		({_flag: ("" : GoString), _errorMsg: ("" : GoString)} : T__struct_1)) : Slice<T__struct_1>);
	for (_0 => _test in _tests) {
		var _testName:GoString = stdgo.fmt.Fmt.sprintf((Go.str("FlagSet.Var(&v, %q, \"\")") : GoString), Go.toInterface(_test._flag));
		var _fs = newFlagSet((Go.str() : GoString), (0 : ErrorHandling));
		var _buf = stdgo.bytes.Bytes.newBuffer((null : Slice<GoUInt8>));
		_fs.setOutput({
			final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_buf);
			__self__.bytes = #if !macro function():Slice<GoUInt8> return _buf.bytes() #else null #end;
			__self__.cap = #if !macro function():GoInt return _buf.cap() #else null #end;
			__self__.grow = #if !macro function(_i:GoInt):Void _buf.grow(_i) #else null #end;
			__self__.len = #if !macro function():GoInt return _buf.len() #else null #end;
			__self__.next = #if !macro function(_i:GoInt):Slice<GoUInt8> return _buf.next(_i) #else null #end;
			__self__.read = #if !macro function(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:stdgo.Error;}
				return _buf.read(_p) #else null #end;
			__self__.readByte = #if !macro function():{var _0:GoUInt8; var _1:stdgo.Error;}
				return _buf.readByte() #else null #end;
			__self__.readBytes = #if !macro function(_c:GoUInt8):{var _0:Slice<GoUInt8>; var _1:stdgo.Error;}
				return _buf.readBytes(_c) #else null #end;
			__self__.readFrom = #if !macro function(_r:stdgo.io.Io.Reader):{var _0:GoInt64; var _1:stdgo.Error;}
				return _buf.readFrom(_r) #else null #end;
			__self__.readRune = #if !macro function():{var _0:GoInt32; var _1:GoInt; var _2:stdgo.Error;}
				return _buf.readRune() #else null #end;
			__self__.readString = #if !macro function(_c:GoUInt8):{var _0:GoString; var _1:stdgo.Error;}
				return _buf.readString(_c) #else null #end;
			__self__.reset = #if !macro function():Void _buf.reset() #else null #end;
			__self__.string = #if !macro function():GoString return _buf.string() #else null #end;
			__self__.truncate = #if !macro function(_i:GoInt):Void _buf.truncate(_i) #else null #end;
			__self__.unreadByte = #if !macro function():stdgo.Error return _buf.unreadByte() #else null #end;
			__self__.unreadRune = #if !macro function():stdgo.Error return _buf.unreadRune() #else null #end;
			__self__.write = #if !macro function(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:stdgo.Error;}
				return _buf.write(_p) #else null #end;
			__self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _buf.writeByte(_c) #else null #end;
			__self__.writeRune = #if !macro function(__0:GoInt32):{var _0:GoInt; var _1:stdgo.Error;}
				return _buf.writeRune(__0) #else null #end;
			__self__.writeString = #if !macro function(__0:GoString):{var _0:GoInt; var _1:stdgo.Error;}
				return _buf.writeString(__0) #else null #end;
			__self__.writeTo = #if !macro function(__0:stdgo.io.Io.Writer):{var _0:GoInt64; var _1:stdgo.Error;}
				return _buf.writeTo(__0) #else null #end;
			__self__._empty = #if !macro function():Bool return _buf._empty() #else null #end;
			__self__._grow = #if !macro function(_i:GoInt):GoInt return _buf._grow(_i) #else null #end;
			__self__._readSlice = #if !macro function(_c:GoUInt8):{var _0:Slice<GoUInt8>; var _1:stdgo.Error;}
				return _buf._readSlice(_c) #else null #end;
			__self__._tryGrowByReslice = #if !macro function(_i:GoInt):{var _0:GoInt; var _1:Bool;}
				return _buf._tryGrowByReslice(_i) #else null #end;
			__self__;
		});
		_mustPanic(_t, _testName, _test._errorMsg, function():Void {
			var _v:T_flagVar = new stdgo.flag_test.Flag_test.T_flagVar(0, 0);
			_fs.var_({
				final __self__ = new stdgo.flag_test.Flag_test.T_flagVar_wrapper(_v);
				__self__.set = #if !macro function(__0:GoString):stdgo.Error return _v.set(__0) #else null #end;
				__self__.string = #if !macro function():GoString return _v.string() #else null #end;
				__self__;
			}, _test._flag, (Go.str() : GoString));
		});
		{
			var _msg:GoString = _test._errorMsg + (Go.str("\n") : GoString);
			if (_msg != (_buf.string() : GoString)) {
				_t.errorf((Go.str("%s\n: unexpected output: expected %q, bug got %q") : GoString), Go.toInterface(_testName), Go.toInterface(_msg),
					Go.toInterface(_buf));
			};
		};
	};
}

function testRedefinedFlags(_t:stdgo.testing.Testing.T):Void {
	var _tests = (new Slice<T__struct_2>(0, 0, ({_flagSetName: ("" : GoString), _errorMsg: ("" : GoString)} : T__struct_2),
		({_flagSetName: ("" : GoString), _errorMsg: ("" : GoString)} : T__struct_2)) : Slice<T__struct_2>);
	for (_0 => _test in _tests) {
		var _testName:GoString = stdgo.fmt.Fmt.sprintf((Go.str("flag redefined in FlagSet(%q)") : GoString), Go.toInterface(_test._flagSetName));
		var _fs = newFlagSet(_test._flagSetName, (0 : ErrorHandling));
		var _buf = stdgo.bytes.Bytes.newBuffer((null : Slice<GoUInt8>));
		_fs.setOutput({
			final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_buf);
			__self__.bytes = #if !macro function():Slice<GoUInt8> return _buf.bytes() #else null #end;
			__self__.cap = #if !macro function():GoInt return _buf.cap() #else null #end;
			__self__.grow = #if !macro function(_i:GoInt):Void _buf.grow(_i) #else null #end;
			__self__.len = #if !macro function():GoInt return _buf.len() #else null #end;
			__self__.next = #if !macro function(_i:GoInt):Slice<GoUInt8> return _buf.next(_i) #else null #end;
			__self__.read = #if !macro function(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:stdgo.Error;}
				return _buf.read(_p) #else null #end;
			__self__.readByte = #if !macro function():{var _0:GoUInt8; var _1:stdgo.Error;}
				return _buf.readByte() #else null #end;
			__self__.readBytes = #if !macro function(_c:GoUInt8):{var _0:Slice<GoUInt8>; var _1:stdgo.Error;}
				return _buf.readBytes(_c) #else null #end;
			__self__.readFrom = #if !macro function(_r:stdgo.io.Io.Reader):{var _0:GoInt64; var _1:stdgo.Error;}
				return _buf.readFrom(_r) #else null #end;
			__self__.readRune = #if !macro function():{var _0:GoInt32; var _1:GoInt; var _2:stdgo.Error;}
				return _buf.readRune() #else null #end;
			__self__.readString = #if !macro function(_c:GoUInt8):{var _0:GoString; var _1:stdgo.Error;}
				return _buf.readString(_c) #else null #end;
			__self__.reset = #if !macro function():Void _buf.reset() #else null #end;
			__self__.string = #if !macro function():GoString return _buf.string() #else null #end;
			__self__.truncate = #if !macro function(_i:GoInt):Void _buf.truncate(_i) #else null #end;
			__self__.unreadByte = #if !macro function():stdgo.Error return _buf.unreadByte() #else null #end;
			__self__.unreadRune = #if !macro function():stdgo.Error return _buf.unreadRune() #else null #end;
			__self__.write = #if !macro function(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:stdgo.Error;}
				return _buf.write(_p) #else null #end;
			__self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _buf.writeByte(_c) #else null #end;
			__self__.writeRune = #if !macro function(__0:GoInt32):{var _0:GoInt; var _1:stdgo.Error;}
				return _buf.writeRune(__0) #else null #end;
			__self__.writeString = #if !macro function(__0:GoString):{var _0:GoInt; var _1:stdgo.Error;}
				return _buf.writeString(__0) #else null #end;
			__self__.writeTo = #if !macro function(__0:stdgo.io.Io.Writer):{var _0:GoInt64; var _1:stdgo.Error;}
				return _buf.writeTo(__0) #else null #end;
			__self__._empty = #if !macro function():Bool return _buf._empty() #else null #end;
			__self__._grow = #if !macro function(_i:GoInt):GoInt return _buf._grow(_i) #else null #end;
			__self__._readSlice = #if !macro function(_c:GoUInt8):{var _0:Slice<GoUInt8>; var _1:stdgo.Error;}
				return _buf._readSlice(_c) #else null #end;
			__self__._tryGrowByReslice = #if !macro function(_i:GoInt):{var _0:GoInt; var _1:Bool;}
				return _buf._tryGrowByReslice(_i) #else null #end;
			__self__;
		});
		var _v:T_flagVar = new stdgo.flag_test.Flag_test.T_flagVar(0, 0);
		_fs.var_({
			final __self__ = new stdgo.flag_test.Flag_test.T_flagVar_wrapper(_v);
			__self__.set = #if !macro function(__0:GoString):stdgo.Error return _v.set(__0) #else null #end;
			__self__.string = #if !macro function():GoString return _v.string() #else null #end;
			__self__;
		}, (Go.str("foo") : GoString), (Go.str() : GoString));
		_mustPanic(_t, _testName, _test._errorMsg, function():Void {
			_fs.var_({
				final __self__ = new stdgo.flag_test.Flag_test.T_flagVar_wrapper(_v);
				__self__.set = #if !macro function(__0:GoString):stdgo.Error return _v.set(__0) #else null #end;
				__self__.string = #if !macro function():GoString return _v.string() #else null #end;
				__self__;
			}, (Go.str("foo") : GoString), (Go.str() : GoString));
		});
		{
			var _msg:GoString = _test._errorMsg + (Go.str("\n") : GoString);
			if (_msg != (_buf.string() : GoString)) {
				_t.errorf((Go.str("%s\n: unexpected output: expected %q, bug got %q") : GoString), Go.toInterface(_testName), Go.toInterface(_msg),
					Go.toInterface(_buf));
			};
		};
	};
}

@:keep var _ = {
	try {
		var _defaultGopher:GoString = (Go.str("pocket") : GoString), _usage:GoString = (Go.str("the variety of gopher") : GoString);
		stdgo.flag.Flag.stringVar(Go.pointer(_gopherType), (Go.str("gopher_type") : GoString), (Go.str("pocket") : GoString),
			(Go.str("the variety of gopher") : GoString));
		stdgo.flag.Flag.stringVar(Go.pointer(_gopherType), (Go.str("g") : GoString), (Go.str("pocket") : GoString),
			(Go.str("the variety of gopher (shorthand)") : GoString));
		stdgo.flag.Flag.var_({
			final __self__ = new stdgo.flag_test.Flag_test.T_interval_wrapper(_intervalFlag);
			__self__.set = #if !macro function(__0:GoString):stdgo.Error throw "__return__" #else null #end;
			__self__.string = #if !macro function():GoString throw "__return__" #else null #end;
			__self__;
		}, (Go.str("deltaT") : GoString),
			(Go.str("comma-separated list of intervals to use between events") : GoString));
	} catch (__exception__)
		if (__exception__.message != "__return__")
			throw __exception__;
	true;
};

@:keep class URLValue_static_extension {
	@:keep
	static public function set(_v:URLValue, _s:GoString):Error {
		{
			var __tmp__ = stdgo.net.url.Url.parse(_s),
				_u:Ref<stdgo.net.url.Url.URL> = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				return _err;
			} else {
				{
					var __tmp__ = (_u == null ? null : _u.__copy__());
					_v.url.scheme = __tmp__.scheme;
					_v.url.opaque = __tmp__.opaque;
					_v.url.user = __tmp__.user;
					_v.url.host = __tmp__.host;
					_v.url.path = __tmp__.path;
					_v.url.rawPath = __tmp__.rawPath;
					_v.url.omitHost = __tmp__.omitHost;
					_v.url.forceQuery = __tmp__.forceQuery;
					_v.url.rawQuery = __tmp__.rawQuery;
					_v.url.fragment = __tmp__.fragment;
					_v.url.rawFragment = __tmp__.rawFragment;
				};
			};
		};
		return (null : stdgo.Error);
	}

	@:keep
	static public function string(_v:URLValue):GoString {
		if (_v.url != null) {
			return (_v.url.string() : GoString);
		};
		return (Go.str() : GoString);
	}
}

class URLValue_wrapper {
	@:keep
	public var set:GoString->Error = null;
	@:keep
	public var string:() -> GoString = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:URLValue;
}

@:keep private class T_boolFlagVar_static_extension {
	@:keep
	static public function isBoolFlag(_b:T_boolFlagVar):Bool {
		return _b._count < (4:GoInt);
	}

	@:keep
	static public function set(_b:T_boolFlagVar, _value:GoString):Error {
		if (_value == (Go.str("true") : GoString)) {
			_b._count++;
		};
		return (null : stdgo.Error);
	}

	@:keep
	static public function string(_b:T_boolFlagVar):GoString {
		return stdgo.fmt.Fmt.sprintf((Go.str("%d") : GoString), Go.toInterface(_b._count));
	}
}

class T_boolFlagVar_wrapper {
	@:keep
	public var isBoolFlag:() -> Bool = null;
	@:keep
	public var set:GoString->Error = null;
	@:keep
	public var string:() -> GoString = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:T_boolFlagVar;
}

@:keep private class T_zeroPanicker_static_extension {
	@:keep
	static public function string(_f:T_zeroPanicker):GoString {
		if (!_f._dontPanic) {
			throw Go.toInterface((Go.str("panic!") : GoString));
		};
		return _f._v;
	}

	@:keep
	static public function set(_f:T_zeroPanicker, _s:GoString):Error {
		_f._v = _s;
		return (null : stdgo.Error);
	}
}

class T_zeroPanicker_wrapper {
	@:keep
	public var string:() -> GoString = null;
	@:keep
	public var set:GoString->Error = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:T_zeroPanicker;
}

@:keep private class T_interval_static_extension {
	/**
		// Set is the method to set the flag value, part of the flag.Value interface.
		// Set's argument is a string to be parsed to set the flag.
		// It's a comma-separated list, so we split it.
	**/
	@:keep
	static public function set(_i:T_interval, _value:GoString):Error {
		if ((_i.length) > (0 : GoInt)) {
			return stdgo.errors.Errors.new_((Go.str("interval flag already set") : GoString));
		};
		for (_0 => _dt in stdgo.strings.Strings.split(_value, (Go.str(",") : GoString))) {
			var __tmp__ = stdgo.time.Time.parseDuration(_dt),
				_duration:stdgo.time.Time.Duration = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				return _err;
			};
			_i = (_i.__append__(_duration));
		};
		return (null : stdgo.Error);
	}

	/**
		// String is the method to format the flag's value, part of the flag.Value interface.
		// The String method's output will be used in diagnostics.
	**/
	@:keep
	static public function string(_i:T_interval):GoString {
		return stdgo.fmt.Fmt.sprint(_i);
	}
}

class T_interval_wrapper {
	/**
		// Set is the method to set the flag value, part of the flag.Value interface.
		// Set's argument is a string to be parsed to set the flag.
		// It's a comma-separated list, so we split it.
	**/
	@:keep
	public var set:GoString->Error = null;

	/**
		// String is the method to format the flag's value, part of the flag.Value interface.
		// The String method's output will be used in diagnostics.
	**/
	@:keep
	public var string:() -> GoString = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:T_interval;
}

@:keep private class T_flagVar_static_extension {
	@:keep
	static public function set(_f:T_flagVar, _value:GoString):Error {
		_f = (_f.__append__(_value));
		return (null : stdgo.Error);
	}

	@:keep
	static public function string(_f:T_flagVar):GoString {
		return stdgo.fmt.Fmt.sprint((_f : Slice<GoString>));
	}
}

class T_flagVar_wrapper {
	@:keep
	public var set:GoString->Error = null;
	@:keep
	public var string:() -> GoString = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:T_flagVar;
}
