package stdgo.internal.cpu;
private function set_options(v:Array<T_option>):Array<T_option> {
        stdgo._internal.internal.cpu.Cpu_options.options = ([for (i in v) i] : stdgo.Slice<stdgo._internal.internal.cpu.Cpu_T_option.T_option>);
        return v;
    }
