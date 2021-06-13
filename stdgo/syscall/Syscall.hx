package stdgo.syscall;

import stdgo.StdGoTypes.GoInt64;
import stdgo.StdGoTypes.GoByte;
import stdgo.StdGoTypes.GoUInt32;
import stdgo.StdGoTypes.MultiReturn;
import stdgo.StdGoTypes.Error;
import stdgo.StdGoTypes.GoInt;

var enoent:Error = null;
final o_rdonly:GoInt = 0;


function getenv(s:String):MultiReturn<{value:GoString,found:Bool}> {
    var result = Sys.getEnv(s);
    if (result == null)
        return {value: "",found: false};
    return {value: result, found: true};
}

function open(name:String,mode:GoInt,perm:GoUInt32):MultiReturn<{fd:GoInt,err:Error}> {
    return {fd: 0, err: null};
}

function read(fd:GoInt,p:Slice<GoByte>):MultiReturn<{n:GoInt,err:Error}> {
    return {n: 0, err: null};
}

function close(fd:GoInt):Error {
    return null;
}

function seek(fd:GoInt,offset:GoInt64,whence:GoInt):MultiReturn<{off:GoInt64,err:Error}> {
    return {off: 0, err: null};
}