package stdgo.os;
private function get_args():Array<String> return [for (i in stdgo._internal.os.Os_args.args) i];
