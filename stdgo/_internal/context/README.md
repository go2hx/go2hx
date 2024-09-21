# Module stdgo._internal.context has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/context/Context_T_myCtx.hx:12: characters 120-146

 12 | [2m    public function done():stdgo.Chan<stdgo._internal.context.Context_T_deadlineExceededError.T_deadlineExceededError> [0m[1mreturn this.context.done()[0m[2m;[0m
    |                                                                                                                        [31m^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | error: { } should be stdgo._internal.context.T_deadlineExceededError
    | have: stdgo.Chan<{ }>
    | want: stdgo.Chan<stdgo._internal.context.T_deadlineExceededError>

[30;41m ERROR [0m stdgo/_internal/context/Context_T_stopCtx.hx:14: characters 120-146

 14 | [2m    public function done():stdgo.Chan<stdgo._internal.context.Context_T_deadlineExceededError.T_deadlineExceededError> [0m[1mreturn this.context.done()[0m[2m;[0m
    |                                                                                                                        [31m^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | error: { } should be stdgo._internal.context.T_deadlineExceededError
    | have: stdgo.Chan<{ }>
    | want: stdgo.Chan<stdgo._internal.context.T_deadlineExceededError>

[30;41m ERROR [0m stdgo/_internal/context/Context_T_valueCtx.hx:16: characters 120-146

 16 | [2m    public function done():stdgo.Chan<stdgo._internal.context.Context_T_deadlineExceededError.T_deadlineExceededError> [0m[1mreturn this.context.done()[0m[2m;[0m
    |                                                                                                                        [31m^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | error: { } should be stdgo._internal.context.T_deadlineExceededError
    | have: stdgo.Chan<{ }>
    | want: stdgo.Chan<stdgo._internal.context.T_deadlineExceededError>


```

