package stdgo._internal.os.user;
function _currentGID():stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/os/user/lookup_stubs.go#L79"
        {
            var _id = (stdgo._internal.os.Os_getgid.getgid() : stdgo.GoInt);
            if ((_id >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/os/user/lookup_stubs.go#L80"
                return stdgo._internal.strconv.Strconv_itoa.itoa(_id)?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/os/user/lookup_stubs.go#L82"
        return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }
