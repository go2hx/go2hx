package stdgo.internal.testenv;
private function set_sigquit(v:stdgo._internal.os.Os_Signal.Signal):stdgo._internal.os.Os_Signal.Signal {
        stdgo._internal.internal.testenv.Testenv_sigquit.sigquit = v;
        return v;
    }
