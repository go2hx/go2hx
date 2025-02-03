package stdgo.flag;
private function set_commandLine(v:FlagSet):FlagSet {
        stdgo._internal.flag.Flag_commandLine.commandLine = (v : stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>);
        return v;
    }
