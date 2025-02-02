package stdgo._internal.os.user;
function _currentUID():stdgo.GoString {
        {
            var _id = (stdgo._internal.os.Os_getuid.getuid() : stdgo.GoInt);
            if ((_id >= (0 : stdgo.GoInt) : Bool)) {
                return stdgo._internal.strconv.Strconv_itoa.itoa(_id)?.__copy__();
            };
        };
        return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }
