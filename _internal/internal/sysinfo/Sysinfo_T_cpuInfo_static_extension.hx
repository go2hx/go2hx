package _internal.internal.sysinfo;
@:keep @:allow(_internal.internal.sysinfo.Sysinfo.T_cpuInfo_asInterface) class T_cpuInfo_static_extension {
    @:keep
    static public function name( _cpu:stdgo.Ref<_internal.internal.sysinfo.Sysinfo_T_cpuInfo.T_cpuInfo>):stdgo.GoString {
        @:recv var _cpu:stdgo.Ref<_internal.internal.sysinfo.Sysinfo_T_cpuInfo.T_cpuInfo> = _cpu;
        _cpu._once.do_(function():Void {
            {
                var _name = (stdgo._internal.internal.cpu.Cpu_name.name()?.__copy__() : stdgo.GoString);
                if (_name != (stdgo.Go.str())) {
                    _cpu._name = _name?.__copy__();
                    return;
                };
            };
        });
        return _cpu._name?.__copy__();
    }
}
