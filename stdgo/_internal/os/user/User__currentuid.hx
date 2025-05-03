package stdgo._internal.os.user;
function _currentUID():stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/os/user/lookup_stubs.go#L69"
        {
            var _id = (stdgo._internal.os.Os_getuid.getuid() : stdgo.GoInt);
            if ((_id >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/os/user/lookup_stubs.go#L70"
                return stdgo._internal.strconv.Strconv_itoa.itoa(_id)?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/os/user/lookup_stubs.go#L75"
        return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }
