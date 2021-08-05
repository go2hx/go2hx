package stdgo.syscall;

import stdgo.StdGoTypes.GoInt64;
import stdgo.StdGoTypes.GoByte;
import stdgo.StdGoTypes.GoUInt32;
import stdgo.StdGoTypes.Error;
import stdgo.StdGoTypes.GoInt;

var enoent:Error = null;
final o_rdonly:GoInt = 0;

function getuid():GoInt
	return 0;

function geteuid():GoInt
	return 0;

function getgid():GoInt
	return 0;

function getegid():GoInt
	return 0;

function getpid():GoInt
	return 0;

function getppid():GoInt
	return 0;

function getenv(s:String):{value:GoString, found:Bool} {
	var result = Sys.getEnv(s);
	if (result == null)
		return {value: "", found: false};
	return {value: result, found: true};
}

function open(name:String, mode:GoInt, perm:GoUInt32):{fd:GoInt, err:Error} {
	return {fd: 0, err: null};
}

function read(fd:GoInt, p:Slice<GoByte>):{n:GoInt, err:Error} {
	return {n: 0, err: null};
}

function close(fd:GoInt):Error {
	return null;
}

function seek(fd:GoInt, offset:GoInt64, whence:GoInt):{off:GoInt64, err:Error} {
	return {off: 0, err: null};
}
