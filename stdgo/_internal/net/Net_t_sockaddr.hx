package stdgo._internal.net;
@:interface typedef T_sockaddr = stdgo.StructType & {
    function network():stdgo.GoString;
    function string():stdgo.GoString;
};
