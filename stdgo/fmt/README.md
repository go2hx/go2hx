# Module: stdgo.fmt


[(view library index)](../stdgo.md)


# Overview


 


# Index


- [function errorf\(fmt:stdgo.GoString, args:haxe.Rest\<stdgo.AnyInterface\>\):stdgo.Error](<#function-errorf>)

- [function fprint\(w:stdgo.io.Writer, args:haxe.Rest\<Dynamic\>\):Void](<#function-fprint>)

- [function fprintf\(w:stdgo.io.Writer, fmt:stdgo.GoString, args:haxe.Rest\<Dynamic\>\):Void](<#function-fprintf>)

- [function fprintln\(w:stdgo.io.Writer, args:haxe.Rest\<Dynamic\>\):Void](<#function-fprintln>)

- [function print\(args:haxe.Rest\<Dynamic\>\):\{\_1:stdgo.Error, \_0:Int\}](<#function-print>)

- [function printf\(fmt:stdgo.GoString, args:haxe.Rest\<stdgo.AnyInterface\>\):Void](<#function-printf>)

- [function println\(args:haxe.Rest\<Dynamic\>\):\{\_1:stdgo.Error, \_0:Int\}](<#function-println>)

- [function sprint\(args:haxe.Rest\<Dynamic\>\):stdgo.GoString](<#function-sprint>)

- [function sprintf\(fmt:stdgo.GoString, args:haxe.Rest\<stdgo.AnyInterface\>\):stdgo.GoString](<#function-sprintf>)

- [function sprintln\(args:haxe.Rest\<Dynamic\>\):stdgo.GoString](<#function-sprintln>)

- [typedef Formatter](<#typedef-formatter>)

- [typedef GoStringer](<#typedef-gostringer>)

- [typedef ScanState](<#typedef-scanstate>)

- [typedef Scanner](<#typedef-scanner>)

- [typedef State](<#typedef-state>)

- [typedef Stringer](<#typedef-stringer>)

# Functions


```haxe
import stdgo.fmt.Fmt
```


## function \`errorf\`


```haxe
function errorf(fmt:stdgo.GoString, args:haxe.Rest<stdgo.AnyInterface>):stdgo.Error
```


 


[\(view code\)](<./Fmt.hx#L47>)


## function \`fprint\`


```haxe
function fprint(w:stdgo.io.Writer, args:haxe.Rest<Dynamic>):Void
```


 


[\(view code\)](<./Fmt.hx#L67>)


## function \`fprintf\`


```haxe
function fprintf(w:stdgo.io.Writer, fmt:stdgo.GoString, args:haxe.Rest<Dynamic>):Void
```


 


[\(view code\)](<./Fmt.hx#L65>)


## function \`fprintln\`


```haxe
function fprintln(w:stdgo.io.Writer, args:haxe.Rest<Dynamic>):Void
```


 


[\(view code\)](<./Fmt.hx#L66>)


## function \`print\`


```haxe
function print(args:haxe.Rest<Dynamic>):{_1:stdgo.Error, _0:Int}
```


 


[\(view code\)](<./Fmt.hx#L56>)


## function \`printf\`


```haxe
function printf(fmt:stdgo.GoString, args:haxe.Rest<stdgo.AnyInterface>):Void
```


 


[\(view code\)](<./Fmt.hx#L61>)


## function \`println\`


```haxe
function println(args:haxe.Rest<Dynamic>):{_1:stdgo.Error, _0:Int}
```


 


[\(view code\)](<./Fmt.hx#L51>)


## function \`sprint\`


```haxe
function sprint(args:haxe.Rest<Dynamic>):stdgo.GoString
```


 


[\(view code\)](<./Fmt.hx#L69>)


## function \`sprintf\`


```haxe
function sprintf(fmt:stdgo.GoString, args:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString
```


 


[\(view code\)](<./Fmt.hx#L85>)


## function \`sprintln\`


```haxe
function sprintln(args:haxe.Rest<Dynamic>):stdgo.GoString
```


 


[\(view code\)](<./Fmt.hx#L73>)


# Typedefs


```haxe
import stdgo.fmt.*
```


## typedef Formatter


```haxe
typedef Formatter = var a:{<__underlying__> | (_f:stdgo.fmt.State, _verb:stdgo.GoRune):Void | ():stdgo.AnyInterface}
```


 


## typedef GoStringer


```haxe
typedef GoStringer = var a:{<__underlying__> | ():stdgo.GoString | ():stdgo.AnyInterface}
```


 


## typedef ScanState


```haxe
typedef ScanState = var a:{<__underlying__> | ():{_1:Bool, _0:stdgo.GoInt} | ():stdgo.Error | (_skipSpace:Bool, _f:()):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.GoByte>} | ():Void | ():{_2:stdgo.Error, _1:stdgo.GoInt, _0:stdgo.GoRune} | (_buf:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt} | ():stdgo.AnyInterface}
```


 


## typedef Scanner


```haxe
typedef Scanner = var a:{<__underlying__> | (_state:stdgo.fmt.ScanState, _verb:stdgo.GoRune):stdgo.Error | ():stdgo.AnyInterface}
```


 


## typedef State


```haxe
typedef State = var a:{<__underlying__> | (_b:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt} | ():{_1:Bool, _0:stdgo.GoInt} | ():{_1:Bool, _0:stdgo.GoInt} | (_c:stdgo.GoInt):Bool | ():stdgo.AnyInterface}
```


 


## typedef Stringer


```haxe
typedef Stringer = var a:{<__underlying__> | ():stdgo.GoString | ():stdgo.AnyInterface}
```


 


