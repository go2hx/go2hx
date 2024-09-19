package _internal.flag_test;
import stdgo._internal.flag.Flag;
function exampleFunc():Void {
        var _fs = stdgo._internal.flag.Flag_newFlagSet.newFlagSet(("ExampleFunc" : stdgo.GoString), (0 : stdgo._internal.flag.Flag_ErrorHandling.ErrorHandling));
        _fs.setOutput(stdgo.Go.asInterface(stdgo._internal.os.Os_stdout.stdout));
        var _ip:stdgo._internal.net.Net_IP.IP = new stdgo._internal.net.Net_IP.IP(0, 0);
        _fs.func(("ip" : stdgo.GoString), ("`IP address` to parse" : stdgo.GoString), function(_s:stdgo.GoString):stdgo.Error {
            _ip = stdgo._internal.net.Net_parseIP.parseIP(_s?.__copy__());
            if (_ip == null) {
                return stdgo._internal.errors.Errors_new_.new_(("could not parse IP" : stdgo.GoString));
            };
            return (null : stdgo.Error);
        });
        _fs.parse((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("-ip" : stdgo.GoString), ("127.0.0.1" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
        stdgo._internal.fmt.Fmt_printf.printf(("{ip: %v, loopback: %t}\n\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_ip)), stdgo.Go.toInterface(_ip.isLoopback()));
        _fs.parse((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("-ip" : stdgo.GoString), ("256.0.0.1" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
        stdgo._internal.fmt.Fmt_printf.printf(("{ip: %v, loopback: %t}\n\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_ip)), stdgo.Go.toInterface(_ip.isLoopback()));
    }
