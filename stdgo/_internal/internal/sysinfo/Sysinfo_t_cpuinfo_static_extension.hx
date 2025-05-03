package stdgo._internal.internal.sysinfo;
@:keep @:allow(stdgo._internal.internal.sysinfo.Sysinfo.T_cpuInfo_asInterface) class T_cpuInfo_static_extension {
    @:keep
    @:tdfield
    static public function name( _cpu:stdgo.Ref<stdgo._internal.internal.sysinfo.Sysinfo_t_cpuinfo.T_cpuInfo>):stdgo.GoString {
        @:recv var _cpu:stdgo.Ref<stdgo._internal.internal.sysinfo.Sysinfo_t_cpuinfo.T_cpuInfo> = _cpu;
        //"file:///home/runner/.go/go1.21.3/src/internal/sysinfo/sysinfo.go#L22"
        (@:checkr _cpu ?? throw "null pointer dereference")._once.do_(function():Void {
            //"file:///home/runner/.go/go1.21.3/src/internal/sysinfo/sysinfo.go#L24"
            {
                var _name = (stdgo._internal.internal.cpu.Cpu_name.name()?.__copy__() : stdgo.GoString);
                if (_name != ((stdgo.Go.str() : stdgo.GoString))) {
                    (@:checkr _cpu ?? throw "null pointer dereference")._name = _name?.__copy__();
                    //"file:///home/runner/.go/go1.21.3/src/internal/sysinfo/sysinfo.go#L26"
                    return;
                };
            };
        });
        //"file:///home/runner/.go/go1.21.3/src/internal/sysinfo/sysinfo.go#L30"
        return (@:checkr _cpu ?? throw "null pointer dereference")._name?.__copy__();
    }
}
